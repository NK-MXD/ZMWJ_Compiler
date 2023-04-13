#include "GraphColor.h"
#include "ControlFlowAnalysis.h"
#include "LiveVariableAnalysis.h"
#include "ReachDefAnalysis.h"
#include <cmath>
#include <iostream>
#include <vector>

#define DEBUGCHECK 0
#if DEBUGCHECK
#define print(str) std::cout << str << "\n";
#else
#define print(str) //
#endif

using namespace std;

GraphColor::GraphColor(MachineUnit *unit) {
    this->unit = unit;
    regNum = 11;
    fRegNum = 32;
    defWeight = 2;
    useWeight = 4;
    copyWeight = 1;
}

void GraphColor::allocateRegisters() {
    for (auto &func : unit->getFuncs()) {
        this->func = func;
        bool success = false;
        while (!success) {
            bool coalesce = true;
            while (coalesce) {
                print("start makeWebs");
                makeWebs();
                print("start makeMatrix");
                makeMatrix();
                print("start coalesce");
                coalesce = coalesceRegs();
            }
            print("start makelist");
            makeList();
            print("start computeSpillCost");
            computeSpillCost();
            print("start prune");
            pruneGraph();
            print("start assignRegs");
            success = assignRegs();
            print("start modify");
            if (success)
                modifyCode();
            else
                genSpillCode();
            // print("start output");
            // func->output();
        }
    }
}

void GraphColor::makeDuChains() {
    ReachDefAnalysis rd;
    rd.pass(func);
    print("reach end");
    std::map<MachineOperand, std::set<MachineOperand *>> reachingDef;
    du_chains.clear();
    for (auto &block : func->getBlocks()) {
        for (auto &inst : block->getInsts()) {
            auto defs = inst->getDef();
            for (auto &def : defs)
                if (def->needColor())
                    du_chains[def].insert({});
        }
    }
    for (auto &block : func->getBlocks()) {
        reachingDef.clear();
        for (auto &t : block->getDefIn())
            reachingDef[*t].insert(t);
        for (auto &inst : block->getInsts()) {
            for (auto &use : inst->getUse()) {
                if (use->needColor()) {
                    if (reachingDef[*use].empty())
                        du_chains[use].insert(use);
                    for (auto &def : reachingDef[*use])
                        du_chains[def].insert(use);
                }
            }
            auto defs = inst->getDef();
            for (auto &def : defs) {
                auto &t = reachingDef[*def];     // defin
                auto &s = rd.getAllDefs()[*def]; // alldef
                std::set<MachineOperand *> res;
                set_difference(t.begin(), t.end(), s.begin(), s.end(),
                               inserter(res, res.end()));

                reachingDef[*def] = res;
                reachingDef[*def].insert(def);
            }
        }
    }
}

void GraphColor::makeWebs() {
    makeDuChains();
    webs.clear();
    operand2web.clear();
    // 挨个新建web
    for (auto &du_chain : du_chains) {
        Web *web =
            new Web({{du_chain.first},                              // defs
                     du_chain.second,                               // uses
                     false,                                         // 溢出
                     du_chain.first->isReg() ? __DBL_MAX__ / 2 : 0, // 溢出代价
                     0,
                     -1,
                     -1,
                     du_chain.first->isFloat()});
        webs.push_back(web);
    }
    bool again = true;
    while (again) {
        again = false;
        vector<Web *> temp(webs.begin(), webs.end());
        for (size_t i = 0; i < temp.size(); i++)
            for (size_t j = i + 1; j < temp.size(); j++) {
                Web *w1 = temp[i];
                Web *w2 = temp[j];
                if (**w1->defs.begin() == **w2->defs.begin()) {
                    std::set<MachineOperand *> temp;
                    set_intersection(w1->uses.begin(), w1->uses.end(),
                                     w2->uses.begin(), w2->uses.end(),
                                     inserter(temp, temp.end()));
                    if (!temp.empty()) {
                        again = true;
                        w1->defs.insert(w2->defs.begin(), w2->defs.end());
                        w1->uses.insert(w2->uses.begin(), w2->uses.end());
                        auto it = std::find(webs.begin(), webs.end(), w2);
                        if (it != webs.end())
                            webs.erase(it);
                    }
                }
            }
    }
    vector<Web *> symreg;
    int i = 0;
    for (; i < regNum; i++) {
        Web *web = new Web({set<MachineOperand *>(), set<MachineOperand *>(),
                            false, __DBL_MAX__ / 2, -1, -1, i, false});
        symreg.push_back(web);
    }
    for (; i < regNum + fRegNum; i++) {
        Web *web = new Web({set<MachineOperand *>(), set<MachineOperand *>(),
                            false, __DBL_MAX__ / 2, -1, -1, i, true});
        symreg.push_back(web);
    }
    for (auto &web : webs) {
        web->sreg = i;
        for (auto &def : web->defs)
            operand2web[def] = i;
        for (auto &use : web->uses)
            operand2web[use] = i;
        i++;
    }
    webs.insert(webs.begin(), symreg.begin(), symreg.end());
}

// 构建web冲突图
void GraphColor::makeMatrix() {
    LiveVariableAnalysis lva;
    lva.pass(func);
    print("webs.size() = " << webs.size());
    auto m_size = int(webs.size());
    matrix.resize(m_size);
    for (auto &v : matrix) {
        v.resize(m_size);
        for (auto b : v)
            b = false;
    }
    for (int i = 0; i < regNum + fRegNum; i++)
        for (int j = 0; j < i; j++) {
            matrix[i][j] = true;
            matrix[j][i] = true;
        }
    for (auto i = regNum + fRegNum; i < m_size; i++) {
        auto def = *(webs[i]->defs.begin());
        if (!def->isReg())
            continue;
        webs[i]->rreg = def->getReg();
        if (def->isFloat())
            webs[i]->rreg -= 5;
        auto rreg = webs[i]->rreg;
        int k = operand2web[def];
        for (int i = 0; i < regNum + fRegNum; i++) {
            if (i == rreg)
                continue;
            matrix[k][i] = true;
            matrix[i][k] = true;
        }
    }
    for (auto &block : func->getBlocks()) {
        auto liveOut = block->getLiveOut();
        auto ins = block->getInsts();
        for (auto i = ins.rbegin(); i != ins.rend(); i++) {
            auto defs = (*i)->getDef();
            for (auto &def : defs) {
                if (operand2web.find(def) != operand2web.end()) {
                    int k = operand2web[def];
                    for (auto &live : liveOut) {
                        if (operand2web.find(live) == operand2web.end())
                            continue;
                        int j = operand2web[live];
                        matrix[k][j] = true;
                        matrix[j][k] = true;
                    }
                }
                auto &uses = lva.getAllUses()[*def];
                for (auto &use : uses)
                    if (liveOut.find(use) != liveOut.end())
                        liveOut.erase(use);
            }
            for (auto &use : (*i)->getUse())
                liveOut.insert(use);
        }
    }
        for (auto it = webs.begin() + regNum + fRegNum; it != webs.end();
             it++) {
            auto web = *it;
            auto def = *(web->defs.begin());
            auto j = operand2web[def];
            if (web->fpu) {
                for (int i = regNum + 12; i <= regNum + 15; i++)
                    matrix[i][j] = matrix[j][i] = true;
            }
        }
    // 虚的之间应该不用标记冲突吧
}

void GraphColor::makeList() {
    list.resize(matrix.size(), vector<int>());
    for (auto i = 0; i < (int)matrix.size(); i++)
        for (auto j = 0; j < i; j++)
            if (matrix[i][j]) {
                list[i].push_back(j);
                list[j].push_back(i);
            }
    removeList = list;
}

// 合并寄存器
bool GraphColor::coalesceRegs() {
    bool flag = false; // 标记是否有合并发生，初始化为 false。
    vector<MachineInstruction *> tempList; // 用于保存需要删除的指令。
    for (auto &block : func->getBlocks()) { // 遍历函数的基本块（BasicBlock）。
        for (auto &ins :
             block->getInsts()) { // 遍历基本块中的指令（Instruction）。
            bool flag1 = false; // 标记是否可以进行合并，初始化为 false。
            if (ins->isMov()) // 如果是移动指令，则可以合并。
                flag1 = true;
            else if (ins->isVMov()) { // 如果是向量移动指令。
                auto def =
                    ins->getDef()[0]; // 获取定义的操作数（MachineOperand）。
                auto use = ins->getUse()[0]; // 获取使用的操作数。
                if (def->isFloat() &&
                    use->isFloat()) // 如果两个操作数都是浮点数，则可以合并。
                    flag1 = true;
            } else if (ins->isAdd() || ins->isVAdd()) { // 如果是加法指令。
                auto def = ins->getDef()[0]; // 获取定义的操作数。
                if (def->isReg() &&
                    def->getReg() == 13) // 如果定义的是寄存器 $sp，不进行合并。
                    continue;
                auto uses = ins->getUse(); // 获取使用的操作数。
                for (auto use : uses)
                    if (use->isImm() &&
                        use->getVal() ==
                            0) // 如果使用的是立即数 0，则可以合并。
                        flag1 = true;
            }
            if (!flag1) // 如果不能进行合并，继续下一个指令。
                continue;
            auto def = *(ins->getDef().begin()); // 获取定义的操作数。
            auto uses = ins->getUse();           // 获取使用的操作数。
            if (uses.empty() ||
                uses[0]
                    ->isImm()) // 如果使用的操作数为空或为立即数，则不能合并。
                continue;
            auto use = uses[0]; // 取第一个使用的操作数。
            if (operand2web.find(def) ==
                    operand2web.end() || // 如果定义或使用的操作数不在
                                         // operand2web 映射中，则不能合并。
                operand2web.find(use) == operand2web.end())
                continue;
            if (def->isReg() ||
                use->isReg()) // 如果定义或使用的操作数是寄存器，则不能合并。
                continue;
            int u = operand2web[def]; // 获取定义操作数所在的 Web 的下标。
            int v = operand2web[use]; // 获取使用操作数所在的 Web 的下标。
            if (webs[u]->defs.size() != 1)
                // 如果定义操作数所在的 Web 不是仅有一个定义，则不能合并。
                continue;
            if (!matrix[u][v]) { // 如果 u 和 v 不在同一个连通分量中，即 u 和 v
                                 // 不相邻，则可以合并。
                flag = true; // 标记发生了合并。
                for (auto i = 0; i < (int)matrix.size(); i++)
                    matrix[i][u] = matrix[i][v] = matrix[u][i] = matrix[v][i] =
                        matrix[u][i] || matrix[v][i];
                for (auto &u_ : webs[u]->uses) {
                    auto in = u_->getParent();
                    MachineOperand *new_ = new MachineOperand(*use);
                    operand2web[new_] = v;
                    webs[v]->uses.insert(new_);
                    in->replaceUse(u_, new_);
                }
                for (auto &d : webs[u]->defs) {
                    auto in = d->getParent();
                    MachineOperand *new_ = new MachineOperand(*use);
                    operand2web[new_] = v;
                    webs[v]->defs.insert(new_);
                    in->replaceDef(d, new_);
                }
                tempList.push_back(ins);
            }
        }
    }
    for (auto &ins : tempList)
        ins->getParent()->remove(ins);
    return flag;
}

void GraphColor::computeSpillCost() {
    ControlFlowAnalysis cfa;
    cfa.pass(func);
    for (auto &block : func->getBlocks()) {
        auto factor = pow(10, cfa.getLoopDepth(block));
        for (auto &ins : block->getInsts()) {
            auto defs = ins->getDef();
            auto uses = ins->getUse();
            bool flag = false;
            if (ins->isMov())
                flag = true;
            else if (ins->isVMov()) {
                auto def = ins->getDef()[0];
                auto use = ins->getUse()[0];
                if (def->isFloat() && use->isFloat())
                    flag = true;
            } else if (ins->isAdd() || ins->isVAdd()) {
                auto def = ins->getDef()[0];
                if (def->isReg() && def->getReg() == 13)
                    continue;
                auto uses = ins->getUse();
                for (auto &use : uses)
                    if (use->isImm() && use->getVal() == 0)
                        flag = true;
            }
            for (auto &def : defs) {
                if (def->isReg())
                    continue;
                int i = operand2web[def];
                webs[i]->spillCost += factor * defWeight;
                if (flag)
                    webs[i]->spillCost -= factor * copyWeight;
            }
            for (auto &use : uses) {
                if (use->isReg())
                    continue;
                int i = operand2web[use];
                webs[i]->spillCost += factor * useWeight;
                if (flag)
                    webs[i]->spillCost -= factor * copyWeight;
            }
        }
    }
}

void GraphColor::pruneGraph() {
    // 清空栈
    while (!stk.empty())
        stk.pop();
    // 将不与任何节点相连的节点入栈
    for (int i = 0; i < (int)list.size() ; i++)
        if (list[i].size() == 0)
            stk.push(i);
    bool success = true;
    while (success) {
        success = false;
        // 对于每个有相邻节点且未被着色的节点
        for (int i = 0; i < (int)list.size(); i++)
            if (list[i].size() > 0 && webs[i]->rreg == -1) {
                bool flag = false;
                // 判断是否可着色
                if (webs[i]->fpu)
                    flag = (int)list[i].size() < fRegNum; // FPU寄存器数
                else
                    flag = (int)list[i].size() < regNum; // 通用寄存器数
                if (flag) {
                    success = true;
                    stk.push(i);
                    adjustNeighbours(i); // 调整相邻节点
                }
            }
    }
    // 处理剩余未被入栈的节点，按溢出成本大小排序，将成本小的节点先入栈
    while (stk.size() < list.size() && stk.size() < webs.size()) {
        double spillCost = __DBL_MAX__;
        int spillNode = -1;
        for (int i = 0; i < (int)list.size() && i < (int)webs.size(); i++) {
            int nInts = list[i].size();
            if (nInts > 0 && webs[i]->spillCost / nInts < spillCost) {
                spillNode = i;
                spillCost = webs[i]->spillCost / nInts;
            }
        }
        stk.push(spillNode);
        adjustNeighbours(spillNode); // 调整相邻节点
    }
}

void GraphColor::adjustNeighbours(int i) {
    for (auto j : list[i]) {
        auto it = find(list[j].begin(), list[j].end(), i);
        if (it != list[j].end()) {
            list[j].erase(it);
        }
        if (list[j].empty())
            stk.push(j);
    }
    list[i].clear();
}

bool GraphColor::assignRegs() {
    bool success = true;
    while (!stk.empty()) {
        auto r = stk.top();
        stk.pop();
            int color = minColor(r);
            if (color > -1)
                webs[r]->rreg = color;
            else {
                webs[r]->spill = true;
                success = false;
            }
    }
    return success;
}

int GraphColor::minColor(int r) {
    // 返回与r相邻的节点中还未使用的颜色中编号最小的颜色编号
    vector<bool> use(regNum + fRegNum, false);
    bool fpu = webs[r]->fpu;
    for (auto &i : removeList[r]){
        if (i<(int)webs.size()&&webs[i]->rreg != -1){
            use[webs[i]->rreg] = true;
        }
    }
    if (!fpu) { // 分配浮点
        for (int i = 0; i < regNum; i++)
            if (!use[i])
                return i;
    } else { // 分配整型
        for (int i = regNum; i < regNum + fRegNum; i++)
            if (!use[i])
                return i;
    }
    return -1;
}

void GraphColor::modifyCode() {
    for (int i = regNum; i < (int)webs.size(); i++) {
        auto web = webs[i];
        auto rreg = web->rreg;
        if (web->fpu) {
            rreg = rreg - regNum + 16;
        }
        if (web->defs.size() || web->uses.size())
            if (rreg > 3 || rreg > 3 + 16)
                func->addSavedRegs(rreg);
        for (auto def : web->defs)
            def->setReg(rreg);
        for (auto use : web->uses)
            use->setReg(rreg);
    }
    vector<MachineInstruction *> temp;
    for (auto &block : func->getBlocks()) {
        for (auto &ins : block->getInsts()) {
            bool flag = false;
            if (ins->isMov())
                flag = true;
            else if (ins->isVMov()) {
                auto def = ins->getDef()[0];
                auto use = ins->getUse()[0];
                if (def->isFloat() && use->isFloat())
                    flag = true;
            } else if (ins->isAdd() || ins->isVAdd()) {
                auto def = ins->getDef()[0];
                if (def->isReg() && def->getReg() == 13)
                    continue;
                auto uses = ins->getUse();
                for (auto use : uses)
                    if (use->isImm() && use->getVal() == 0)
                        flag = true;
                if (uses[0]->isParam())
                    flag = false;
            }
            if (!flag)
                continue;
            auto def = *(ins->getDef().begin());
            auto uses = ins->getUse();
            if (uses.empty() || uses[0]->isImm())
                continue;
            auto use = *(uses.begin());
            if (def->getReg() == use->getReg())
                temp.push_back(ins);
        }
    }
    for (auto &ins : temp)
        ins->getParent()->remove(ins);
}

void GraphColor::genSpillCode() {
    for (auto web : webs) {
        if (!web->spill)
            continue;
        // auto ope = *(web->defs.begin());
        // cout << ope->getReg() << " ";
        web->disp = -func->AllocSpace(4);
        auto off = new MachineOperand(MachineOperand::IMM, web->disp);
        auto fp = new MachineOperand(MachineOperand::REG, 11);
        for (auto use : web->uses) {
            auto temp = new MachineOperand(*use);
            MachineOperand *operand = nullptr;
            if (web->disp > 255 || web->disp < -255) {
                operand = new MachineOperand(MachineOperand::VREG,
                                             SymbolTable::getLabel());
                auto inst1 =
                    new LoadMInstruction(use->getParent()->getParent(),
                                         LoadMInstruction::LDR, operand, off);
                use->getParent()->insertBefore(inst1);
            }
            if (operand) {
                if (!use->isFloat()) {
                    auto inst = new LoadMInstruction(
                        use->getParent()->getParent(), LoadMInstruction::LDR,
                        temp, fp, new MachineOperand(*operand));
                    use->getParent()->insertBefore(inst);

                } else {
                    auto reg = new MachineOperand(MachineOperand::VREG,
                                                  SymbolTable::getLabel());
                    MachineInstruction *inst = new BinaryMInstruction(
                        use->getParent()->getParent(), BinaryMInstruction::ADD,
                        reg, fp, new MachineOperand(*operand));
                    use->getParent()->insertBefore(inst);
                    inst = new LoadMInstruction(use->getParent()->getParent(),
                                                LoadMInstruction::VLDR, temp,
                                                new MachineOperand(*reg));
                    use->getParent()->insertBefore(inst);
                }
            } else {
                if (!use->isFloat()) {
                    auto inst = new LoadMInstruction(
                        use->getParent()->getParent(), LoadMInstruction::LDR,
                        temp, fp, off);
                    use->getParent()->insertBefore(inst);

                } else {
                    auto inst = new LoadMInstruction(
                        use->getParent()->getParent(), LoadMInstruction::VLDR,
                        temp, fp, off);
                    use->getParent()->insertBefore(inst);
                }
            }
        }
        for (auto def : web->defs) {
            if (!def->getParent())
                continue;
            auto temp = new MachineOperand(*def);
            MachineOperand *operand = nullptr;
            MachineInstruction *inst1 = nullptr, *inst = nullptr;
            if (web->disp > 255 || web->disp < -255) {
                operand = new MachineOperand(MachineOperand::VREG,
                                             SymbolTable::getLabel());
                inst1 =
                    new LoadMInstruction(def->getParent()->getParent(),
                                         LoadMInstruction::LDR, operand, off);
                def->getParent()->insertAfter(inst1);
            }
            if (operand) {
                if (!def->isFloat()) {
                    inst = new StoreMInstruction(
                        def->getParent()->getParent(), StoreMInstruction::STR,
                        temp, fp, new MachineOperand(*operand));
                } else {
                    auto reg = new MachineOperand(MachineOperand::VREG,
                                                  SymbolTable::getLabel());
                    MachineInstruction *tmp_inst = new BinaryMInstruction(
                        def->getParent()->getParent(), BinaryMInstruction::ADD,
                        reg, fp, new MachineOperand(*operand));

                    inst1->insertAfter(tmp_inst);
                    inst1 = tmp_inst;

                    inst = new StoreMInstruction(def->getParent()->getParent(),
                                                 StoreMInstruction::VSTR, temp,
                                                 new MachineOperand(*reg));
                }
            } else {
                if (!def->isFloat()) {
                    inst = new StoreMInstruction(def->getParent()->getParent(),
                                                 StoreMInstruction::STR, temp,
                                                 fp, off);
                } else {
                    inst = new StoreMInstruction(def->getParent()->getParent(),
                                                 StoreMInstruction::VSTR, temp,
                                                 fp, off);
                }
            }
            if (inst1)
                inst1->insertAfter(inst);
            else
                def->getParent()->insertAfter(inst);
        }
    }
    // cout << endl;
}