#ifndef _MEM2REG_H
#define _MEM2REG_H
#include <stack>
#include <list>
#include <algorithm>
#include <unordered_map>
#include <vector>
#include "dominatorTree.h"
#include "Instruction.h"



class Mem2Reg
{
private:
    Unit *unit;
    Function * func_{};
    dominatorTree *dom{};
    // std::vector<AllocaInstruction*> alloca_insts;
    // std::map<Operand*, std::stack<Operand*>> old_new_stack;
    // std::vector<BinaryInstruction*> add_insts;
public:
    Mem2Reg(Unit* _unit) : unit(_unit){};
    void execute();
    void execute(Function* function);
    // // 寄存器重命名
    // void rename(Function* function);
    // void rename(BasicBlock *bb);
};

#endif