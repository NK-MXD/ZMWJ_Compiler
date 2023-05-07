#ifndef _SCCP_H
#define _SCCP_H
#include <stack>
#include <list>
#include <algorithm>
#include <unordered_map>
#include <vector>
#include <queue>
#include <set>
#include <map>
#include <memory>
#include "Unit.h"
#include "Instruction.h"
#include "Type.h"
#include "BasicBlock.h"
#include "SymbolTable.h"
using namespace std;


// 以下代码参考HammerWang的实现方式
// /*
// * 常量传播格的值类型
// */
// enum class ConstLatValue :int 
// {
//     Uncertain = 0,  //未确定的
//     Const = 1,      //某常数
//     Var = 2         //变量
// };

// /*
// * 常量传播格
// */
// struct ConstLat
// {
//     union {
//         int int_value{ 0 };                             //常数值-整数
//         float float_value;                              //常数值-浮点数
//     };
//     double value;
//     ConstLatValue lat_value{ ConstLatValue::Uncertain };  //格元素类型
//     Type* basic_type;
//     double basic_value()const
//     {
//         if (basic_type == TypeSystem::intType)
//             return (int)value;
//         return (float)value;
//     };
//     ConstLat() {};
//     ConstLat(ConstLatValue lat_value_, Type* basic_type_) :lat_value(lat_value_), basic_type(basic_type_) {};
//     // 格的相等运算
//     bool operator ==(const ConstLat& rhs)const
//     {
//         if (lat_value != rhs.lat_value)
//             return false;
//         if (lat_value == ConstLatValue::Const) {
//             if (basic_type == TypeSystem::intType)
//                 return int_value == rhs.int_value;
//             else return float_value == rhs.float_value;
//         }
//         return true;
//     };
//     bool operator !=(const ConstLat& rhs)const
//     {
//         return !(*this == rhs);
//     };
//     // 格的二元运算
//     static ConstLat lat_eval_binaryop(const int opcode, const ConstLat& lhs, const ConstLat& rhs);
//     // 格的一元运算
//     static ConstLat lat_eval_unaryop(const int opcode, const ConstLat& oprand);
//     //格的交运算
//     void intersect_with(const ConstLat& rhs);
// };

// /*
// * 从指令到指令的边，用于记录虚拟流图边（虚拟流图假设每条指令独立成一个block）和SSA边（定义指向所有引用）
// */
// struct InstrEdge
// {
//     int from{ false };          //有向边起点
//     int to{ false };            //有向边终点
//     bool is_true_edge{ false }; //仅对条件跳转指令有效，表示此边为True边还是False边
//     bool exsc_flag{ false };    //是否可执行
//     InstrEdge() {};
//     InstrEdge(int from_, int to_, bool is_true_edge_ = false) :from(from_), to(to_), is_true_edge(is_true_edge_) {};
// };

// /*
// *  稀疏条件常量传播 
// *  SSA形式IR
// */
// class SparseConditionalConstantPropagation{
// private:
//     Unit *unit;
//     int m_instr_count; // 指令的个数
//     int m_sym_count; // SSA符号的个数
//     vector<list<InstrEdge>> m_ssa_edge_list; // SSA边表
//     vector<list<InstrEdge>> m_cfg_edge_list; // CFG边表
//     vector<vector<InstrEdge>> m_anti_cfg_edge_list; // 反向CFG边表
//     queue<InstrEdge*> m_ssa_work_list; // SSA工作边表
//     queue<InstrEdge*> m_cfg_work_list; // CFG工作边表
//     vector<int> m_sym_to_def_instr; //SSA符号到其定值指令编号的映射
//     vector<Instruction*> m_i_instr; //指令编号到指令(即虚拟BB)的映射
//     vector<BasicBlock*> m_instr_to_block; //指令编号到真实BasicBlock的映射
//     vector<ConstLat> m_lat_cell; //通过symbol的index(存在tag中)来索引格元素
//     bool is_ssa_var(Operand* op); // 存疑: 使用Operand
//     bool has_lvalue(const Instruction& instr); // 存疑
//     vector<SymbolEntry*> rvalue_list(const Instruction& instr); // 存疑

//     //1 初始化指令、符号的编号，并维护符号到定值指令的映射。
//     void initialize_instr_index(Function* f);
//     //2 构建最小流图结构（每条指令一个BB)，CFG、SSA工作边表，lat cell的初始值。
//     void initialize_working_environment();
//     //2-1 basic block级的初始化,index表示指令编号
//     void initialize_block(BasicBlock* block);
//     //2-1-1 获取指定block中第一条指令的编号（如果为空，继续从后续block里找）。 
//     int get_next_instr_index(BasicBlock* block);
//     //3-1 phi函数上常量传播
//     void visit_phi(Instruction* instr); 
//     //3-2 其他指令上常量传播
//     void visit_instr(Instruction* instr);
//     //3-3 返回以to为终点，并且可执行的边数
//     int edge_count(int to);    
//     //3-4 使用格值执行指令
//     ConstLat lat_eval(Instruction* instr); 
//     //3-4-1 获得符号的格值
//     ConstLat get_lat_val(SymbolEntry* sym); 
//     //4 指令重写
//     void rewrite_instructions();

// public:
//     SparseConditionalConstantPropagation(Unit* _unit) : unit(_unit){};
//     void execute();
// };

class InstructionVisitor;

static inline double get_const_value(ConstantSymbolEntry* value) {
    return value->getValue();
}

struct ValueStatus {
    enum Status { BOT = 0, CONST, TOP };
    Status status;
    ConstantSymbolEntry* value;
    // 初始化
    ValueStatus(){};
    ValueStatus(Status status_, ConstantSymbolEntry* value_):status(status_), value(value_){};
    // 这里需要设置好value的type类型
    [[nodiscard]] bool is_bot() const { return status == BOT; }// 格值不确定
    [[nodiscard]] bool is_const() const { return status == CONST; } // 格值为常量
    [[nodiscard]] bool is_top() const { return status == TOP; } // 格值未初始化
    // 格的交运算, 求两个格的最大下界, 即赋值较小的格状态
    void operator^=(ValueStatus &b) {
        if (b.status < status) {
            status = b.status;
            value = b.value;
        } else if (status == b.status && status == CONST) {
            double x,y;
            if(value->getType()->isInt()){
                x = (int)get_const_value(value);
            }else{
                x = (float)get_const_value(value);
            }
            if(b.value->getType()->isInt()){
                y = (int)get_const_value(b.value);
            }else{
                y = (float)get_const_value(b.value);
            }
            if (x != y) {
                status = BOT;
                value = nullptr;
            }
        }
    }
    // 格的不相等判定
    // 不是const的只需要判断是否state相等即可
    // 是const的还需要判断const值是否相等
    bool operator!=(ValueStatus &b) const {
        if (status != b.status)
            return true;
        if (status != CONST)
            return false;
        double x,y;
        if(value->getType()->isInt()){
            x = (int)get_const_value(value);
        }else{
            x = (float)get_const_value(value);
        }
        if(b.value->getType()->isInt()){
            y = (int)get_const_value(b.value);
        }else{
            y = (float)get_const_value(b.value);
        }
        return x != y;
    }
};

// 设置Operand和ValueState的对应关系
class ValueMap {
  public:
    void clear() { value_map.clear(); }
    ValueStatus get(Operand *key) {
        //递归基情况, 如果该key为常量, 那么就可以直接设置值
        if(value_map.count(key) == 0 && key->isConst()){
            auto constant = dynamic_cast<ConstantSymbolEntry*>(key->getSymbolEntry());
            set(key, ValueStatus(ValueStatus::CONST, constant));
        }
        return value_map[key];
    }
    void set(Operand *key, ValueStatus value) { value_map[key] = value; }

  private:
    std::map<Operand*, ValueStatus> value_map;
};

class SCCP{
  public:
    explicit SCCP(Unit* _unit) : unit(_unit){
        instruction_visitor = std::make_unique<InstructionVisitor>(*this);
        // instruction_visitor = new InstructionVisitor(*this);
    };
    void execute();
    ConstantSymbolEntry *constFold(Instruction *inst);

    std::set<std::pair<BasicBlock *, BasicBlock *>> &get_marked() {
        return marked;
    }
    ValueMap &get_value_map() { return value_map; }
    std::vector<std::pair<BasicBlock *, BasicBlock *>> &get_cfg_worklist() {
        return cfg_worklist;
    }
    std::vector<Instruction *> &get_ssa_worklist() { return ssa_worklist; }

  private:
    void sccp(Function *f);
    ValueStatus getMapped(Operand *key) { return value_map.get(key); }
    ConstantSymbolEntry* constFold(CmpInstruction *inst, ConstantSymbolEntry *v1, ConstantSymbolEntry *v2);
    ConstantSymbolEntry* constFold(BinaryInstruction *inst, ConstantSymbolEntry *v1, ConstantSymbolEntry *v2);
    // 单目运算指令
    ConstantSymbolEntry* constFold(Instruction *inst, ConstantSymbolEntry *v);
    void replaceConstant(Function *f);
    // 修改cond跳转块
    static void condBrToJmp(Instruction *inst, BasicBlock *jmp_bb,
                            BasicBlock *invalid_bb);

    ValueMap value_map;
    std::set<std::pair<BasicBlock *, BasicBlock *>> marked;
    std::vector<std::pair<BasicBlock *, BasicBlock *>> cfg_worklist;
    std::vector<Instruction *> ssa_worklist;
    // 智能指针
    std::unique_ptr<InstructionVisitor> instruction_visitor;
    // InstructionVisitor* instruction_visitor;
    Unit* unit;
};

class InstructionVisitor {
  public:
    explicit InstructionVisitor(SCCP &sccp_pass)
        : sccp(sccp_pass), value_map(sccp_pass.get_value_map()),
          cfg_worklist(sccp_pass.get_cfg_worklist()),
          ssa_worklist(sccp_pass.get_ssa_worklist()){}
    void visit(Instruction *inst);

  private:
    //遍历phi指令
    void visit_phi(PhiInstruction *inst);
    //遍历cond指令
    void visit_br(CondBrInstruction *inst);
    //常量展开指令
    void visit_foldable(Instruction *inst);

    SCCP &sccp;
    ValueMap &value_map;
    //cfg边
    std::vector<std::pair<BasicBlock *, BasicBlock *>> &cfg_worklist;
    std::vector<Instruction *> &ssa_worklist;

    Instruction* inst_;
    BasicBlock* bb;
    ValueStatus prev_status;
    //游走状态指针
    ValueStatus cur_status;
};

#endif