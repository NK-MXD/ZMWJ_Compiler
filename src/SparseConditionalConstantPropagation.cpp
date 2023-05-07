#include"SparseConditionalConstantPropagation.h"

#define DEBUG_SWITCH_SCCP 0
#if DEBUG_SWITCH_SCCP
#define printSCCP(str) \
    std::cout << str << "\n";
#else
#define printSCCP(str) //
#endif

// 判断指令类型
bool is_unary(Instruction* inst){
    return inst->isZext() || inst->isStof() || inst->isFtos();
}

ConstantSymbolEntry* SCCP::constFold(CmpInstruction *inst, ConstantSymbolEntry *v1, ConstantSymbolEntry *v2){
    printSCCP("=====start fold cmp=======");
    int opcode = inst->getOpcode();
    ConstantSymbolEntry* ce = new ConstantSymbolEntry(nullptr);
    ce->setType(TypeSystem::boolType);
    double x,y;
    if(v1->getType()->isInt()){
        x = (int)get_const_value(v1);
    }else{
        x = (float)get_const_value(v1);
    }
    if(v2->getType()->isInt()){
        y = (int)get_const_value(v2);
    }else{
        y = (float)get_const_value(v2);
    }
    if(opcode == CmpInstruction::E){
        ce->setValue(x == y);
    }else if(CmpInstruction::NE){
        ce->setValue(x != y);
    }else if(CmpInstruction::G){
        ce->setValue(x > y);
    }else if(CmpInstruction::GE){
        ce->setValue(x >= y);
    }else if(CmpInstruction::L){
        ce->setValue(x < y);
    }else if(CmpInstruction::LE){
        ce->setValue(x <= y);
    }else{
        return nullptr;
    }
    return ce;
}

ConstantSymbolEntry* SCCP::constFold(BinaryInstruction *inst, ConstantSymbolEntry *v1, ConstantSymbolEntry *v2){
    printSCCP("=====start fold binary=======");
    int opcode = inst->getOpcode();
    ConstantSymbolEntry* ce = new ConstantSymbolEntry(nullptr);
    double x,y;
    bool flag = false;
    if(v1->getType()->isInt()){
        x = (int)get_const_value(v1);
    }else{
        x = (float)get_const_value(v1);
        flag = true;
    }
    if(v2->getType()->isInt()){
        y = (int)get_const_value(v2);
    }else{
        y = (float)get_const_value(v2);
        flag = true;
    }
    if(opcode == BinaryInstruction::ADD){
        if(flag) ce->setType(TypeSystem::floatType);
        ce->setType(TypeSystem::intType);
        ce->setValue(x + y);
    }else if(opcode == BinaryInstruction::SUB){
        if(flag) ce->setType(TypeSystem::floatType);
        ce->setType(TypeSystem::intType);
        ce->setValue(x - y);
    }else if(opcode == BinaryInstruction::MUL){
        if(flag) ce->setType(TypeSystem::floatType);
        ce->setType(TypeSystem::intType);
        ce->setValue(x * y);
    }else if(opcode == BinaryInstruction::DIV){
        if(flag) ce->setType(TypeSystem::floatType);
        ce->setType(TypeSystem::intType);
        ce->setValue(x / y);
    }else if(opcode == BinaryInstruction::MOD){
        ce->setType(TypeSystem::intType);
        ce->setValue((int)x % (int)y);
    }else if(opcode == BinaryInstruction::AND){
        ce->setType(TypeSystem::boolType);
        ce->setValue(x && y);
    }else if(opcode == BinaryInstruction::OR){
        ce->setType(TypeSystem::boolType);
        ce->setValue(x || y);
    }else{
        printSCCP("=====end fold binary=======");
        return nullptr;
    }
    printSCCP(inst->getInstName()<<" "<<inst->getDst()->toStr()<<"="<<ce->getValue());
    printSCCP("=====end fold binary=======");
    return ce;
}

ConstantSymbolEntry* SCCP::constFold(Instruction *inst, ConstantSymbolEntry *v){
    printSCCP("=====start fold unary=======");
    ConstantSymbolEntry* ce = new ConstantSymbolEntry(nullptr);
    double x;
    if(v->getType()->isInt()){
        x = (int)get_const_value(v);
    }else{
        x = (float)get_const_value(v);
    }
    if(inst->isZext()){
        ce->setType(TypeSystem::intType);
        ce->setValue(!x);
    }else if(inst->isStof()){
        ce->setType(TypeSystem::floatType);
        ce->setValue((float)x);
    }else if(inst->isFtos()){
        ce->setType(TypeSystem::intType);
        ce->setValue((int)x);
    }else{
        printSCCP("=====end fold unary=======");
        return nullptr;
    }
    printSCCP(inst->getInstName()<<" "<<inst->getDst()->toStr()<<"="<<ce->getValue()<<"=>"<<ce->getType()->toStr());
    printSCCP("=====end fold unary=======");
    return ce;
}

ConstantSymbolEntry *SCCP::constFold(Instruction *inst) {
    // 算术运算指令
    if(inst->isBin()){
        auto bininst = dynamic_cast<BinaryInstruction*>(inst);
        auto *const_v1 = getMapped(bininst->getUse()[0]).value;
        auto *const_v2 = getMapped(bininst->getUse()[1]).value;
        if (const_v1 != nullptr && const_v2 != nullptr)
            return constFold(bininst, const_v1, const_v2);
        printSCCP("========no fold==========");
    }
    // cmp指令
    else if(inst->isCmp()){
        auto cmpinst = dynamic_cast<CmpInstruction*>(inst);
        auto *const_v1 = getMapped(cmpinst->getUse()[0]).value;
        auto *const_v2 = getMapped(cmpinst->getUse()[1]).value;
        if (const_v1 != nullptr && const_v2 != nullptr)
            return constFold(cmpinst, const_v1, const_v2);
    }
    // 一元运算指令
    else if(is_unary(inst)){
        auto *const_v = getMapped(inst->getUse()[0]).value;
        if (const_v != nullptr)
            return constFold(inst, const_v);
    }
    return nullptr;
}

void SCCP::execute() {
    std::vector<Function*> func = unit->get_functions();
    for(auto f = func.begin(); f != func.end(); f++){
        printSCCP("=====start function=======");
        printSCCP((*f)->getSymPtr()->toStr());
        sccp(*f);
        printSCCP("=====end function=======");
    }
}

void SCCP::sccp(Function *f) {
    value_map.clear();
    marked.clear();
    cfg_worklist.clear();
    ssa_worklist.clear();
    // 普通控制流
    cfg_worklist.emplace_back(nullptr, f->getEntry());
    for(auto bb: f->getBlockList()){
        for (auto inst = bb->begin(); inst != bb->end(); inst = inst->getNext()) {
            // printSCCP("inst: "<<inst->getInstName());
            if(inst->getDst()){
                value_map.set(inst->getDst(), ValueStatus(ValueStatus::TOP, nullptr));
            }
        }
    }
    auto i = 0U;
    auto j = 0U;
    while (i < cfg_worklist.size() || j < ssa_worklist.size()) {
        // 第一次cfg遍历, 遍历图上的所有的可能的指令(单次遍历), 每次遍历的是cfg中的to块
        printSCCP("=====start cfg_worklist=======");
        while (i < cfg_worklist.size()) {
            auto [pre_bb, bb] = cfg_worklist[i++];
            if (marked.count({pre_bb, bb}) != 0)
                continue;
            marked.insert({pre_bb, bb});
            for (auto inst = bb->begin(); inst != bb->end(); inst = inst->getNext()) {
                instruction_visitor->visit(inst);
            }
        }
        printSCCP("=====end cfg_worklist=======");
        // 第二次ssa遍历, 遍历所有的常量折叠之后可能被影响的指令, 直到全部遍历完毕
        printSCCP("=====start ssa_worklist=======");
        while (j < ssa_worklist.size()) {
            auto *inst = ssa_worklist[j++];
            auto *bb = inst->getParent();
            for(auto pre_bb = bb->pred_begin(); pre_bb != bb->pred_end(); pre_bb++){
                if (marked.count({*pre_bb, bb}) != 0) {// 遍历的指令必须是可达的指令
                    instruction_visitor->visit(inst);
                    break;
                }
            }
            // instruction_visitor->visit(inst);
        }
        printSCCP("=====end ssa_worklist=======");
    }
    // 替换所有的常量
    printSCCP("=====start replaceConstant=======");
    replaceConstant(f);
    printSCCP("=====end replaceConstant=======");
}

// 替换所有的常量值
void SCCP::replaceConstant(Function *f) {
    std::vector<Instruction *> delete_list;
    for (auto *bb : f->getBlockList()) {
        for (auto inst = bb->begin(); inst != bb->end(); inst = inst->getNext()) {
            // 替换语句的写法: 需要将当前指令的所有def都替换为const
            if(inst->getDst()){
                auto v = getMapped(inst->getDst());
                if (v.is_const()) {
                    printSCCP(inst->getDst()->toStr()<<"=>"<<v.value->getValue()<<"=>"<<v.value->getType()->toStr());
                    inst->getDst()->replaceAllUseWith(new Operand(v.value));
                    delete_list.push_back(inst);
                }
            }
        }
    }
    for (auto *inst : delete_list)
        inst->getParent()->remove(inst);
    // cond指令的替换
    for (auto *bb : f->getBlockList()){
        for (auto inst = bb->begin(); inst != bb->end(); inst = inst->getNext()) {
            if(inst->isCond()){
                auto const_cond = dynamic_cast<CondBrInstruction *>(inst)->getUse()[0];
                if(const_cond->isConst()){
                    auto *true_bb = dynamic_cast<CondBrInstruction *>(inst)->getTrueBranch();
                    auto *false_bb = dynamic_cast<CondBrInstruction *>(inst)->getFalseBranch();
                    if((int)const_cond->getConstVal() != 0){
                        condBrToJmp(inst, true_bb, false_bb);
                    }else{
                        condBrToJmp(inst, false_bb, true_bb);
                    }
                }
            }
        }
    }
}

// 跳转语句
void SCCP::condBrToJmp(Instruction *inst, BasicBlock *jmp_bb,
                       BasicBlock *invalid_bb) {
    auto *bb = inst->getParent();
    // 改指令为uncond
    auto uncond = new UncondBrInstruction(jmp_bb);
    bb->insertAfter(uncond, inst);
    bb->remove(inst);

    // 改前驱后继关系
    bb->removeSucc(invalid_bb);
    invalid_bb->removePred(bb);
}

// 指令遍历
void InstructionVisitor::visit(Instruction *inst) {
    if(inst->getDst() == nullptr) return;
    printSCCP("=====start visit inst=======");
    printSCCP(inst->getInstName()<<" "<<inst->getDst()->toStr());
    // this->inst_ = inst;
    auto bb = inst->getParent();
    // 每一个指令都有一个状态
    prev_status = value_map.get(inst->getDst());
    // cur_state是一个状态的游走指针
    cur_status = prev_status;
    // 修改当前指令的状态
    if (inst->isPhi()) {
        // phi指令
        visit_phi(dynamic_cast<PhiInstruction *>(inst));
    } else if(inst->isUncond()){
        // uncond指令在cfg中直接插入块
        auto *jmp_bb = dynamic_cast<UncondBrInstruction *>(inst)->getBranch();
        cfg_worklist.emplace_back(bb, jmp_bb);
    }else if (inst->isCond()) {
        // cond指令
        visit_br(dynamic_cast<CondBrInstruction *>(inst));
    }else if (inst->isBin() || is_unary(inst)) {
        // 这里判断常量折叠
        visit_foldable(inst);
        // 以下判断展开才可以开启!
        // printSCCP("binary"<<inst->getDst()->toStr()<<" "<<cur_status.value->getValue());
    } else {
        cur_status = ValueStatus(ValueStatus::BOT, nullptr);
    }
    // 如果该指令状态被修改过, 那么下次会依旧遍历该指令
    if (cur_status != prev_status) {
        printSCCP("add inst");
        value_map.set(inst->getDst(), cur_status);
        // 找到所有用到该指令def的指令
        for (auto use_inst : inst->getDst()->getUse()) {
            //! ssa_worklist中状态的是可能会修改状态的指令
            ssa_worklist.push_back(use_inst);
        }
    }
    printSCCP("=====end visit inst=======");
}

// 修改phi指令状态
void InstructionVisitor::visit_phi(PhiInstruction *inst) {
    std::map<BasicBlock*, Operand*> srcs = inst->getSrcs();
    for(auto i: srcs){
        auto *pre_bb = i.first;
        auto op_status = value_map.get(i.second);
        // 这里做了一个格状态的交, 当前phi指令的状态为它的所有src的状态的交
        cur_status ^= op_status;
    }
}

// 修改br指令的状态
void InstructionVisitor::visit_br(CondBrInstruction *inst) {
    auto *bb = inst->getParent();
    auto *true_bb = inst->getTrueBranch();
    auto *false_bb = inst->getFalseBranch();
    auto *const_cond = inst->getUse()[0];

    //! cfg_worklist中加载所有的确定跳转的边
    if (const_cond != nullptr) {
        (int)const_cond->getConstVal() != 0 ? cfg_worklist.emplace_back(bb, true_bb)
                                     : cfg_worklist.emplace_back(bb, false_bb);
    } else {
        cfg_worklist.emplace_back(bb, true_bb);
        cfg_worklist.emplace_back(bb, false_bb);
    }
}

// 这里计算所有的一元或者二元运算的常量值
void InstructionVisitor::visit_foldable(Instruction *inst) {
    printSCCP("=====start fold binary or unary inst=======");
    // 计算有结果
    auto *folded = sccp.constFold(inst);
    if (folded != nullptr) {
        // 当前指令变为CONST形式
        cur_status = ValueStatus(ValueStatus::CONST, folded);
        printSCCP("=====end fold binary or unary inst=======");
        return;
    }
    // 计算无结果, 初始化为TOP形式
    cur_status = ValueStatus(ValueStatus::CONST, nullptr);
    for (auto *op : inst->getUse()) {
        // 如果其中有一个op为Bot的状态那么转为BOT状态
        if (value_map.get(op).is_bot()) {
            cur_status = ValueStatus(ValueStatus::BOT, nullptr);
            printSCCP("=====end fold binary or unary inst=======");
            return;
        }
    }
}
