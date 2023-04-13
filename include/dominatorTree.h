#ifndef _DOMINATORTREE_HPP
#define _DOMINATORTREE_HPP
// 支配树的建立
#include <list>
#include <set>
#include <map>
#include "BasicBlock.h"
#include "Unit.h"

class dominatorTree{
public:
    dominatorTree(Unit *_unit) : unit(_unit){};
    void execute();
    // 获取当前节点的支配节点
    BasicBlock *getImmediateDominance(BasicBlock *bb) { return iDomMap[bb]; };
    std::set<BasicBlock *> getDomTreeSuccessorBlocks(BasicBlock *bb) { return successorMap[bb]; };
    bool isLoopEdge(BasicBlock *bb_from, BasicBlock *bb_to) {
        return postOrderID[bb_from] > postOrderID[bb_to];
    };
    std::set<BasicBlock *> &getDominanceFrontier(BasicBlock *bb) { return frontierMap[bb]; };
    BasicBlock *intersect(BasicBlock *b1, BasicBlock *b2);
    void createRPO(Function *f);
    std::list<BasicBlock *> getRPOQueue(Function *f) {
        createRPO(f);
        return reversedPostOrderQueue;
    };
    bool isDominatedBy(BasicBlock *child, BasicBlock *parent) {
        if (child == parent) return true;
        auto sets = getDomTreeSuccessorBlocks(parent);
        return sets.find(child) != sets.end();
    };

private:
    Unit *unit;
    std::list<BasicBlock *> reversedPostOrderQueue;
    std::map<BasicBlock *, int> postOrderID;

    std::map<BasicBlock *, BasicBlock *> iDomMap;
    std::map<BasicBlock *, std::set<BasicBlock *>> frontierMap;
    std::map<BasicBlock *, std::set<BasicBlock *>> successorMap;

    void create_immediate_dominance(Function *f);
    // 设置imm_dom为bb支配节点
    void set_immediate_dominance(BasicBlock *bb, BasicBlock *imm_dom) { iDomMap[bb] = imm_dom; };
    void create_dominance_frontier(Function *f);
    void dfs(BasicBlock *bb, std::set<BasicBlock *> &visited, int &id);
    void add_dom_tree_succ_block(BasicBlock *bb, BasicBlock *dom_tree_succ_bb) {
        successorMap[bb].insert(dom_tree_succ_bb);
    };
    void add_dominance_frontier(BasicBlock *bb, BasicBlock *dom_frontier_bb) {
        frontierMap[bb].insert(dom_frontier_bb);
    };
    void create_dom_tree_succ(Function *f);
    void print_dom_tree();
};

#endif