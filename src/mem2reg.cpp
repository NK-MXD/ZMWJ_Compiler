#include"mem2reg.h"

#define DEBUG_SWITCH_M2R 0
#if DEBUG_SWITCH_M2R
#define printmr(str) \
    std::cout << str << "\n";
#else
#define printmr(str) //
#endif

void Mem2Reg::execute() {
    this->dom = new dominatorTree(unit);
    this->dom->execute();
    // auto func = unit->begin();
    // while(*func){
    //     execute(*func++);
    // }
    std::vector<Function*> func = unit->get_functions();
    for(auto f = func.begin(); f != func.end(); f++){
        printmr("=========start func mem2reg=========");
        printmr((*f)->getSymPtr()->toStr());
        execute(*f);
        printmr("=========end func mem2reg=========");
    }
    printmr("==========end all=========");
}

// 0329m fix: 需要再次构建前驱后继关系
// 0408m fix: 需要再次构建def-use链
void Mem2Reg::execute(Function*f) {
    std::unordered_map<AllocaInstruction*, int> alloca_ids;  // 把alloca映射到整数，后面有好几个vector用这个做下标
    std::vector<AllocaInstruction*> allocas;

    printmr("=========找到所有的alloca指令=========");
    // 找到所有的alloca指令
    for (auto it = f->begin(); it != f->end(); it++) {
        for (auto i = (*it)->begin(); i != (*it)->end(); i = i->getNext()) {
            if (i->isAlloc()) {
                // 这里有一些判断条件
                // if (a->sym->dims.empty()) {  // 局部int变量
                // 先将局部变量放到这里
                auto se = dynamic_cast<IdentifierSymbolEntry*>(dynamic_cast<AllocaInstruction*>(i)->getSymbolEntry());
                if(se->isLocal() && (se->getType()->isInt()||se->getType()->isFloat())){
                    alloca_ids.insert({dynamic_cast<AllocaInstruction*>(i), (int)alloca_ids.size()});
                    allocas.push_back(dynamic_cast<AllocaInstruction*>(i));//se
                    // std::cout<<i->getDef()->toStr()<<"\n";
                }
                // std::cout<<dynamic_cast<AllocaInstruction*>(i)<<"\n";
                // 插入的是对应的alloca指令和id
                // std::cout<<i->getDef()->toStr()<<"\n";
            }
        }
    }
    printmr("allocas的大小: "<< allocas.size());
   
    printmr("=========找到所有的store指令=========");
    // 找到所有的store指令
    std::vector<std::vector<BasicBlock *>> alloca_defs(alloca_ids.size());
    for (auto it = f->begin(); it != f->end(); it++) {
        BasicBlock* bb = (*it);
        for (auto i = bb->begin(); i != bb->end(); i = i->getNext()) {
            if (i->isStore()) {
                // 这里需要在alloca_ids中找到store指令对应的alloca指令
                // fix: done 找一下定义dynamic_cast<StoreInstruction*>(i)->getSrc()的指令即可
                // Instruction* storealloc = ;
                // std::cout<<dynamic_cast<StoreInstruction*>(i)->getSrc()->toStr()<<"\n";
                // std::cout<<dynamic_cast<StoreInstruction*>(i)->getDef()->getDef()<<"\n";
                auto it = alloca_ids.find(dynamic_cast<AllocaInstruction*>(dynamic_cast<StoreInstruction*>(i)->getAddr()->getDef())); //addr
                if (it != alloca_ids.end()) {
                    alloca_defs[it->second].push_back(bb);//将每一个alloca对应的块插入
                }//alloca_defs存储的是每一个alloca变量定义的块
            }
        }
    }
    printmr("=========mem2reg算法阶段1：放置phi节点=========");

    // mem2reg算法阶段1：放置phi节点
    // worklist定义在循环外面，只是为了减少申请内存的次数
    std::vector<BasicBlock *> worklist;       // 用stack还是queue在这里没有本质区别
    std::unordered_map<PhiInstruction* , int> phis;  // 记录加入的phi属于的alloca的id

    for (int id = 0; id < allocas.size(); id++) {
        f->clear_all_vis();//对于一个新的alloca指令清空所有块的visit值, 标记所有块都未被访问过
        for (BasicBlock *bb : alloca_defs[id]) {
            worklist.push_back(bb);
        }
        //将所有alloca变量定义的块加入到工作集当中
        while (!worklist.empty()) {
            BasicBlock *x = worklist.back();
            worklist.pop_back();
            // 这里的处理有点粗糙, 暂时先这样
            // fix: done
            // alloca 变量
            auto se = allocas[id]->getSymbolEntry();
            // phi 指令需要公共的变量作为最后值的存放位置
            Operand* temp =new Operand(new TemporarySymbolEntry(se->getType(),
                                                SymbolTable::getLabel()));
            //遍历定义了alloca变量的块的支配边界
            for (auto y : dom->getDominanceFrontier(x)) {
                if (!y->isVisited()) {
                    y->setvisit(true);
                    // 这里插入的是i32变量
                    // SymbolEntry* temp = new TemporarySymbolEntry(
                    //     TypeSystem::intType, SymbolTable::getLabel());
                    // Operand* dst = new Operand(temp);
                    PhiInstruction* inst = new PhiInstruction(temp);
                    // if(y->begin()->isPhi()){
                    //     std::cout<<inst->getDef()->toStr()<<"\t"
                    //         <<y->begin()->getDef()->toStr()<<"\t";
                    //     std::cout<<defs[allocas[phis[dynamic_cast<PhiInstruction*>(y->begin())]]]<<"\t"<<defs[allocas[id]]<<"\n";
                    //     if(defs[allocas[phis[dynamic_cast<PhiInstruction*>(y->begin())]]] < defs[allocas[id]]){
                    //         y->insertAfter(inst, y->begin());
                            
                    //     }else{
                            
                    //         y->insertFront(inst);
                    //     }
                    // }else{
                    //     y->insertFront(inst);
                    // }
                    //! 不可行
                    y->insertFront(inst);
                    phis.insert({inst, id});//插入alloca的id与生成的phi指令
                    // std::cout<<"插入phi"<<inst->getDef()->toStr()<<"\t"<<y->getNo()<<"\n";
                    worklist.push_back(y);
                    //其中一种lower phi的解决策略是: 如果phi指令之间有依赖关系就不进行替换
                }
            }
        }
    } 
    printmr("=========mem2reg算法阶段2：变量重命名=========");
    // mem2reg算法阶段2：变量重命名，即删除Load，把对Load结果的引用换成对寄存器的引用，把Store改成寄存器赋值
    std::vector<std::pair<BasicBlock *, std::vector<Operand* >>> worklist2{
      {f->getEntry(), std::vector<Operand* >(alloca_ids.size(), new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)))}};// 这里暂时处理为nullptr, 之后将其进行更改为对应的未定义类
    std::map<BasicBlock*, Operand*> srcs;
    // std::map<Instruction*, std::map<BasicBlock*, Operand*>> 
    f->clear_all_vis();
    while (!worklist2.empty()) {
        BasicBlock *bb = worklist2.back().first;
        std::vector<Operand* > values = std::move(worklist2.back().second);
        worklist2.pop_back();
        if (!bb->isVisited()) {
            bb->setvisit(true);
            for (auto i = bb->begin(); i != bb->end();) {
                // Instruction *next = i->getNext();
                // 如果是alloca指令, 直接移除
                if (i->isAlloc()) {
                    if(find(allocas.begin(), allocas.end(), dynamic_cast<AllocaInstruction*>(i)) != allocas.end()){
                        // 需要先将指令的前驱后继关系都取消
                        // 但是store和load指令是根据对应的def变量找到的alloca指令
                        bb->remove(i);
                        // delete static_cast<AllocaInstruction *>(i);
                    }

                } else if (i->isStore()) {
                    auto x = dynamic_cast<StoreInstruction* >(i);
                    // fix: done
                    // std::cout<<dynamic_cast<StoreInstruction*>(i)->getDef()->getDef()<<"\n";
                    auto it = alloca_ids.find(dynamic_cast<AllocaInstruction*>(dynamic_cast<StoreInstruction*>(i)->getAddr()->getDef())); //addr
                    if (it != alloca_ids.end()) {
                        // 将对应的alloca的变量/地址, 替换为store的新变量/地址
                        // fix: done
                        // std::cout<<x->getSrc()->toStr()<<"\n";
                        values[it->second] = x->getSrc();
                        x->getDef()->removeUse(x);
                        bb->remove(i);
                        delete x;
                    }
                }  else if (i->isLoad()) {
                    // 找到对应的load使用的alloca变量 -> 这里是不是也可以找地址呢?
                    // fix: done
                    LoadInstruction* x = dynamic_cast<LoadInstruction*>(i);
                    auto loadalloc = dynamic_cast<LoadInstruction*>(i)->getAddr()->getDef();
                    // std::cout<<dynamic_cast<LoadInstruction*>(i)->getAddr()->toStr()<<"\n";
                    // std::cout<<dynamic_cast<LoadInstruction*>(i)->getAddr()->toStr()<<"\n";
                    auto it = alloca_ids.find(dynamic_cast<AllocaInstruction*>(loadalloc)); 
                    // 先定义后使用
                    if (it != alloca_ids.end()) {
                        // 需要替换所有用到load->def的变量为对应alloca的变量 fix: 这里的addr和operand如何转换
                        // fix
                        x->getAddr()->removeUse(x);
                        // 这里已经进行了use链的重构
                        x->getDef()->replaceAllUseWith(values[it->second]);
                        bb->remove(i);
                        delete x;  // 跟i->deleteValue()作用是一样的(但是跟delete i不一样)，逻辑上节省了一次dispatch的过程

                    }
                } else if (i->isPhi()) {
                    auto x = dynamic_cast<PhiInstruction* >(i);
                    auto it = phis.find(x);  // 也许程序中本来就存在phi，但是phis不一定包含了所有的phi
                    if (it != phis.end()) {
                        // 将对应的alloca变量的operand替换为phi指令的
                        // fix: 是不是必要
                        values[it->second] = x->getDef();
                    }
                }
                i = i->getNext();
                // //std::cout<<"hhh"<<std::endl;
            }
            // std::cout<<"mem2reg算法阶段2"<<std::endl;

            // 遍历当前块的所有后续块
            // fix: 需要理解phi指令中的src map
            // fix: 活跃变量分析 直接找到对应的前驱块中的最后一个赋值

            // 找的方式是从当前块的后继块开始找
            for (auto x = bb->succ_begin(); x != bb->succ_end(); x++) {
                // 比如从21块的后继节点开始找: 22
                // std::cout<<"hhhhhhhhhhhhhhhhh"<<std::endl;
                if ((*x)) {
                    BasicBlock *succ_bb = *x;
                    worklist2.emplace_back(succ_bb, values);// 将后继块加入到工作集当中
                    // 在后继块当中找首指令为phi的指令
                    for (auto i = succ_bb->begin(); i != succ_bb->end(); i = i->getNext()) {
                        if (i->isPhi()) {
                            auto p = dynamic_cast<PhiInstruction* >(i);
                            auto it = phis.find(p);
                            if (it != phis.end()) {
                                // 找到前驱块里面的最后一个值赋值给phi
                                // 前驱块当中有它本身存在
                                // std::cout<<"values[it->second] = "<<values[it->second]<<"\n";
                                //std::cout<<"after p->addSrc\n";
                                p->addSrc(bb, values[it->second]);
                                // 这个不清楚是什么意思
                                // 少插入了一条是因为对应的block的编号相同, 先进行编号的对齐与修改
                            }
                        } else {
                            break;  // PhiInstruction一定是在指令序列的最前面，所以遇到第一个非PhiInstruction的指令就可以break了
                        }
                    }
                }
            }
        }
    }
    // 0413m
    // fix2: 重新调整phi节点的顺序,让用到phi节点的指令先执行
    // 粗略实现: 默认当前块当中的所有phi指令都已经填充完毕了
    // 找到一个块当中的所有phi指令
    // fix3: 还有问题
    printmr("=========mem2reg算法阶段3: 调整phi指令的顺序=========");
    std::list<PhiInstruction*> phi_queue;
    for(auto it = f->begin(); it != f->end(); it++){
        auto bb = *it;
        phi_queue.clear();
        for (auto instphi = bb->begin(); instphi != bb->end(); instphi = instphi->getNext()){
            // std::cout<<"hhhhhhhhhhhhhhhhh"<<instphi<<std::endl;
            if(!instphi || !instphi->isPhi()) break;
            auto phi = dynamic_cast<PhiInstruction*>(instphi);
            // std::cout<<"\n 输出block内phi指令: "<<phi->getDef()->toStr()<<"\t";
            std::map<BasicBlock*, Operand*> srcs = phi->getSrcs();
            std::list<PhiInstruction*>::iterator minPos = phi_queue.end(), pos;
            for(auto src: srcs){
                    // std::cout<<src.second->toStr()<<"\t";
                if(src.second->getDef() && src.second->getDef()->isPhi()){
                    auto beforephi = dynamic_cast<PhiInstruction*>(src.second->getDef());
                    pos = std::find(phi_queue.begin(),phi_queue.end(), beforephi);
                    if(std::distance(phi_queue.begin(), pos) < std::distance(phi_queue.begin(), minPos)){
                        minPos = pos;
                    }
                }
            }
            phi_queue.insert(minPos, phi);
            bb->remove(instphi);
        }
        for(auto phi = phi_queue.rbegin(); phi != phi_queue.rend(); phi++){
            // std::cout<<(*phi)->getDef()->toStr()<<"\t";
            bb->insertFront(*phi);
        }
    }
    // std::cout<<"结束 mem2reg"<<std::endl;
}