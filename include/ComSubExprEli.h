#ifndef _COMSUBEXPRELI_H
#define _COMSUBEXPRELI_H
#include <set>
#include "Instruction.h"
#include "Unit.h"
#include "Type.h"

#define DEBUG_SWITCH_cse_ 0
#if DEBUG_SWITCH_cse_
#define printCse_(str) \
    std::cout << str << "\n";
#else
#define printCse_(str) //
#endif

// enum
// {
//     SUB,
//     ADD,
//     AND,
//     OR,
//     MUL,
//     DIV,
//     MOD
// };
// 公共子表达式优化

struct cmp_inst
{
    bool operator()(Instruction *a, Instruction *b) const;
};

class ComSubExprEli
{
    Unit *unit;
    int cnt=0;
    std::set<Instruction *, cmp_inst> U;
    std::map<BasicBlock *, std::set<Instruction *, cmp_inst>> bb_in, bb_out, bb_gen, bb_kill;

public:
    ComSubExprEli(Unit *_unit) : unit(_unit){};
    void execute();
    static bool is_valid_expr(Instruction *inst);

    void gen_local(Function *f);
    void kill_local(Function *f);
    void gen_global(Function *f);
    void compute_global_inOut(Function *f){};
    void compute_global(Function *f);
    void compute_global_commonExpr(Function *f){};
    void initial_map(Function *f);

};

#endif