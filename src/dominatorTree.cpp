#include "../include/dominatorTree.h"
#include <queue>
#include <iostream>

void print_block(Function* f){
    std::cout<<f->getSymPtr()->toStr()<<std::endl;
    for(auto bb: f->getBlockList()){
        std::cout << bb->getNo() << "has " << bb->getNumOfPred() << " pre block " << std::endl;
        for(auto succ: bb->getPredBlock()){
            std::cout<< succ->getNo() << std::endl;
        }
    }
}

void dominatorTree::execute(){
    for (auto func : unit->get_functions()) {
        if (func->getBlockList().empty())
            continue;
        for (auto bb : func->getBlockList()){
            iDomMap.insert({bb , {}});
            frontierMap.insert({bb , {}});
            successorMap.insert({bb , {}});
        }
        // print_block(func);
        createRPO(func);
        create_immediate_dominance(func);
        create_dominance_frontier(func);
        create_dom_tree_succ(func);
        // print_dom_tree();
    }
}

// 得到反向遍历的顺序
void dominatorTree::createRPO(Function *f){
    reversedPostOrderQueue.clear();
    postOrderID.clear();
    std::set<BasicBlock *> visited;
    int id = 0;
    // 深度优先遍历
    dfs(f->getEntry(), visited, id);
    // 将顺序翻转 逆序遍历
    reversedPostOrderQueue.reverse();
}

void dominatorTree::dfs(BasicBlock *bb, std::set<BasicBlock *> &visited, int &id){
    visited.insert(bb);
    for (auto _bb : bb->getSuccBlock()) {
        // 若没有访问过则对其访问，否则跳过, 保证不会出现环
        // 递归算法 优化?
        if (visited.find(_bb) == visited.end()) {
            dfs(_bb, visited, id);
        }
    }
    postOrderID[bb] = id++;
    reversedPostOrderQueue.emplace_back(bb);
}

void dominatorTree::create_immediate_dominance(Function *f){
    for (auto bb : f->getBlockList()){
        set_immediate_dominance(bb, nullptr);
    }
    auto root = f->getEntry();
    set_immediate_dominance(root, root);//设置当前支配节点为当前root节点
    // 这里的支配树构建算法使用的是什么算法呢?
    bool changed = true;
    while (changed) {
        changed = false;
        // 遍历逆序深度遍历表
        for (auto bb : this->reversedPostOrderQueue) {
            if (bb == root) {
                continue;
            }
            // 至少找到一个支配节点
            BasicBlock *pred = nullptr;
            for (auto p : bb->getPredBlock()) {
                // 如果前驱节点的支配节点不为空
                if (getImmediateDominance(p)) {
                    pred = p;
                    break;
                }
            }
            assert(pred);

            BasicBlock *new_idom = pred;
            for (auto p : bb->getPredBlock()) {
                if (p == pred)
                    continue;
                if (getImmediateDominance(p)) {
                    new_idom = intersect(p, new_idom);
                }
            }
            if (getImmediateDominance(bb) != new_idom) {
                set_immediate_dominance(bb, new_idom);
                changed = true;
            }
        }
    }
}

// 找到b1和b2之间共同的parent
BasicBlock *dominatorTree::intersect(BasicBlock *b1, BasicBlock *b2){
    assert(postOrderID.find(b1) != postOrderID.end() && postOrderID.find(b2) != postOrderID.end() && "Unidentified Basic Block");
    while (b1 != b2) {
        while (postOrderID[b1] < postOrderID[b2]) {
            assert(getImmediateDominance(b1));
            b1 = getImmediateDominance(b1);
        }
        while (postOrderID[b2] < postOrderID[b1]) {
            assert(getImmediateDominance(b2));
            b2 = getImmediateDominance(b2);
        }
    }
    return b1;
}

void dominatorTree::create_dominance_frontier(Function *f){
    for (auto bb : f->getBlockList()) {
        if (bb->getNumOfPred() >= 2) {
            for (auto p : bb->getPredBlock()) {
                auto runner = p;
                // 如果在当前块前面的块不在支配名单中添加进入支配名单
                while (runner != getImmediateDominance(bb)) {
                    add_dominance_frontier(runner, bb);
                    runner = getImmediateDominance(runner);
                }
            }
        }
    }
}

void dominatorTree::create_dom_tree_succ(Function *f){
    for (auto bb : f->getBlockList()) {
        auto idom = getImmediateDominance(bb);
        if(!idom) continue;
        // e.g, entry bb
        if (idom != bb) {
            add_dom_tree_succ_block(idom, bb);
        }
    }
}

void dominatorTree::print_dom_tree() {
    std::cout <<"======="<<std::endl;
    std::cout << successorMap.size() << std::endl;
    for(auto x: successorMap){
        std::cout << x.first->getNo()<< std::endl;
        for(auto s: x.second){
            std::cout << x.first->getNo() << " -->  " << s->getNo() << std::endl;
        }
    }
    std::cout <<"======="<<std::endl;
}