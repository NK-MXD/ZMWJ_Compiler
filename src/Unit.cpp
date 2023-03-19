#include <vector>
#include "Unit.h"
#include "SymbolTable.h"
#include "Type.h"

extern FILE* yyout;
void Unit::insertFunc(Function *f)
{
    func_list.push_back(f);
}

void Unit::removeFunc(Function *func)
{
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

void Unit::outputDecl() const
{
    //std::map<std::string, SymbolEntry *> a=globals->getTable();
    
}

void Unit::output() const
{
    outputDecl();
    for (auto &func : func_list)
        func->output();
    //printfunc
}

void Unit::genMachineCode(MachineUnit* munit) 
{
    AsmBuilder* builder = new AsmBuilder();
    builder->setUnit(munit);
    for (auto &func : func_list)
        func->genMachineCode(builder);
}

Unit::~Unit()
{
    for(auto &func:func_list)
        delete func;
}


