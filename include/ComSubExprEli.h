// #ifndef _COMSUBEXPRELI_H
// #define _COMSUBEXPRELI_H
// #include <set>
// #include "Instruction.h"
// #include "Unit.h"
// #include "Type.h"

// #define DEBUG_SWITCH_cse_ 0
// #if DEBUG_SWITCH_cse_
// #define printCse_(str) \
//     std::cout << str << "\n";
// #else
// #define printCse_(str) //
// #endif

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
// // 公共子表达式优化

// struct cmp_inst
// {
//     bool operator()(Instruction *a, Instruction *b) const
//     {
//         auto aops = a->getOpse();
//         auto bops = b->getOpse();
//         auto aop = a->getOp();
//         auto bop = b->getOp();
//         auto asizes = aops.size();
//         auto bsizes = bops.size();
//         printCse_("asizes = " << asizes << " bsizes = " << bsizes);
//         if (asizes != bsizes)
//         {
//             return asizes < bsizes;
//         }
//         if (a->getInstType() != b->getInstType())
//         {
//             return a->getInstType() < b->getInstType();
//         }
//         else if (a->getOpcode() != b->getOpcode())
//         {
//             return a->getOpcode() < b->getOpcode();
//         }
//         auto ait = aops.begin();
//         auto bit = bops.begin();
//         auto aopit = aop.begin()+1;
//         auto bopit = bop.begin()+1;
//         while (ait != aops.end())
//         {
//             auto a_se = *ait;
//             auto b_se = *bit;
//             printCse_("a: " << a_se->toStr() << " b: " << b_se->toStr());
//             if (a_se->toStr() != b_se->toStr())
//             {
//                 if (a_se->isConstant() && b_se->isConstant())
//                 {
//                     auto a_const = dynamic_cast<ConstantSymbolEntry *>(a_se);
//                     auto b_const = dynamic_cast<ConstantSymbolEntry *>(b_se);
//                     if (a_const->getType() == TypeSystem::intType &&
//                         b_const->getType() == TypeSystem::intType &&
//                         a_const->getIntValue() != b_const->getIntValue())
//                     {
//                         return a_const->getIntValue() < b_const->getIntValue();
//                     }
//                     else if (a_const->getType() == TypeSystem::floatType &&
//                              b_const->getType() == TypeSystem::intType &&
//                              a_const->getFloatValue() != b_const->getIntValue())
//                     {
//                         return a_const->getFloatValue() < b_const->getIntValue();
//                     }
//                     else if (a_const->getType() == TypeSystem::intType &&
//                              b_const->getType() == TypeSystem::floatType &&
//                              a_const->getIntValue() != b_const->getFloatValue())
//                     {
//                         return a_const->getIntValue() < b_const->getFloatValue();
//                     }
//                     else if (a_const->getType() == TypeSystem::floatType &&
//                              b_const->getType() == TypeSystem::floatType &&
//                              a_const->getFloatValue() != b_const->getFloatValue())
//                         return a_const->getFloatValue() < b_const->getFloatValue();
//                 }
//                 else
//                 {
//                     return a_se->toStr() < b_se->toStr();
//                 }
//             }
//             else
//             {
//                 if (a_se->getType()->isArray())
//                 {
//                     printCse_("In idx cmp: ");
//                     auto a_op = *aopit;
//                     auto b_op = *bopit;
//                     auto a_idx = a_op->getIdxSe();
//                     auto b_idx = b_op->getIdxSe();
//                     printCse_("a_idx = " << a_idx.size() << " b_idx = " << b_idx.size());
//                     if (a_idx.size() != b_idx.size())
//                     {
//                         return a_idx.size() < b_idx.size();
//                     }
//                     for (size_t i = 0; i < a_idx.size(); i++)
//                     {
//                         // printCse_("a idx: " << a_idx[i]->toStr() << " b idx : " << b_idx[i]->toStr());
//                         if (a_idx[i] != b_idx[i])
//                         {
//                             if (a_idx[i]->isConstant() && b_idx[i]->isConstant() &&
//                                 dynamic_cast<ConstantSymbolEntry *>(a_idx[i])->getIntValue() ==
//                                     dynamic_cast<ConstantSymbolEntry *>(b_idx[i])->getIntValue())
//                             {
//                             }
//                             else
//                             {
//                                 return a_idx[i]->toStr() < b_idx[i]->toStr();
//                             }
//                         }
//                     }
//                 }
//             }
//             ait++;
//             bit++;
//             aopit++;
//             bopit++;
//         }

//         return false;
//     }
// };

// class ComSubExprEli
// {
//     Unit *unit;
//     int cnt=0;
//     std::set<Instruction *, cmp_inst> U;
//     std::map<BasicBlock *, std::set<Instruction *, cmp_inst>> bb_in, bb_out, bb_gen, bb_kill;

// public:
//     ComSubExprEli(Unit *_unit) : unit(_unit){};
//     void execute();
//     static bool is_valid_expr(Instruction *inst);

//     void gen_local(Function *f);
//     void kill_local(Function *f);
//     void gen_global(Function *f);
//     void compute_global_inOut(Function *f){};
//     void compute_global(Function *f);
//     void compute_global_commonExpr(Function *f){};
//     void initial_map(Function *f);

// };

// #endif