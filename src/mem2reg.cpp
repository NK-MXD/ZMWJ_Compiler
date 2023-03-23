#include"mem2reg.h"

std::map<Operand*, std::vector<Instruction *>> inst_inst_stack;

void Mem2Reg::execute() {
    auto func = unit->begin();
    while (func != unit->end())
        execute(*func++);
}

void Mem2Reg::execute(Function* function) {
    this->dom = new dominatorTree(unit);
    this->dom->execute();
    add_insts.clear();
    alloca_insts.clear();
    BasicBlock* entry = function->getEntry();
    for (auto i = entry->begin(); i != entry->end(); i = i->getNext()) {
        if (!i->isAlloc())
            break;
        AllocaInstruction* alloca = (AllocaInstruction*)i;
        if (!alloca->isArray())
            alloca_insts.push_back(alloca);
    }
    std::vector<BasicBlock*> worklist;//未处理的
    std::set<BasicBlock*> inWorklist;//已处理的
    std::set<BasicBlock*> allFrontiers;//闭包
    std::set<BasicBlock*> strblocks;

    for (auto i : alloca_insts) {
        // i->output();
        // printmr(i->getDef()->getSymbolEntry()->toStr());
        worklist.clear();
        inWorklist.clear();
        allFrontiers.clear();
        strblocks.clear();
        auto block = i->getParent();
        block->remove(i);
        auto operand = i->getDef();
        operand->setDef(nullptr);
        // 替换为新的变量, 如果有值的话直接替换为store的值
        // alloca 变量
        IdentifierSymbolEntry* addr = dynamic_cast<IdentifierSymbolEntry *>(i->getSymbolEntry());
        // phi 指令需要公共的变量作为最后值的存放位置
        Operand* temp =new Operand(new TemporarySymbolEntry(((PointerType*)(operand->getType()))->getValueType(),
                                            SymbolTable::getLabel()));
        i->replaceDef(temp);
        std::vector<Instruction *> uses = operand->getUses();
        for(auto use: uses){
            // 找到store指令, 如果 store const dst, 直接赋值
            // 如果store tn, dst, 改换为加法指令
            if (use->isStore()) {
                // printmr((*use)->getUse()[0]->getSymbolEntry()->toStr()<<"src: "<<(*use)->getUse()[1]->getSymbolEntry()->toStr());
                // if((*use)->getUse()[1]->isConstant()){
                //     // 这里暂时写int
                //     addr->setIntValue((*use)->getUse()[1]->getValue());
                //     addr->setIdtype(IdentSystem::constant); // 这里直接替换为值可能有问题, 重复赋值会取最后赋值
                //     // (*use)->getParent()->remove((*use));
                //     (*use)->getUse()[1]->removeUse(*use);
                //     temp = new Operand(new ConstantSymbolEntry(addr->getType(), (int)addr->getIntValue()));
                //     assigns.insert((*use)->getParent());
                // }else{
                    // 直接替换为src变量
                    // temp = (*use)->getUse()[1];
                    // temp = new Operand(new TemporarySymbolEntry(((PointerType*)(operand->getType()))->getValueType(),
                    //                         SymbolTable::getLabel()));
                    auto assignIns = new BinaryInstruction(
                        BinaryInstruction::ADD, temp, use->getUse()[1],
                        new Operand(
                            new ConstantSymbolEntry(temp->getType(), 0)));
                    add_insts.push_back(assignIns);
                    use->getParent()->insertBefore(assignIns, use);
                    strblocks.insert(use->getParent());
                    use->getUse()[1]->removeUse(use);
                // }
            }
            auto dst = use->getDef();
            use->getParent()->remove(use);
            // use->output();
            if (dst && dst != temp){
                std::vector<Instruction *> insts = dst->getUses();
                for(auto inst: insts){
                    // if (lastDef) {
                    //     u->replaceUse(dst, lastDef);
                    //     lastDef = nullptr;
                    // } else
                    inst->replaceUse(dst, temp);
                }
            }
            operand->removeUse(use);
        }
        // 计算支配边界的闭包
        for (auto block : strblocks) {
            worklist.push_back(block);
            inWorklist.insert(block);
            while (!worklist.empty()) {
                BasicBlock* n = worklist[0];
                worklist.erase(worklist.begin());
                for (auto m : dom->getDominanceFrontier(n)) {
                    if (allFrontiers.find(m) == allFrontiers.end()) {
                    // 在支配边界插入支配节点, 此时支配节点可以临时分配一个变量
                        m->insertPhiInstruction(temp);
                        allFrontiers.insert(m);
                        if (inWorklist.find(m) == inWorklist.end()) {
                            inWorklist.insert(m);
                            worklist.push_back(m);
                        }
                    }
                }
            }
        }
    }
    for (auto i : add_insts) {
        auto use = i->getUse()[0];
        // if (use->getEntry()->isConstant())
        //     continue;
        if (i->getParent()->begin() == i && i->getNext()->isUncond())
            continue;
        if (use->getSymbolEntry()->isVariable()) {
            continue;
        }
        auto def = i->getDef();
        // if (def != use)
        std::vector<Instruction *> insts = def->getUses();
        for(auto inst: insts){
            inst->replaceUse(def, use);
        }
        i->getParent()->remove(i);
        use->removeUse(i);
    }
}


// 寄存器重命名
void Mem2Reg::rename(Function* function){
    old_new_stack.clear();
    for (auto i : alloca_insts) {
        auto operand = i->getDef();
        old_new_stack[operand] = stack<Operand*>();
    }
    rename(function->getEntry());
}

void Mem2Reg::rename(BasicBlock *block) {
    std::map<Operand*, int> counter;
    for (auto i = block->begin(); i != block->end(); i = i->getNext()) {
        Operand* def = i->getDef();
        // if(def)
        if (def && old_new_stack.find(def) != old_new_stack.end()) {
            // printmr(def->getSymbolEntry()->toStr());
            counter[def]++;
            Operand* new_op =new Operand(*def);
            old_new_stack[def].push(new_op);
            i->replaceDef(new_op);
        }
        if (!i->isPhi()){
            for (auto u : i->getUse()){
                if (old_new_stack.find(u) != old_new_stack.end())
                    i->replaceUse(u, old_new_stack[u].top());
            }
        }
    }
    for (auto it = block->succ_begin(); it != block->succ_end(); it++) {
        for (auto i = (*it)->begin(); i != (*it)->end(); i = i->getNext()) {
            if (i->isPhi()) {
                PhiInstruction* phi = (PhiInstruction*)i;
                Operand* temp_op = phi->getOriginDef();
                if (!old_new_stack[temp_op].empty())
                    phi->addSrc(block, old_new_stack[temp_op].top());
                else
                    phi->addSrc(block, new Operand(new ConstantSymbolEntry(temp_op->getType(), 0)));
            } else
                break;
        }
    }
    for(auto child: this->dom->getDomTreeSuccessorBlocks(block)){
        rename(child);
    }

    for (auto it : counter)
        for (int i = 0; i < it.second; i++)
            old_new_stack[it.first].pop();
}

