#include "Operand.h"
#include <sstream>
#include <algorithm>
#include <string.h>

std::string Operand::toStr() const {
    std::string res = se->toStr(); // llvm ir global variable with `@0`
    if (typeid(*se) == typeid(IdentifierSymbolEntry)) {
        if (((IdentifierSymbolEntry*)se)->isGlobal()) {
            res = "@" + res;
        }
    }
    return res;
}

void Operand::removeUse(Instruction *inst)
{
    auto i = std::find(uses.begin(), uses.end(), inst);
    if(i != uses.end())
        uses.erase(i);
}

void Operand::removeDef(Instruction* inst) {
    def = nullptr;
}

void Operand::replaceAllUseWith(Operand *op) {
    // use是动态变换的
    std::vector<Instruction *> temp(uses);
    for(int i = 0; i < temp.size(); i++){
        // fix: 让所有使用该operand的指令替换为op
        Instruction* inst = uses[i];
        // std::cout<<inst->getInstName()<<"替换"<<this->toStr()<<" "<<op->toStr()<<std::endl;
        inst->replaceUse(this, op);
    }
}