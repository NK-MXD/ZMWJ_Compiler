#include "Function.h"
#include "Unit.h"
#include "Type.h"
#include <list>

extern FILE* yyout;

Function::Function(Unit *u, SymbolEntry *s)
{
    u->insertFunc(this);
    entry = new BasicBlock(this);
    sym_ptr = s;
    parent = u;
}

Function::~Function()
{
    // auto delete_list = block_list;
    // for (auto &i : delete_list)
    //     delete i;
    // parent->removeFunc(this);
}

// remove the basicblock bb from its block_list.
void Function::remove(BasicBlock *bb)
{
    block_list.erase(std::find(block_list.begin(), block_list.end(), bb));
}

void Function::output() const {
    FunctionType* funcType = dynamic_cast<FunctionType*>(sym_ptr->getType());
    Type* retType = funcType->getRetType();
    std::vector<SymbolEntry*> paramsSe = funcType->getParamsSe();
    if (!paramsSe.size())
        fprintf(yyout, "define %s %s() {\n", retType->toStr().c_str(),
                sym_ptr->toStr().c_str());
    else {
        fprintf(yyout, "define %s %s(", retType->toStr().c_str(),
                sym_ptr->toStr().c_str());
        for (long unsigned int i = 0; i < paramsSe.size(); i++) {
            if (i)
                fprintf(yyout, ", ");
            fprintf(yyout, "%s %s", paramsSe[i]->getType()->toStr().c_str(),
                    paramsSe[i]->toStr().c_str());
        }
        fprintf(yyout, ") {\n");
    }
    std::set<BasicBlock*> v;
    std::list<BasicBlock*> q;
    q.push_back(entry);
    v.insert(entry);

    while (!q.empty()) {
        auto bb = q.front();
        q.pop_front();
        bb->output();
        for (auto succ = bb->succ_begin(); succ != bb->succ_end(); succ++) {
            if (v.find(*succ) == v.end()) {
                v.insert(*succ);
                q.push_back(*succ);
            }
        }
    }
    fprintf(yyout, "}\n");
}

void Function::genMachineCode(AsmBuilder* builder) 
{
    auto cur_unit = builder->getUnit();
    auto cur_func = new MachineFunction(cur_unit, this->sym_ptr);
    builder->setFunction(cur_func);
    for(auto block : block_list)
    {
        block->genMachineCode(builder);
        this->map2[block] = builder->getBlock();
        //std::cout<<block->getNo()<<"\t"<<block<<"\t"<<this->map2[block]<<"\n";
    }
    // Add pred and succ for every block
    for(auto block : block_list)
    {
        auto mblock = this->map2[block];
        for (auto pred = block->pred_begin(); pred != block->pred_end(); pred++)
            mblock->addPred(this->map2[*pred]);
        for (auto succ = block->succ_begin(); succ != block->succ_end(); succ++)
            mblock->addSucc(this->map2[*succ]);
    }
    cur_func->setEntry(map2[entry]);
    cur_unit->InsertFunc(cur_func);
    // 0413m
    // 在所有机器代码都生成完毕的情况下进行phi指令的机器代码生成
    // fix: 有问题
    // for(auto block : block_list)
    // {
    //     for(auto i = block->begin(); i != block->end(); i = i->getNext()){
    //         if(!i->isPhi()){
    //             break;
    //         }
    //         // std::cout<<block->getNo()<<"生成phi指令: \n";
    //         auto phi = dynamic_cast<PhiInstruction*>(i);
    //         phi->genMachineCodeAfter(builder);
    //         // std::cout<<"生成结束 \n";
    //     }
    // }
}
