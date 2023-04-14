#include "SSADestruction.h"
#include <vector>
using namespace std;

void SSADestruction::pass() {
    auto iter = unit->begin();
    while (iter != unit->end())
        pass(*iter++);
}
/// @brief 行不通
/// @param function 
void SSADestruction::pass(Function* function) {
    map<BasicBlock*, vector<Instruction*>> copyInss;
    vector<BasicBlock*> blocks(function->begin(), function->end());
    for (auto it = blocks.begin(); it != blocks.end(); it++) {
        //std::cout<<"a block\n";
        if (!(*it)->begin()->isPhi())
            continue;
        vector<Instruction*> phiremove;
        // for(auto inst = (*it)->begin(); inst != (*it)->end(); inst = inst->getNext())
        // {
        //     if(inst != NULL && inst->isPhi())
        //     {
        //         std::cout<<"Inst = "<<inst<<"\n";
        //         phiremove.push_back(inst);
        //     }
        // }
        // std::cout<<"phiremove.size() = "<<phiremove.size()<<"\n";
        for(auto inst = (*it)->begin(); inst != (*it)->end(); inst = inst->getNext()){
            if(!inst->isPhi()) break;
            //std::cout<<"I'm phi\n";
            auto phi = dynamic_cast<PhiInstruction*>(inst);
            std::map<BasicBlock*, Operand*> srcs = phi->getSrcs();
            auto temp = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
            auto tempop = new Operand(temp);
            for(auto src: srcs){
                BasicBlock* b = src.first;
                Operand* op = src.second;
                // new MovInstruction();
                // copyInss[b].push_back(new StoreInstruction(phi->getDef(), op));
                copyInss[b].push_back(new BinaryInstruction(BinaryInstruction::ADD, phi->getDef(), op,
                            new Operand(
                                new ConstantSymbolEntry(phi->getDef()->getType(), 0)))); 
            }   
            // new StoreInstruction(phi->getDef(), tempop, (*it));
            phiremove.push_back(phi);
            // (*it)->remove(phi);
        }
        //std::cout<<"phiremove.size() = "<<phiremove.size()<<"\n";
        for(auto phi: phiremove){
            //std::cout<<"removing phi = "<<phi<<"\n";
            (*it)->remove(phi);
        }
    }
    
    // 修改加入的顺序
    for (auto it2: copyInss) {
        auto block = it2.first;
        auto& ins = it2.second;
        // 插入phi指令在条件跳转之前
        auto endIns = block->rbegin();
        if(endIns->isUncond()){
            for (auto in : ins)
                block->insertBefore(in, endIns);
        }else if(endIns->isCond()){
            auto seIns = endIns->getPrev();
            for (auto in : ins)
                block->insertBefore(in, seIns);
        }
        else{
            for (auto in : ins)
                block->insertBefore(in, endIns);
        }
        
    }
   
}