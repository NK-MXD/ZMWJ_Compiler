#include "MachineCode.h"
#include "Unit.h"
#include "SymbolTable.h"
#include "Type.h"
#include"Instruction.h"
#include <iostream>


extern FILE* yyout;

MachineOperand::MachineOperand(int tp, int val)
{
    this->type = tp;this->reg_no = val;
    if(tp == MachineOperand::IMM)
        this->val = val;
    else if(tp== MachineOperand::VREG){
        this->type = MachineOperand::VREG;
        this->reg_no = val;
    }
}

MachineOperand::MachineOperand(std::string label)
{
    this->type = MachineOperand::LABEL;
    this->label = label;
}

bool MachineOperand::operator==(const MachineOperand&a) const
{
    if (this->type != a.type)
        return false;
    if (this->type == IMM)
        return this->val == a.val;
    return this->reg_no == a.reg_no;
}

bool MachineOperand::operator<(const MachineOperand&a) const
{
    if(this->type == a.type)
    {
        if(this->type == IMM)
            return this->val < a.val;
        return this->reg_no < a.reg_no;
    }
    return this->type < a.type;

    if (this->type != a.type)
        return false;
    if (this->type == IMM)
        return this->val == a.val;
    return this->reg_no == a.reg_no;
}

void MachineOperand::PrintReg()
{
    switch (reg_no)
    {
    case 11:
        fprintf(yyout, "fp");
        break;
    case 13:
        fprintf(yyout, "sp");
        break;
    case 14:
        fprintf(yyout, "lr");
        break;
    case 15:
        fprintf(yyout, "pc");
        break;
    default:
        fprintf(yyout, "r%d", reg_no);
        break;
    }
}

void MachineOperand::output() 
{
    /* HINT：print operand
    * Example:
    * immediate num 1 -> print #1;
    * register 1 -> print r1;
    * lable addr_a -> print addr_a; */
    switch (this->type)
    {
    case IMM:
        fprintf(yyout, "#%d", this->val);
        break;
    case VREG:
        fprintf(yyout, "v%d", this->reg_no);
        break;
    case REG:
        PrintReg();
        break;
    case LABEL:
        if (this->label.substr(0, 2) == ".L")
            fprintf(yyout, "%s", this->label.c_str());
        else
            fprintf(yyout, "addr_%s", this->label.c_str());
    default:
        break;
    }
}

void MachineInstruction::PrintCond()
{
    // TODO
    switch (cond)
    {
    case LT:
        fprintf(yyout, "lt");
        break;
    default:
        break;
    }
}

BinaryMInstruction::BinaryMInstruction(
    MachineBlock* p, int op, 
    MachineOperand* dst, MachineOperand* src1, MachineOperand* src2, 
    int cond)
{
    this->parent = p;
    this->type = MachineInstruction::BINARY;
    this->op = op;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    src2->setParent(this);
}

void BinaryMInstruction::output() 
{
    // TODO: 
    // Complete other instructions
    switch (this->op)
    {
    case BinaryMInstruction::ADD:
        fprintf(yyout, "\tadd ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    case BinaryMInstruction::SUB:
        fprintf(yyout, "\tsub ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    case BinaryMInstruction::MUL:// MUL, DIV, MOD, XOR
        fprintf(yyout, "\tmul ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    case BinaryMInstruction::DIV:
        fprintf(yyout, "\tdiv ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    case BinaryMInstruction::MOD:
        fprintf(yyout, "\tmod ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    case BinaryMInstruction::XOR:
        fprintf(yyout, "\txor ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        break;
    default:
        break;
    }
}

LoadMInstruction::LoadMInstruction(MachineBlock* p,
    MachineOperand* dst, MachineOperand* src1, MachineOperand* src2,
    int cond)
{
    this->parent = p;
    this->type = MachineInstruction::LOAD;
    this->op = -1;
    this->cond = cond;
    //printf("%d",dst->getReg());
    this->addDef(dst);
    //printf("%d",this->def_list[0]->getReg());
    this->addUse(src1);
    //printf("%d",this->use_list[0]->getReg());
    if (src2)
        this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    if (src2)
        src2->setParent(this);
}

void LoadMInstruction::output()
{
    fprintf(yyout, "\tldr ");
    
    this->def_list[0]->output();
    //printf("%d",this->def_list[0]->getReg());
    fprintf(yyout, ", ");

    // Load immediate num, eg: ldr r1, =8
    if(this->use_list[0]->isImm())
    {
        fprintf(yyout, "=%d\n", this->use_list[0]->getVal());
        return;
    }

    // Load address
    if(this->use_list[0]->isReg()||this->use_list[0]->isVReg())
        fprintf(yyout, "[");

    this->use_list[0]->output();
    if( this->use_list.size() > 1 )
    {
        fprintf(yyout, ", ");
        this->use_list[1]->output();
    }

    if(this->use_list[0]->isReg()||this->use_list[0]->isVReg())
        fprintf(yyout, "]");
    fprintf(yyout, "\n");
}

StoreMInstruction::StoreMInstruction(MachineBlock* p,
    MachineOperand* src1, MachineOperand* src2, MachineOperand* src3, 
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::STORE;
    this->op = -1;
    this->cond = cond;
    this->def_list.push_back(src1);
    //printf("%d",this->def_list[0]->getReg());
    this->use_list.push_back(src2);
    if (src3)
        this->use_list.push_back(src3);
    src1->setParent(this);
    src2->setParent(this);
    if (src3)
        src3->setParent(this);
}

void StoreMInstruction::output()
{
    // TODO
    fprintf(yyout, "\tstr ");
    this->def_list[0]->output();
    fprintf(yyout, ", ");
    // Load address
    if (this->use_list[0]->isReg() || this->use_list[0]->isVReg())
        fprintf(yyout, "[");

    this->use_list[0]->output();
    if (this->use_list.size() > 1)
    {
        fprintf(yyout, ", ");
        this->use_list[1]->output();
    }

    if (this->use_list[0]->isReg() || this->use_list[0]->isVReg())
        fprintf(yyout, "]");
    fprintf(yyout, "\n");
}

MovMInstruction::MovMInstruction(MachineBlock* p, int op, 
    MachineOperand* dst, MachineOperand* src,
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::MOV;
    this->op = op;
    this->addDef(dst);
    this->addUse(src);

}

void MovMInstruction::output() 
{
    // TODO
    if(op==MOV){
        fprintf(yyout, "\tmov ");
        this->def_list[0]->PrintReg();
        fprintf(yyout, " ");
        this->use_list[0]->PrintReg();
        fprintf(yyout, "\n");
    }
    else if(op == MVN){
        fprintf(yyout, "\tmvn ");
        this->def_list[0]->PrintReg();
        fprintf(yyout, " ");
        this->use_list[0]->PrintReg();
        fprintf(yyout, "\n");
    }
}

BranchMInstruction::BranchMInstruction(MachineBlock* p, int op, 
    MachineOperand* dst, 
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::BRANCH;
    this->op = op;
    if(dst)
        this->addUse(dst);
}

void BranchMInstruction::output()
{
    // TODO
    switch (op)
    {
    case B/* constant-expression */:
        fprintf(yyout, "\tb ");
        use_list[0]->output();
        /* code */
        break;
    case BL:
        fprintf(yyout, "\tbl ");
        break;
    case BX:
        fprintf(yyout, "\tbx ");
        use_list[0]->PrintReg();
        break;
    default:
        break;
    }
    
    fprintf(yyout, "\n");
}

CmpMInstruction::CmpMInstruction(MachineBlock* p, 
    MachineOperand* src1, MachineOperand* src2, 
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::CMP;
    this->op = -1;
    this->cond = cond;
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    src1->setParent(this);
    src2->setParent(this);
}

void CmpMInstruction::output()
{
    // TODO
    // Jsut for reg alloca test
    // delete it after test
    fprintf(yyout, "\tcmp ");
    this->use_list[0]->PrintReg();
    fprintf(yyout, " ");
    this->use_list[1]->PrintReg();
    fprintf(yyout, "\n");
}

StackMInstrcuton::StackMInstrcuton(MachineBlock* p, int op, 
    MachineOperand* src,
    int cond)
{
    // TODO
    //auto cur_func = builder->getFunction();
    //int offset = cur_func->AllocSpace(4);
    this->parent = p;
    this->op = op;
    this->type = MachineInstruction::STACK;
    this->addUse(src);
}

void StackMInstrcuton::output()
{
    // TODO
    if(op==opType::PUSH){
        fprintf(yyout,"\tpush {");
    }
    else if(op==opType::POP){
        fprintf(yyout,"\tpop {");
    }
    this->use_list[0]->output();
    fprintf(yyout,"}\n");
}

MachineFunction::MachineFunction(MachineUnit* p, SymbolEntry* sym_ptr) 
{ 
    this->parent = p; 
    this->sym_ptr = sym_ptr; 
    this->stack_size = 0;
    //p->InsertFunc(this);
};

void MachineBlock::output()
{
    fprintf(yyout, ".L%d:\n", this->no);

    for(auto iter : inst_list)
        iter->output();
}

void MachineFunction::back_patch(){
    auto cur_block = this->getBlocks().back();
    //cur_block->outputno();
    for(auto i:this->saved_regs){
        auto mo = new MachineOperand(MachineOperand::REG,i);
        StackMInstrcuton *s = new StackMInstrcuton(cur_block,StackMInstrcuton::POP,mo);
        //this->block_list[0]->InsertFron(s);
        cur_block->InsertInst(s);
    }
    auto src = new MachineOperand(MachineOperand::REG,14);
    MachineOperand *fp = new MachineOperand(MachineOperand::REG,11);

    MachineInstruction *popInst = new StackMInstrcuton(cur_block,StackMInstrcuton::POP,fp);
    cur_block->InsertInst(popInst);
    auto cur_inst = new BranchMInstruction(cur_block,BranchMInstruction::BX,src);
    cur_block->InsertInst(cur_inst);
}


void MachineFunction::output()
{
    const char *func_name = this->sym_ptr->toStr().c_str() + 1;
    fprintf(yyout, "\t.global %s\n", func_name);
    fprintf(yyout, "\t.type %s , %%function\n", func_name);
    fprintf(yyout, "%s:\n", func_name);
    //printf("%d\n",this->getSize());
    // TODO
    /* Hint:
    *  1. Save fp
    *  2. fp = sp
    *  3. Save callee saved register
    *  4. Allocate stack space for local variable */
    // Traverse all the block in block_list to print assembly code.
    MachineOperand *m = new MachineOperand(MachineOperand::REG,11);
    StackMInstrcuton *s0 = new StackMInstrcuton(this->block_list[0],StackMInstrcuton::PUSH,m);
    std::vector<StackMInstrcuton*> tmp;
    //printf("%d\n",this->getSize());
    for(auto i:this->saved_regs){
        //printf("%d\n",i);
        //this->getBlocks()[0]->outputno();
        //this->SSSize(4);
        StackMInstrcuton *s=nullptr;
        MachineOperand *mo = nullptr;
        mo = new MachineOperand(MachineOperand::REG,i);
        s = new StackMInstrcuton(this->block_list[0],StackMInstrcuton::PUSH,mo);
        //this->block_list[0]->InsertFron(s);
        tmp.push_back(s);
    }
    
    
    MachineInstruction *mov_ins = nullptr;
    MachineOperand *fp = new MachineOperand(MachineOperand::REG,11);
    //printf("%d\n",fp->getReg());
    MachineOperand *sp = new MachineOperand(MachineOperand::REG,13);
    mov_ins = new MovMInstruction(this->block_list[0],MovMInstruction::MOV,fp,sp );
    
    MachineInstruction *sub_ins = nullptr;
    MachineOperand *im = new MachineOperand(MachineOperand::IMM,this->getSize());
    sub_ins = new BinaryMInstruction(this->block_list[0],BinaryMInstruction::SUB,sp,sp,im);
    this->block_list[0]->InsertFron(sub_ins);
    this->block_list[0]->InsertFron(mov_ins);
    for(auto i:tmp){
        this->block_list[0]->InsertFron(i);
    }
    this->block_list[0]->InsertFron(s0);
    for(auto iter : block_list)
        iter->output();
    
}

void MachineUnit::PrintGlobalDecl()
{
    // TODO:
    // You need to print global variable/const declarition code;
    if(!globals->getTable().empty()){
        fprintf(yyout,"\t.data\n");
    }
    for(auto &var:globals->getTable()){
        IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry*>(var.second);
        if(se->getType()->isFunc())
        {
            if(se->isExtern())
            {
                FunctionType *funcType = dynamic_cast<FunctionType*>(se->getType());
                Type *retType = funcType->getRetType();
                std::string retStr = retType->toStr();
                std::string paramStr = funcType->paramsToStr();
                std::string name = se->toStr();
                fprintf(yyout, "\t.global %s %s%s\n", retStr.c_str(), name.c_str(), paramStr.c_str());
            }
            continue;
        }
        std::string name, type, val;
        name = se->toStr();
        type = se->getType()->toStr();
        val = se->getInitValStr();
        fprintf(yyout, "\t.global %s\n \t%s:\n \t.word %s\n", name.substr(1).c_str(), name.substr(1).c_str(), val.c_str());
    }


}
void MachineUnit::backpatch(){
    for (auto iter = this->func_list.begin(); iter != this->func_list.end(); iter++)
    {
        (*iter)->back_patch();
    }
}
void MachineUnit::output()
{
    // TODO
    /* Hint:
    * 1. You need to print global variable/const declarition code;
    * 2. Traverse all the function in func_list to print assembly code;
    * 3. Don't forget print bridge label at the end of assembly code!! */
    fprintf(yyout, "\t.arch armv8-a\n");
    fprintf(yyout, "\t.arch_extension crc\n");
    fprintf(yyout, "\t.arm\n");
    PrintGlobalDecl();
    for(auto iter : func_list)
        iter->output();
}
