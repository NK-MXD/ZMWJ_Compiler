#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include <map>
#include <sstream>
#include <vector>
#include "AsmBuilder.h"
#include "Operand.h"


static std::string instName[]={
        "BINARY",
        "COND",
        "UNCOND",
        "RET",
        "LOAD",
        "STORE",
        "CMP",
        "ALLOCA",
        "CALL",
        "ZEXT",
        "XOR",
        "GEP",
        "PHI",
        "FPTOSI",  // floating point to signed int
        "SITOFP",  // signed int to floating point
        "BITCAST",
        "SHL",
        "ASHR"
    };

class BasicBlock;
class Operand;

class Instruction {
   public:
    std::string getInstName(){return instName[instType];}
    void push_back_opse(SymbolEntry* se){op_se.emplace_back(se);}
    virtual void replaceUse(Operand* old, Operand* new_) {}
    virtual void replaceDef(Operand* new_) {}
    Instruction(unsigned instType, BasicBlock* insert_bb = nullptr);
    virtual ~Instruction();
    BasicBlock* getParent();
    unsigned getOpcode() const {return opcode; };
    unsigned getInstType() const {return instType; };
    bool isUncond() const { return instType == UNCOND; };
    bool isCond() const { return instType == COND; };
    bool isAlloc() const { return instType == ALLOCA; };
    bool isRet() const { return instType == RET; };
    bool isCall() const { return instType == CALL; }
    bool isStore() const { return instType == STORE; }
    bool isZext() const { return instType == ZEXT; }
    bool isPhi() const { return instType == PHI; };
    bool isBin() const { return instType == BINARY; };
    bool isLoad() const { return instType == LOAD; };
    bool isCmp() const { return instType == CMP; };
    bool isGep() const { return instType == GEP; };
    bool isXor() const { return instType == XOR; };
    bool isBitcast() const { return instType == BITCAST; };
    bool isShl() const { return instType == SHL; };
    bool isVoid() { return (instType == RET) || (instType == COND) || 
                    (instType == UNCOND) || (instType == STORE) || 
                    (instType == CALL); };
    void setParent(BasicBlock*);
    void setNext(Instruction*);
    void setPrev(Instruction*);
    Instruction* getNext();
    Instruction* getPrev();
    std::vector<Operand *> &getOp(){return operands;};
    std::vector<SymbolEntry *> &getOpse(){return op_se;};
    virtual void output() const = 0;
    MachineOperand* genMachineOperand(Operand*);
    MachineOperand* genMachineFloatOperand(Operand*);
    MachineOperand* genMachineReg(int reg);
    MachineOperand* genMachineFReg(int freg);
    MachineOperand* genMachineVReg(bool fpu = false);
    MachineOperand* genMachineImm(int val);
    MachineOperand* genMachineLabel(int block_no);
    virtual void genMachineCode(AsmBuilder*) = 0;
    // Z0323
    Operand* getDef() { return operands[0]; }
    // void replaceDef(Operand* new_op) {
    //     if(!operands.empty()){
    //         operands[0]->removeDef(this);
    //         operands[0] = new_op;
    //         new_op->setDef(this);
    //     }
    // }
    virtual std::vector<Operand*> getUse() { return std::vector<Operand*>(); }

   protected:
    unsigned instType;
    unsigned opcode;
    Instruction* prev;
    Instruction* next;
    BasicBlock* parent;
    std::vector<Operand*> operands;
    std::vector<SymbolEntry *> op_se;
    enum {
        BINARY,
        COND,
        UNCOND,
        RET,
        LOAD,
        STORE,
        CMP,
        ALLOCA,
        CALL,
        ZEXT,
        XOR,
        GEP,
        PHI,
        FPTOSI,  // floating point to signed int
        SITOFP,  // signed int to floating point
        BITCAST,
        SHL,
        ASHR,
    };
};

// meaningless instruction, used as the head node of the instruction list.
class DummyInstruction : public Instruction {
   public:
    DummyInstruction() : Instruction(-1, nullptr){};
    void output() const {};
    void genMachineCode(AsmBuilder*){};
    void replaceUse(Operand* old, Operand* new_) {};
};

class AllocaInstruction : public Instruction {
   public:
    AllocaInstruction(Operand* dst,
                      SymbolEntry* se,
                      BasicBlock* insert_bb = nullptr);
    ~AllocaInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    void replaceDef(Operand* new_);
    Operand* getDef() { return operands[0]; }
    // bool isArray() { return se->getType()->isArray();}
    SymbolEntry* getSymbolEntry() { return se; };
    void replaceUse(Operand* old, Operand* new_) {};

   private:
    SymbolEntry* se;
};

class LoadInstruction : public Instruction {
private:
    bool loadchange=0;
   public:
    LoadInstruction(Operand* dst,
                    Operand* src_addr,
                    BasicBlock* insert_bb = nullptr);
    ~LoadInstruction();
    bool loadChange(){return loadchange;}
    void setLoadChange(){loadchange=1;}
    void output() const;
    void genMachineCode(AsmBuilder*);
    Operand* getDef() { return operands[0]; }
    void replaceUse(Operand* old, Operand* new_);
    void replaceDef(Operand* new_);
    Operand* getAddr(){ return this->operands[1];};
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
};

class StoreInstruction : public Instruction {
   public:
    StoreInstruction(Operand* dst_addr,
                     Operand* src,
                     BasicBlock* insert_bb = nullptr);
    ~StoreInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    Operand* getSrc(){ return this->operands[1];};
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[0], operands[1]});
    }
};

class BinaryInstruction : public Instruction {
   public:
    BinaryInstruction(unsigned opcode,
                      Operand* dst,
                      Operand* src1,
                      Operand* src2,
                      BasicBlock* insert_bb = nullptr);
    ~BinaryInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum { SUB, ADD, AND, OR, MUL, DIV, MOD };
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1], operands[2]});
    }
    Operand* getDef() { return operands[0]; }
    void replaceUse(Operand* old, Operand* new_);
    void replaceDef(Operand* new_);
};

class CmpInstruction : public Instruction {
   public:
    CmpInstruction(unsigned opcode,
                   Operand* dst,
                   Operand* src1,
                   Operand* src2,
                   BasicBlock* insert_bb = nullptr);
    ~CmpInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum { E, NE, L, LE, G, GE };
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1], operands[2]});
    }
    Operand* getDef() { return operands[0]; }
    void replaceUse(Operand* old, Operand* new_);
    void replaceDef(Operand* new_);
};

// unconditional branch
class UncondBrInstruction : public Instruction {
   public:
    UncondBrInstruction(BasicBlock*, BasicBlock* insert_bb = nullptr);
    void output() const;
    void setBranch(BasicBlock*);
    BasicBlock* getBranch();
    void genMachineCode(AsmBuilder*);
    void replaceUse(Operand* old, Operand* new_) {};

   protected:
    BasicBlock* branch;
};

// conditional branch
class CondBrInstruction : public Instruction {
   public:
    CondBrInstruction(BasicBlock*,
                      BasicBlock*,
                      Operand*,
                      BasicBlock* insert_bb = nullptr);
    ~CondBrInstruction();
    void output() const;
    void setTrueBranch(BasicBlock*);
    BasicBlock* getTrueBranch();
    void setFalseBranch(BasicBlock*);
    BasicBlock* getFalseBranch();
    void genMachineCode(AsmBuilder*);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[0]});
    }
    void replaceUse(Operand* old, Operand* new_);

   protected:
    BasicBlock* true_branch;
    BasicBlock* false_branch;
};

class RetInstruction : public Instruction {
   public:
    RetInstruction(Operand* src, BasicBlock* insert_bb = nullptr);
    ~RetInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        if (operands.size())
            return std::vector<Operand*>({operands[0]});
        return std::vector<Operand*>();
    }
    void replaceDef(Operand* new_);
};

class CallInstruction : public Instruction {
   private:
    SymbolEntry* func;
    Operand* dst;

   public:
    CallInstruction(Operand* dst,
                    SymbolEntry* func,
                    std::vector<Operand*> params,
                    BasicBlock* insert_bb = nullptr);
    ~CallInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    Operand* getDef() { return operands[0]; }
    void replaceDef(Operand* new_);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        std::vector<Operand*> vec;
        for (auto it = operands.begin() + 1; it != operands.end(); it++)
            vec.push_back(*it);
        return vec;
    }
};

class FptosiInstruction : public Instruction {
   private:
    Operand* dst;
    Operand* src;

   public:
    FptosiInstruction(Operand* dst,
                      Operand* src,
                      BasicBlock* insert_bb = nullptr);
    ~FptosiInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    // void setDef(Operand* def) {
    //     operands[0] = def;
    //     dst = def;
    //     def->setDef(this);
    // }
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
    Operand* getDef() { return operands[0]; }
    void replaceUse(Operand* old, Operand* new_);
    void replaceDef(Operand* new_);

};

class SitofpInstruction : public Instruction {
   private:
    Operand* dst;
    Operand* src;

   public:
    SitofpInstruction(Operand* dst,
                      Operand* src,
                      BasicBlock* insert_bb = nullptr);
    ~SitofpInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    // void setDef(Operand* def) {
    //     operands[0] = def;
    //     dst = def;
    //     def->setDef(this);
    // }
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
    Operand* getDef() { return operands[0]; }
    void replaceUse(Operand* old, Operand* new_);
    void replaceDef(Operand* new_);

};

class ZextInstruction : public Instruction {
   public:
    ZextInstruction(Operand* dst,
                    Operand* src,
                    BasicBlock* insert_bb = nullptr);
    ~ZextInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    Operand* getDef() { return operands[0]; }
    void replaceDef(Operand* new_);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
};

class XorInstruction : public Instruction {
   public:
    XorInstruction(Operand* dst, Operand* src, BasicBlock* insert_bb = nullptr);
    ~XorInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    Operand* getDef() { return operands[0]; }
    void replaceDef(Operand* new_);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
};

class GepInstruction : public Instruction {
   private:
    bool paramFirst;
    bool first;
    bool last;
    Operand* init;
    int off;
    // 由于数组初始化使用+4 部分未生成汇编 值编号会重用因此标记
    bool noAsm;

   public:
    GepInstruction(Operand* dst,
                   Operand* arr,
                   Operand* idx,
                   BasicBlock* insert_bb = nullptr,
                   bool paramFirst = false);
    ~GepInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    void setInit(Operand* init, int off = 0) {
        this->init = init;
        this->off = off;
    };
    void setFirst() { first = true; };
    void setLast() { last = true; };
    Operand* getInit() const { return init; };
    void setInit(Operand* init) { this->init = init; };
    bool hasNoAsm() { return noAsm; }
    Operand* getDef() { return operands[0]; }
    void replaceDef(Operand* new_);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1], operands[2]});
    }
};
class BitcastInstruction : public Instruction {
   private:
    Operand* dst;
    Operand* src;
    bool flag;

   public:
    BitcastInstruction(Operand* dst,
                       Operand* src,
                       BasicBlock* insert_bb = nullptr);
    ~BitcastInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    std::vector<Operand*> getUse() {
        return std::vector<Operand*>({operands[1]});
    }
    Operand* getDef() { return operands[0]; }
    // void setDef(Operand* def) {
    //     operands[0] = def;
    //     dst = def;
    //     def->setDef(this);
    // }
    void setFlag() { flag = true; }
    bool getFlag() { return flag; }
    void replaceUse(Operand* old, Operand* new_);
};


class PhiInstruction : public Instruction {
   private:
    Operand* originDef;
    Operand* dst;
    std::map<BasicBlock*, Operand*> srcs;

   public:
    PhiInstruction(Operand* dst, BasicBlock* insert_bb = nullptr);
    ~PhiInstruction();
    void output() const;
    Operand* getDef() {return operands[0];};
    void genMachineCode(AsmBuilder* builder){};
    void genMachineCodeAfter(AsmBuilder* builder);
    void replaceUse(Operand* old, Operand* new_);
    std::vector<Operand*> getUse() {
        std::vector<Operand*> ret;
        for (auto ope : operands)
            if (ope != operands[0])
                ret.emplace_back(ope);
        return ret;
    }
    void replaceDef(Operand* new_);
    Operand* getOriginDef() { return originDef; }
    void addSrc(BasicBlock* block, Operand* src);
    Operand* getSrc(BasicBlock* block) {
        if (srcs.find(block) != srcs.end())
            return srcs[block];
        return nullptr;
    };
    std::map<BasicBlock*, Operand*>& getSrcs(){return srcs;};
};
#endif