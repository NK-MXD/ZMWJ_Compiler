#ifndef __FUNCTION_H__
#define __FUNCTION_H__

#include <algorithm>
#include <iostream>
#include <map>
#include <set>
#include <vector>
#include "AsmBuilder.h"
#include "Ast.h"
#include "BasicBlock.h"
#include "SymbolTable.h"

class Unit;

class Function
{
    typedef std::vector<BasicBlock *>::iterator iterator;
    typedef std::vector<BasicBlock *>::reverse_iterator reverse_iterator;

private:
    std::vector<BasicBlock *> block_list;
    std::map<BasicBlock*, MachineBlock*> map2;
    SymbolEntry *sym_ptr;
    BasicBlock *entry;
    Unit *parent;

public:
    Function(Unit *, SymbolEntry *);
    ~Function();
    void insertBlock(BasicBlock *bb) { block_list.push_back(bb); };
    BasicBlock *getEntry() { return entry; };
    void remove(BasicBlock *bb);
    void output() const;
    std::vector<BasicBlock *> &getBlockList(){return block_list;};
    iterator begin() { return block_list.begin(); };
    iterator end() { return block_list.end(); };
    reverse_iterator rbegin() { return block_list.rbegin(); };
    reverse_iterator rend() { return block_list.rend(); };
    SymbolEntry *getSymPtr() { return sym_ptr; };
    void genMachineCode(AsmBuilder*);
    //将所有的block块置为false
    void clear_all_vis() {
        for (auto it = block_list.begin(); it != block_list.end(); it++) (*it)->setvisit(false);
    };
    MachineBlock* getMachineBlock(BasicBlock* b){ return map2[b];};
};

#endif
