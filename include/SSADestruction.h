#include "Unit.h"
#include "Instruction.h"

class SSADestruction {
    Unit* unit;

   public:
    SSADestruction(Unit* unit) : unit(unit){};
    void pass();
    void pass(Function* function);
};