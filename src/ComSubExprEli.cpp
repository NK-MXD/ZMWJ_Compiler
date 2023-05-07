#include "ComSubExprEli.h"
#include <set>
#include <algorithm>

#define DEBUG_SWITCH_cse 0
#if DEBUG_SWITCH_cse
#define printCse(str) \
    std::cout << str << "\n";
#else
#define printCse(str) //
#endif

bool cmp_inst::operator()(Instruction *a, Instruction *b) const
    {
        auto aops = a->getOpse();
        auto bops = b->getOpse();
        auto aop = a->getOp();
        auto bop = b->getOp();
        auto asizes = aops.size();
        auto bsizes = bops.size();
        printCse_("asizes = " << asizes << " bsizes = " << bsizes);
        if (asizes != bsizes)
        {
            return asizes < bsizes;
        }
        if (a->getInstType() != b->getInstType())
        {
            return a->getInstType() < b->getInstType();
        }
        else if (a->getOpcode() != b->getOpcode())
        {
            return a->getOpcode() < b->getOpcode();
        }
        auto ait = aops.begin();
        auto bit = bops.begin();
        auto aopit = aop.begin()+1;
        auto bopit = bop.begin()+1;
        while (ait != aops.end())
        {
            auto a_se = *ait;
            auto b_se = *bit;
            printCse_("a: " << a_se->toStr() << " b: " << b_se->toStr());
            if (a_se->toStr() != b_se->toStr())
            {
                if (a_se->isConstant() && b_se->isConstant())
                {
                    auto a_const = dynamic_cast<ConstantSymbolEntry *>(a_se);
                    auto b_const = dynamic_cast<ConstantSymbolEntry *>(b_se);
                    // if (a_const->getType() == TypeSystem::intType &&
                    //     b_const->getType() == TypeSystem::intType &&
                    //     a_const->getIntValue() != b_const->getIntValue())
                    // {
                    //     return a_const->getIntValue() < b_const->getIntValue();
                    // }
                    // else if (a_const->getType() == TypeSystem::floatType &&
                    //          b_const->getType() == TypeSystem::intType &&
                    //          a_const->getFloatValue() != b_const->getIntValue())
                    // {
                    //     return a_const->getFloatValue() < b_const->getIntValue();
                    // }
                    // else if (a_const->getType() == TypeSystem::intType &&
                    //          b_const->getType() == TypeSystem::floatType &&
                    //          a_const->getIntValue() != b_const->getFloatValue())
                    // {
                    //     return a_const->getIntValue() < b_const->getFloatValue();
                    // }
                    // else if (a_const->getType() == TypeSystem::floatType &&
                    //          b_const->getType() == TypeSystem::floatType &&
                    //          a_const->getFloatValue() != b_const->getFloatValue())
                        return a_const->getValue() < b_const->getValue();
                }
                else
                {
                    return a_se->toStr() < b_se->toStr();
                }
            }
            else
            {
                if (a_se->getType()->isArray())
                {
                    printCse_("In idx cmp: ");
                    auto a_op = *aopit;
                    auto b_op = *bopit;
                    auto a_idx = a_op->getIdxSe();
                    auto b_idx = b_op->getIdxSe();
                    // std::cout<<"===============a_idx = " << a_idx.size() << " b_idx = " << b_idx.size()<<"\n";
                    // printCse_("a_idx = " << a_idx.size() << " b_idx = " << b_idx.size());
                    if (a_idx.size() != b_idx.size())
                    {
                        return a_idx.size() < b_idx.size();
                    }
                    for (size_t i = 0; i < a_idx.size(); i++)
                    {
                        // printCse_("a idx: " << a_idx[i]->toStr() << " b idx : " << b_idx[i]->toStr());
                        // std::cout<<"a idx: " << a_idx[i]->toStr() << " b idx : " << b_idx[i]->toStr()<<"\n";
                        if (a_idx[i] != b_idx[i])
                        {
                            if (a_idx[i]->isConstant() && b_idx[i]->isConstant() &&
                                dynamic_cast<ConstantSymbolEntry *>(a_idx[i])->getValue() ==
                                    dynamic_cast<ConstantSymbolEntry *>(b_idx[i])->getValue())
                            {
                            }
                            else
                            {
                                return a_idx[i]->toStr() < b_idx[i]->toStr();
                            }
                        }
                    }
                }
            }
            ait++;
            bit++;
            aopit++;
            bopit++;
        }

        return false;
    }

void ComSubExprEli::execute()
{
    for (auto func : unit->get_functions())
    {
        if (func->getBlockList().empty())
            continue;
        initial_map(func);
        gen_local(func);
        kill_local(func);
        // gen_global(func);
        // compute_global(func);
    }
}

bool ComSubExprEli::is_valid_expr(Instruction *instr)
{
    return !(instr->isRet() ||instr->isCall() ||instr->isCond() ||instr->isUncond() 
    || instr->isAlloc() || instr->isBitcast() || (instr->isLoad()&&!dynamic_cast<LoadInstruction*>(instr)->loadChange() )
    || instr->isCmp() || instr->isZext()||instr->isPhi());
}

void ComSubExprEli::initial_map(Function *f)
{
    for (auto bb : f->getBlockList())
    {
        bb_in[bb] = std::set<Instruction *, cmp_inst>();
        bb_out[bb] = std::set<Instruction *, cmp_inst>();
        bb_gen[bb] = std::set<Instruction *, cmp_inst>();
        bb_kill[bb] = std::set<Instruction *, cmp_inst>();
    }
}

// z0111 local
// z0112 local
void ComSubExprEli::gen_local(Function *f)
{
    printCse("local expr");
    for (auto bb : f->getBlockList())
    {
        printCse(" B" << bb->getNo());
        std::vector<Instruction *> delete_list = {};
        auto head = bb->end();
        for (auto instr = head->getNext(); instr != head; instr = instr->getNext())
        {
            printCse("============= cur_instr = " << instr->getInstName());
            // std::cout<<"============= cur_instr = " << instr->getInstName()<<" "<<instr->isStore()<<"\n";
            if (!is_valid_expr(instr))
                continue;
            std::vector<Operand *> opd = instr->getOp();
            int cnt = (int)opd.size() - 1;
            Operand *dst = instr->getOp()[0];
            Operand *src1 = instr->getOp()[1];
            Operand *src2 = nullptr;
            if (cnt == 2)
            {
                src2 = instr->getOp()[2];
            }
            if (cnt == 2)
            {
                printCse("dst = " << dst->toStr() << " src1 = " << src1->toStr() << " src2 = " << src2->toStr());
            }
            else if (cnt == 1)
            {
                printCse("dst = " << dst->toStr() << " src1 = " << src1->toStr());
            }
            if (instr->isStore() && instr->getOpse().size())
            {
                auto change_se = instr->getOpse()[0];
                // printCse("store!" << change_se->toStr());
                // std::cout<<"store!" << change_se->toStr()<<"\n";
                for (auto src = bb_gen[bb].begin(); src != bb_gen[bb].end();)
                {
                    bool find = 0;
                    std::vector<SymbolEntry *> opse = (*src)->getOpse();
                    for (auto se : opse)
                    {
                        if (se->toStr() == change_se->toStr())
                        {
                            // std::cout<<"erase: " << (*src)->getInstName()<<"\n";
                            // printCse("erase: " << (*src)->getInstName());
                            bb_gen[bb].erase(src++);
                            // auto tmp = bb_gen[bb].find(*src);
                            // bb_gen[bb].erase(tmp);
                            find = 1;
                            break;
                        }
                    }
                    if (!find)
                        src++;
                }
            }

            // Operand *src1 = instr->getOp()[1];
            // Operand *src2 = nullptr;
            // if (cnt == 2)
            // {
            //     src2 = instr->getOp()[2];
            // }
            // if (cnt == 2)
            // {
            //     printCse("dst = " << dst->toStr() << " src1 = " << src1->toStr() << " src2 = " << src2->toStr());
            // }
            // else if (cnt == 1)
            // {
            //     printCse("dst = " << dst->toStr() << " src1 = " << src1->toStr());
            // }

            if (is_valid_expr(instr))
            {
                auto res = bb_gen[bb].insert(instr);
                if (!res.second)
                {
                    auto old_instr = bb_gen[bb].find(instr);
                    // printCse("old_instr = " << (*old_instr)->getInstName()<<" src1 = "<<(*old_instr)->getOpse()[0]->toStr()<<" src2 = "<<(*old_instr)->getOpse()[1]->toStr());

                    for (auto use : dst->getUse())
                    {
                        std::vector<Operand *> ops = use->getOp();
                        printCse("use dst = " << use->getInstName() << " " << ops.size());
                        for (size_t i = 0; i < ops.size(); i++)
                        {
                            if (ops[i] == nullptr)
                                continue;
                            printCse("op dst = " << ops[i]->toStr());
                            if (ops[i]->toStr() == dst->toStr())
                            {
                                use->getOp()[i] = (*old_instr)->getOp()[0];
                                printCse("After op dst = " << use->getOp()[i]->toStr());
                                if (is_valid_expr(use) && i > 0)
                                    use->getOpse()[i - 1] = use->getOp()[i]->getSymbolEntry();
                                break;
                            }
                        }
                    }
                    delete_list.emplace_back(instr);
                }
                else
                {
                    auto u_res = U.insert(instr);
                    if (u_res.second)
                    {
                        printCse("insert " << instr->getInstName() << " into U");
                    }
                }
            }
        }
        for (auto instr : delete_list)
            bb->remove(instr);
    }
}

void ComSubExprEli::kill_local(Function *f)
{
    for (auto bb : f->getBlockList())
    {
        auto head = bb->begin();
        for (; head != bb->begin();)
        {
            auto next = head->getNext();
            if (is_valid_expr(head))
            {
                bb_kill[bb].erase(head);
            }
            head = next;
        }
    }
}
// z0114 global
void ComSubExprEli::gen_global(Function *f)
{
    printCse("gen_global");
    auto all_bbs = f->getBlockList();
    auto head = *(f->begin());
    for (auto bb : all_bbs)
    {
        printCse("cur bb:" << bb->getNo());
        cnt++;
        if (bb != head)
        {
            bb_out[bb] = U;
        }
        // if (cnt > 6)
        // {
        //     return;
        // }
    }
    bb_out[head] = std::set<Instruction *, cmp_inst>();
    bool flag = true;
    while (flag)
    {
        flag = false;
        for (auto bb : all_bbs)
        {
            printCse("-cur bb:" << bb->getNo());
            if (bb)
            {
                std::set<Instruction *, cmp_inst> last_tmp;
                bool is_first = true;
                for (auto pred : bb->getPrevbb())
                {
                    printCse("pred bb:" << pred->getNo());
                    if (!is_first)
                    {
                        std::set<Instruction *, cmp_inst> this_tmp = {};
                        std::insert_iterator<std::set<Instruction *, cmp_inst>> it(this_tmp, this_tmp.begin());
                        std::set_intersection(last_tmp.begin(), last_tmp.end(), bb_out[pred].begin(), bb_out[pred].end(), it);
                        last_tmp = this_tmp;
                    }
                    else
                    {
                        last_tmp = bb_out[pred];
                        is_first = false;
                    }
                }
                // for (auto i : last_tmp)
                // {
                //     printCse("++ last_tmp: name = " << i->getInstName() << " " << i->getOp()[0]->toStr());
                // }
                // for (auto i : bb_in[bb])
                // {
                //     printCse("++ bbin: name = " << i->getInstName() << " " << i->getOp()[0]->toStr());
                // }

                bb_in[bb] = last_tmp;
                // bb_OUT[B] = bb_gen[B] union (IN[B]-bb_kill[B])
                auto old_out_size = bb_out[bb].size();
                std::set<Instruction *, cmp_inst> tmp2 = {};
                std::insert_iterator<std::set<Instruction *, cmp_inst>> it(tmp2, tmp2.begin());
                std::set_difference(bb_in[bb].begin(), bb_in[bb].end(), bb_kill[bb].begin(), bb_kill[bb].end(), it);
                std::set<Instruction *, cmp_inst> tmp3 = {};
                std::insert_iterator<std::set<Instruction *, cmp_inst>> it2(tmp3, tmp3.begin());

                // for (auto i : tmp2)
                // {
                //     printCse("++ tmp2: name = " << i->getInstName() << " " << i->getOp()[0]->toStr());
                // }
                std::set_union(tmp2.begin(), tmp2.end(), bb_gen[bb].begin(), bb_gen[bb].end(), it2);

                bb_out[bb] = tmp3;
                auto new_out_size = tmp3.size();
                if (old_out_size != new_out_size)
                    flag = true;
            }
        }
    }
}

void ComSubExprEli::compute_global(Function *f)
{
    printCse("compute_global");
    std::set<Instruction *> delete_list = {};
    std::map<Instruction *, Instruction *> replace_map;
    auto all_bbs = f->getBlockList();
    for (auto bb : all_bbs)
    {
        auto head = bb->end();
        printCse("-- cur bb:" << bb->getNo());
        for (auto instr = head->getNext(); instr && instr != head; instr = instr->getNext())
        {
            if (is_valid_expr(instr))
            {
                printCse("==== GLOBAL =========  = " << instr->getInstName() << instr->getOp()[0]->toStr());
                auto common_exp = bb_in[bb].find(instr);
                // if(!(*common_exp)){
                //     printCse("common_exp null");
                //     continue;
                // }

                if (common_exp != bb_in[bb].end())
                {
                    printCse("== global old_instr = " << (*common_exp)->getInstName());
                    auto dst = instr->getOp()[0];
                    if (dst)
                        for (auto use : dst->getUse())
                        {

                            std::vector<Operand *> ops = use->getOp();
                            printCse("use dst = " << use->getInstName() << " " << ops.size());
                            for (size_t i = 0; i < ops.size(); i++)
                            {
                                if (ops[i] == nullptr)
                                    continue;
                                printCse("op dst = " << ops[i]->toStr());
                                if (ops[i]->toStr() == dst->toStr())
                                {
                                    use->getOp()[i] = (*common_exp)->getOp()[0];
                                    printCse("After op dst = " << use->getOp()[i]->toStr());
                                    if (is_valid_expr(use) && i > 0)
                                        use->getOpse()[i - 1] = use->getOp()[i]->getSymbolEntry();
                                    break;
                                }
                            }
                        }
                    replace_map[instr] = *common_exp;
                    delete_list.insert(instr);
                }
            }
        }
    }
    printCse(" ===== del =====");
    for (auto instr : delete_list)
    {
        printCse(" ===== instr = " << instr->getInstName() << " " << instr->getOp()[0]->toStr());
        auto common_exp = replace_map[instr];
        while (replace_map.find(common_exp) != replace_map.end())
            common_exp = replace_map[common_exp];
        auto old_instr = common_exp;
        auto dst = instr->getOp()[0];
        for (auto use : dst->getUse())
        {
            std::vector<Operand *> ops = use->getOp();
            printCse("use dst = " << use->getInstName() << " " << ops.size());
            for (size_t i = 0; i < ops.size(); i++)
            {
                if (ops[i] == nullptr)
                    continue;
                printCse("op dst = " << ops[i]->toStr());
                if (ops[i]->toStr() == dst->toStr())
                {
                    use->getOp()[i] = old_instr->getOp()[0];
                    printCse("After op dst = " << use->getOp()[i]->toStr());
                    if (is_valid_expr(use) && i > 0)
                        use->getOpse()[i - 1] = use->getOp()[i]->getSymbolEntry();
                    break;
                }
            }
        }
        instr->getParent()->remove(instr);
    }
}