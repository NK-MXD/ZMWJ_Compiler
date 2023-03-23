#include"mem2reg.h"
#include <algorithm>
#include <unordered_map>
#include <vector>

void Mem2Reg::execute() {
    auto func = unit->begin();
    while (func != unit->end())
        execute(*func++);
}

void Mem2Reg::execute(Function*f) {
    this->dom = new dominatorTree(unit);
    this->dom->execute();

    std::unordered_map<AllocaInstruction*, int> alloca_ids;  // 把alloca映射到整数，后面有好几个vector用这个做下标
    std::vector<AllocaInstruction*> allocas;

    for (auto it = f->begin(); it != f->end(); it++) {
        for (auto i = (*it)->begin(); i != (*it)->end(); i = i->getNext()) {
            if (i->isAlloc()) {
                // 这里有一些判断条件
                // if (a->sym->dims.empty()) {  // 局部int变量
                alloca_ids.insert({dynamic_cast<AllocaInstruction*>(i), (int)alloca_ids.size()});
                allocas.push_back(dynamic_cast<AllocaInstruction*>(i));
            }
        }
    }

    // TODO: 
    // std::vector<std::vector<BasicBlock *>> alloca_defs(alloca_ids.size());
    // for (auto it = f->begin(); it != f->end(); it++) {
    //     for (auto i = (*it)->begin(); i != (*it)->end(); i = i->getNext()) {
    //         if (i->isStore()) {
    //             auto it = alloca_ids.find(dynamic_cast<StoreInstruction*>(i)->arr.value);  // 这里需要将对应的se存进去
    //             if (it != alloca_ids.end()) {
    //                 alloca_defs[it->second].push_back(*it);
    //             }//alloca_defs存储的是每一个alloca变量定义的块
    //         }
    //     }
    // }

}