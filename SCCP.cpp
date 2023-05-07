#include "SCCP.h"

#define CONST_INT(num) ConstantInt::get(num, module)
#define CONST_FLOAT(num) ConstantFloat::get(num, module)

Constant *SCCP::constFold(CmpInst *inst, Constant *v1, Constant *v2) {
    switch (inst->get_cmp_op()) {
    case CmpInst::EQ:
        return CONST_INT(get_const_int(v1) == get_const_int(v2));
    case CmpInst::NE:
        return CONST_INT(get_const_int(v1) != get_const_int(v2));
    case CmpInst::GT:
        return CONST_INT(get_const_int(v1) > get_const_int(v2));
    case CmpInst::GE:
        return CONST_INT(get_const_int(v1) >= get_const_int(v2));
    case CmpInst::LT:
        return CONST_INT(get_const_int(v1) < get_const_int(v2));
    case CmpInst::LE:
        return CONST_INT(get_const_int(v1) <= get_const_int(v2));
    default:
        return nullptr;
    }
}

Constant *SCCP::constFold(FCmpInst *inst, Constant *v1, Constant *v2) {
    switch (inst->get_cmp_op()) {
    case FCmpInst::EQ:
        return CONST_INT(get_const_float(v1) == get_const_float(v2));
    case FCmpInst::NE:
        return CONST_INT(get_const_float(v1) != get_const_float(v2));
    case FCmpInst::GT:
        return CONST_INT(get_const_float(v1) > get_const_float(v2));
    case FCmpInst::GE:
        return CONST_INT(get_const_float(v1) >= get_const_float(v2));
    case FCmpInst::LT:
        return CONST_INT(get_const_float(v1) < get_const_float(v2));
    case FCmpInst::LE:
        return CONST_INT(get_const_float(v1) <= get_const_float(v2));
    default:
        return nullptr;
    }
}

Constant *SCCP::constFold(Instruction *inst, Constant *v1, Constant *v2) {
    auto op = inst->get_instr_type();
    switch (op) {
    case Instruction::add:
        return CONST_INT(get_const_int(v1) + get_const_int(v2));
    case Instruction::sub:
        return CONST_INT(get_const_int(v1) - get_const_int(v2));
    case Instruction::mul:
        return CONST_INT(get_const_int(v1) * get_const_int(v2));
    case Instruction::sdiv:
        return CONST_INT(get_const_int(v1) / get_const_int(v2));
    case Instruction::srem:
        return CONST_INT(get_const_int(v1) % get_const_int(v2));
    case Instruction::fadd:
        return CONST_FLOAT(get_const_float(v1) + get_const_float(v2));
    case Instruction::fsub:
        return CONST_FLOAT(get_const_float(v1) - get_const_float(v2));
    case Instruction::fmul:
        return CONST_FLOAT(get_const_float(v1) * get_const_float(v2));
    case Instruction::fdiv:
        return CONST_FLOAT(get_const_float(v1) / get_const_float(v2));
    case Instruction::cmp:
        return constFold(static_cast<CmpInst *>(inst), v1, v2);
    case Instruction::fcmp:
        return constFold(static_cast<FCmpInst *>(inst), v1, v2);
    default:
        return nullptr;
    }
}
// zext, sitofp, fptosi也可以折叠
Constant *SCCP::constFold(Instruction *inst, Constant *v) {
    auto op = inst->get_instr_type();
    switch (op) {
    case Instruction::zext:
        return CONST_INT(get_const_int(v));
    case Instruction::sitofp:
        return CONST_FLOAT((float)get_const_int(v));
    case Instruction::fptosi:
        return CONST_INT((int)get_const_float(v));
    default:
        return nullptr;
    }
}

Constant *SCCP::constFold(Instruction *inst) {
    if (inst->is_binary()) {
        //? ValueStatus如何当中的值value如何设置
        //! 递归基的const在哪里? 在ValueMap的get函数当中
        auto *const_v1 = getMapped(inst->get_operand(0)).value;
        auto *const_v2 = getMapped(inst->get_operand(1)).value;
        if (const_v1 != nullptr && const_v2 != nullptr)
            return constFold(inst, const_v1, const_v2);
    } else if (inst->is_unary()) {// 展开就行
        auto *const_v = getMapped(inst->get_operand(0)).value;
        if (const_v != nullptr)
            return constFold(inst, const_v);
    }
    return nullptr;
}

void SCCP::execute() {
    for (auto *f : module->get_functions())
        sccp(f);
}

void SCCP::sccp(Function *f) {
    if (f->is_declaration())
        return;

    value_map.clear();
    marked.clear();
    cfg_worklist.clear();
    ssa_worklist.clear();
    // 普通控制流
    cfg_worklist.emplace_back(nullptr, f->get_entry_block());

    for (auto *bb : f->get_basic_blocks())
        for (auto *expr : bb->get_instructions())
            value_map.set(expr, {ValueStatus::TOP});

    auto i = 0U;
    auto j = 0U;
    while (i < cfg_worklist.size() || j < ssa_worklist.size()) {
        // 第一次cfg遍历, 遍历图上的所有的可能的指令(单次遍历), 每次遍历的是cfg中的to块
        while (i < cfg_worklist.size()) {
            auto [pre_bb, bb] = cfg_worklist[i++];
            // cfg_worklist，存储 {pre_bb, bb} 边（意味着 bb 由 pre_bb 可达）
            if (marked.count({pre_bb, bb}) != 0)
                continue;
            marked.insert({pre_bb, bb});

            for (auto *inst : bb->get_instructions())
                instruction_visitor->visit(inst);
        }
        // 第二次ssa遍历, 遍历所有的常量折叠之后可能被影响的指令, 直到全部遍历完毕
        while (j < ssa_worklist.size()) {
            auto *inst = ssa_worklist[j++];
            auto *bb = inst->get_parent();
            //! ssa中存放的是可能被修改的指令, 可能这些块从来没有被到达过
            for (auto *pre_bb : bb->get_pre_basic_blocks()) {
                if (marked.count({pre_bb, bb}) != 0) {// 遍历的指令必须是可达的指令
                    instruction_visitor->visit(inst);
                    break;
                }
            }
        }
    }
    replaceConstant(f);
}

// 替换所有的常量值
void SCCP::replaceConstant(Function *f) {
    std::vector<Instruction *> delete_list;
    for (auto *bb : f->get_basic_blocks()) {
        for (auto *inst : bb->get_instructions()) {
            // 替换语句的写法: 需要将当前指令的所有def都替换为const
            // inst->getDef()->replaceAllUseWith(getMapped(inst).value);
            // value替换为new Operand(value) ->注: value为ConstantSymbolEnpty
            if (auto *constant = getMapped(inst).value) {
                inst->replace_all_use_with(constant);
                delete_list.push_back(inst);
            }
        }
    }
    for (auto *inst : delete_list)
        inst->get_parent()->delete_instr(inst);

    // cond指令的替换
    for (auto *bb : f->get_basic_blocks()) {
        auto *branch_inst = dynamic_cast<BranchInst *>(bb->get_terminator());
        // 不判断uncond
        if (branch_inst == nullptr || !branch_inst->is_cond_br())
            continue;
        // 针对cond
        auto *const_cond =
            dynamic_cast<ConstantInt *>(branch_inst->get_operand(0));
        if (const_cond == nullptr)
            continue;
        auto *true_bb = static_cast<BasicBlock *>(branch_inst->get_operand(1));
        auto *false_bb = static_cast<BasicBlock *>(branch_inst->get_operand(2));
        // 化简cond指令
        if (const_cond->get_value() != 0)
            condBrToJmp(branch_inst, true_bb, false_bb);
        else
            condBrToJmp(branch_inst, false_bb, true_bb);
    }
}

// 跳转语句
void SCCP::condBrToJmp(Instruction *inst, BasicBlock *jmp_bb,
                       BasicBlock *invalid_bb) {
    auto *bb = inst->get_parent();
    // 改块
    inst->remove_operands(0, 2);
    inst->add_operand(jmp_bb);
    if (jmp_bb == invalid_bb)
        return;
    // 改前驱后继关系
    bb->remove_succ_basic_block(invalid_bb);
    invalid_bb->remove_pre_basic_block(bb);
}

// 指令遍历
void InstructionVisitor::visit(Instruction *inst) {
    inst_ = inst;
    bb = inst->get_parent();
    // 每一个指令都有一个状态
    //@ value_map当中的value为inst->operand
    prev_status = value_map.get(inst);
    // cur_state是一个状态的游走指针
    cur_status = prev_status;
    // 修改当前指令的状态
    if (inst->is_phi()) {
        // phi指令
        visit_phi(static_cast<PhiInst *>(inst));
    } else if (inst->is_br()) {
        // cond指令
        visit_br(static_cast<BranchInst *>(inst));
    } else if (inst->is_binary() || inst->is_unary()) {
        // 这里判断常量折叠
        visit_foldable(inst);
    } else {
        cur_status = {ValueStatus::BOT};
    }
    // 如果该指令状态被修改过, 那么下次会依旧遍历该指令
    if (cur_status != prev_status) {
        //@ value_map当中的value为inst->operand
        value_map.set(inst, cur_status);
        // 找到所有用到该指令def的指令
        for (auto use : inst->get_use_list()) {
            auto *use_inst = dynamic_cast<Instruction *>(use.val_);
            //! ssa_worklist中状态的是可能会修改状态的指令
            ssa_worklist.push_back(use_inst);
        }
    }
}

// 修改phi指令状态
void InstructionVisitor::visit_phi(PhiInst *inst) {
    const int phi_size = inst->get_num_operand() / 2;
    for (int i = 0; i < phi_size; i++) {
        // 找到phi节点的所有来源块, 添加到边当中
        auto *pre_bb = static_cast<BasicBlock *>(inst->get_operand(2 * i + 1));
        if (sccp.get_marked().count({pre_bb, bb}) != 0) {
            auto *op = inst->get_operand(2 * i);
            //@ value_map当中的value为operand
            auto op_status = value_map.get(op);
            // 这里做了一个格状态的交, 当前phi指令的状态为它的所有src的状态的交
            cur_status ^= op_status;
        }
    }
}

// 修改br指令的状态
void InstructionVisitor::visit_br(BranchInst *inst) {
    // uncond跳过
    if (!static_cast<BranchInst *>(inst)->is_cond_br()) {
        auto *jmp_bb = static_cast<BasicBlock *>(inst->get_operand(0));
        cfg_worklist.emplace_back(bb, jmp_bb);
        return;
    }
    auto *true_bb = static_cast<BasicBlock *>(inst->get_operand(1));
    auto *false_bb = static_cast<BasicBlock *>(inst->get_operand(2));
    auto *const_cond =
        static_cast<ConstantInt *>(value_map.get(inst->get_operand(0)).value);
    //! cfg_worklist中加载所有的确定跳转的边
    if (const_cond != nullptr) {
        const_cond->get_value() != 0 ? cfg_worklist.emplace_back(bb, true_bb)
                                     : cfg_worklist.emplace_back(bb, false_bb);
    } else {
        cfg_worklist.emplace_back(bb, true_bb);
        cfg_worklist.emplace_back(bb, false_bb);
    }
}

// 这里计算所有的一元或者二元运算的常量值
void InstructionVisitor::visit_foldable(Instruction *inst) {
    // 计算有结果
    auto *folded = sccp.constFold(inst);
    if (folded != nullptr) {
        // 当前指令变为CONST形式
        cur_status = {ValueStatus::CONST, folded};
        return;
    }
    // 计算无结果, 初始化为TOP形式
    cur_status = {ValueStatus::TOP};
    for (auto *op : inst->get_operands()) {
        // 如果其中有一个op为Bot的状态那么转为BOT状态
        //@ value_map当中的value为operand
        if (value_map.get(op).is_bot()) {
            cur_status = {ValueStatus::BOT};
            return;
        }
    }
}