#ifndef __BASIC_BLOCK_H__
#define __BASIC_BLOCK_H__
#include <vector>
#include <set>
#include "Instruction.h"
#include "AsmBuilder.h"

class Function;

class BasicBlock
{
    typedef std::vector<BasicBlock *>::iterator bb_iterator;

private:
    std::vector<BasicBlock *> pred, succ;
    Instruction *head;
    Function *parent;
    int no;
    // for phi::changeSrcBlock
    std::map<BasicBlock*, BasicBlock*> phiBlocks;
    bool mark;
    // 不含这个块内的store
    std::set<Operand*> stores;
    // 包含这个块内的store
    std::set<Operand*> stores1;
    // used for entry
    Instruction* lastAlloc = NULL;
    // 各种算法中用到，标记是否访问过，算法开头应把所有vis置false(调用IrFunc::clear_all_vis)
    bool visit; 

public:
    BasicBlock(Function *);
    ~BasicBlock();
    std::vector<BasicBlock *>&getPrevbb(){return pred;}
    void insertFront(Instruction *);
    void insertBack(Instruction *);
    void insertAfter(Instruction*, Instruction*);
    void insertBefore(Instruction *, Instruction *);
    void remove(Instruction *);
    bool empty() const { return head->getNext() == head;}
    void output() const;
    bool succEmpty() const { return succ.empty(); };
    bool predEmpty() const { return pred.empty(); };
    void addSucc(BasicBlock* bb, bool first=0);
    void removeSucc(BasicBlock *);
    void addPred(BasicBlock *);
    void removePred(BasicBlock *);
    int getNo() { return no; };
    Function *getParent() { return parent; };
    Instruction* begin() { return head->getNext();};
    Instruction* end() { return head;};
    Instruction* rbegin() { return head->getPrev();};
    Instruction* rend() { return head;};
    bb_iterator succ_begin() { return succ.begin(); };
    bb_iterator succ_end() { return succ.end(); };
    bb_iterator pred_begin() { return pred.begin(); };
    bb_iterator pred_end() { return pred.end(); };
    int getNumOfPred() const { return pred.size(); };
    int getNumOfSucc() const { return succ.size(); };
    void genMachineCode(AsmBuilder*);
    void deleteBack(int num = 1);
    void setMark() { mark = true; }
    void unsetMark() { mark = false; }
    bool isMark() { return mark; }
    bool isBefore(Instruction* a, Instruction* b);
    std::set<Operand*>& getStores() { return stores; }
    std::set<Operand*>& getStores1() { return stores1; }
    void addStore(Operand* ope) { stores.insert(ope); }
    void addStore1(Operand* ope) { stores1.insert(ope); }
    void removeStore(Operand* ope) { stores.erase(ope); }
    bool inStore(Operand* ope) { return stores.count(ope); }
    void replaceIns(Instruction* old, Instruction* new_);
    void addAlloc(Instruction* alloc);
    std::vector<BasicBlock *>& getSuccBlock() { return succ;};
    std::vector<BasicBlock *>& getPredBlock() { return pred;};
    void setvisit(bool v) { this->visit = v; };
    bool isVisited() const{ return visit;};
    void insertPhiInstruction(Operand* dst);
};

#endif