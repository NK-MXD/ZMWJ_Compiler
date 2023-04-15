#include "SSADestruction.h"
#include <vector>
using namespace std;

// 0330m
void SSADestruction::pass() {
    std::vector<Function*> func = unit->get_functions();
    for(auto f = func.begin(); f != func.end(); f++){
        pass(*f);
    }
    // std::cout<<"调整phi顺序"<<"\n";
}
/// @brief 将phi指令转化为add指令
/// @param function 
// fix: 或者说只要确保phi函数和对应的转化指令不在一个基本块当中就可以了
void SSADestruction::pass(Function* function) {
    // std::cout<<"开始phi lower\n";
    map<BasicBlock*, vector<Instruction*>> copyInss;
    vector<BasicBlock*> blocks(function->begin(), function->end());
    // for (auto it = function->begin(); it != function->end(); it++) {
    for (auto it = blocks.begin(); it != blocks.end(); it++) {
        // std::cout<<"block:"<<(*it)->getNo()<<std::endl;
        if (!(*it)->begin()->isPhi())
            continue;
        copyInss.clear();
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
            // auto tempop = new Operand(temp);
            // // fix: 判断phi指令的src块是否和phi指令为同一个块
            // // 这会导致所有的phi指令都会建一个新的块
            // for(auto src: srcs){
            //     if(src.first == (*it)){
            //         // 插入一个新块
            //         auto newBlock = new BasicBlock(function);
            //         src.first->addSucc(newBlock);
            //         // 修改之前的跳转指令
            //         auto endIns = (*it)->rbegin();
            //         if(endIns->isCond()){
            //             auto in = dynamic_cast<CondBrInstruction*>(endIns);
            //             in->setTrueBranch(newBlock);
            //         }
            //         new UncondBrInstruction((*it), newBlock);
            //         srcs.insert({newBlock, src.second});
            //         srcs.erase(src.first);
            //     }
            // }
            for(auto src: srcs){
                BasicBlock* b = src.first;
                Operand* op = src.second;
                // new MovInstruction();
                // copyInss[b].push_back(new StoreInstruction(phi->getDef(), op));
                // fix: 建立use-def链
                auto addin = new BinaryInstruction(BinaryInstruction::ADD, phi->getDef(), op,
                                new Operand(
                                    new ConstantSymbolEntry(phi->getDef()->getType(), 0)));
                copyInss[b].push_back(addin); 
                op->addUse(addin);
                phi->getDef()->addUse(addin);
                // 需要注意的是如果phi指令remove, 对应的def变为第一条add指令
            }   
            // new StoreInstruction(phi->getDef(), tempop, (*it));
            phiremove.push_back(phi);
            // (*it)->remove(phi);
        }
        // fix: 如果存在和phi指令所在块同样的替换块的话
        // fix: 需要找到一个块内的所有指令而非整个函数的
        if(copyInss.count((*it)) != 0 ){
            // std::cout<<"加入关键边"<<std::endl;
            vector<Instruction*> ins = copyInss[(*it)];
            // 插入一个新块
            auto newBlock = new BasicBlock(function);
            (*it)->removeSucc((*it));
            (*it)->removePred((*it));
            (*it)->addPred(newBlock);
            (*it)->addSucc(newBlock);
            newBlock->addSucc(*it);
            newBlock->addPred(*it);
            // 修改之前的跳转指令
            auto endIns = (*it)->rbegin();
            if(endIns->isCond()){
                auto in = dynamic_cast<CondBrInstruction*>(endIns);
                in->setTrueBranch(newBlock);
            }
            new UncondBrInstruction((*it), newBlock);
            // 修改插入的add指令
            for(auto i: ins){
                copyInss[newBlock].push_back(i);
            }
        }
        copyInss.erase((*it));

        //std::cout<<"phiremove.size() = "<<phiremove.size()<<"\n";
        for(auto phi: phiremove){
            //std::cout<<"removing phi = "<<phi<<"\n";
            // phi->getDef()->setDef(phi->getDef()->getUse()[0]);
            (*it)->remove(phi);
        }

        // std::cout<<"插入phi替换指令"<<std::endl;

        // 插入phi指令替换指令
        for (auto it2: copyInss) {
            auto block = it2.first;
            auto& ins = it2.second;
            // 插入phi指令在条件跳转之前
            auto endIns = block->rbegin();

            if(endIns->isUncond()){
                for (auto in : ins)
                    block->insertBefore(in, endIns);
            }
            else if(endIns->isCond()){
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
    
}