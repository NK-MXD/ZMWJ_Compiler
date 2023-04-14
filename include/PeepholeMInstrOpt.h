#ifndef __PEEPHOLE_OPTIMIZATION_H__
#define __PEEPHOLE_OPTIMIZATION_H__

#include <unordered_map>
#include <vector>
#include <cmath>
#include "MachineCode.h"


#define CHECK
#ifdef CHECK
#define printf //
#endif

//#define DEBUG0405

enum instrcode
{
    ADD = 0x02, 
    VADD, //0x03
    SUB, //0x04
    VSUB,//0x05
    MUL, //0x06
    VMUL,//0x07
    LDR, //0x08
    STR,//0x09
    MOV, //0x0a
    VMOV//0x0b
    //,
};

enum solve_func
{
    MULADD2MLA_FUNC = 0,
    STRLDR2STRMOV_FUNC,
    LDRLDR2LDRMOV_FUNC,
    LDRVMOVVSUB2VNEG_FUNC,
    VMULVADD2VMLAVMOV_FUNC
};

class PeepholeMInstrOpt 
{
   public:
    int window_size = 4;
    PeepholeMInstrOpt(MachineUnit* mUnit)
    {
        this->mUnit = mUnit;
        //下面开始给哈希表填充
        int code = 0;
        code = MUL;
        code = (code << 8) + ADD;
        pattern_map[code] = MULADD2MLA_FUNC;
        printf("muladd2mla code = %d\n", code);

        code = VMUL;
        code = (code << 8) + VADD;
        pattern_map[code] = VMULVADD2VMLAVMOV_FUNC;
        printf("vmulvadd2vmlavmov code = %d\n", code);

        code = STR;
        code = (code << 8) + LDR;
        pattern_map[code] = STRLDR2STRMOV_FUNC;
        printf("strldr2strmov code = %d\n", code);

        code = LDR;
        code = (code << 8) + LDR;
        pattern_map[code] = LDRLDR2LDRMOV_FUNC;
        printf("ldrldr2strmov code = %d\n", code);

        code = LDR;
        code = (code << 8) + VMOV;
        code = (code << 8) + VSUB;
        pattern_map[code] = LDRVMOVVSUB2VNEG_FUNC;
        printf("ldrvmovvsub2vneg code = %d\n", code);
    }
    void pass();
    //void pass1();
   private:
    MachineUnit* mUnit;
    std::unordered_map<uint32_t, int> pattern_map; //key是指令序列模式转化成的哈希串，value是对应你这个指令串的检查和优化函数
    int MulAdd2Mla(MachineBlock* block, MachineInstruction* mul_inst, MachineInstruction* add_inst, std::set<MachineInstruction*>* instToRemove);
    int VMulVAdd2VMlaVMov(MachineBlock* block, MachineInstruction* vmul_inst, MachineInstruction* vadd_inst, std::set<MachineInstruction*>* instToRemove);
    int StrLdr2StrMov(MachineBlock* block, MachineInstruction* str_inst, MachineInstruction* second_ldr_inst, std::set<MachineInstruction*>* instToRemove);
    int LdrLdr2LdrMov(MachineBlock* block, MachineInstruction* first_ldr_inst, MachineInstruction* ldr_inst, std::set<MachineInstruction*>* instToRemove);
    int LdrVMovVSub2VNeg(MachineBlock* block, MachineInstruction* ldr_inst, MachineInstruction* vmov_inst, MachineInstruction* vsub_inst, std::set<MachineInstruction*>* instToRemove);
    int instr_pattern_code(int instr_num, std::vector<MachineInstruction*> instr_list);
};

int PeepholeMInstrOpt::MulAdd2Mla(MachineBlock* block, MachineInstruction* mul_inst, MachineInstruction* add_inst, std::set<MachineInstruction*>* instToRemove)
{
    printf("now in PeepholeMInstrOpt::MulAdd2Mla\n");
    // fuse mul and add/sub
    //     mul v0, v1, v2
    //     add v3, v4, v0
    //     -----
    //     mla v3, v1, v2, v4
    //
    //     mul v0, v1, v2
    //     sub v3, v4, v0
    //     -----
    //     mls v3, v1, v2, v4

    // mla/mls rd, rn, rm, ra
    // https://developer.arm.com/documentation/dui0489/c/arm-and-thumb-instructions/multiply-instructions/mul--mla--and-mls
    // FIXME: problem at functional/71_full_conn.

    auto mul_dst = mul_inst->getDef()[0];
    auto add_src1 = add_inst->getUse()[0];
    auto add_src2 = add_inst->getUse()[1];

    MachineOperand* rd = new MachineOperand(*(add_inst->getDef()[0]));
    MachineOperand* rn = new MachineOperand(*(mul_inst->getUse()[0]));
    MachineOperand* rm = new MachineOperand(*(mul_inst->getUse()[1]));
    MachineOperand* ra;

    // fix:  mul r0, r1, r0
    //       add sp, sp, #0
    // ;NO.7
	//     mul r6, r4, r5
    // ;NO.8
    //     add r4, r6, #1
    if (add_src1->isImm() || add_src2->isImm())
        return -1;
    printf("before check1\n");
    if (mul_dst->getReg() == add_src1->getReg()) {
        ra = new MachineOperand(*add_src2);
    } else if (mul_dst->getReg() == add_src2->getReg()) {
        ra = new MachineOperand(*add_src1);
    } else {
        return -1;
    }

    printf("before check2\n");
    if (rn->isImm() || rm->isImm() || ra->isImm()) {
        return -1;
    }

    printf("before check3\n");
    FuseMInstruction* fused_inst = new FuseMInstruction(
        block, FuseMInstruction::MLA, rd, rn, rm, ra);
    //BinaryMInstruction* vninst = new BinaryMInstruction(block, 0, rd, rn, rm);
    //*add_inst_iter = fused_inst;
    block->insertBefore(fused_inst, block->getNext(add_inst));
    // instToRemove->insert(mul_inst);
    // instToRemove->insert(add_inst);
    block->remove(mul_inst);
    block->remove(add_inst);
    printf("instToRemove.size() inner = %d\n", instToRemove->size());
    printf("before return\n");
    return 0;//代表instr_list中第0条指令的位置是替换过的新指令的位置
}

int PeepholeMInstrOpt::VMulVAdd2VMlaVMov(MachineBlock* block, MachineInstruction* vmul_inst, MachineInstruction* vadd_inst, std::set<MachineInstruction*>* instToRemove)
{
    // printf("now in PeepholeMInstrOpt::MulAdd2Mla\n");
    // // fuse mul and add/sub
    // //     vmul v0, v1, v2
    // //     vadd v3, v4, v0
    // //     -----
    // //     mla v4, v1, v2
    // //     vmov v3, v4

    // auto mul_dst = mul_inst->getDef()[0];
    // auto add_src1 = add_inst->getUse()[0];
    // auto add_src2 = add_inst->getUse()[1];

    // MachineOperand* rd = new MachineOperand(*(add_inst->getDef()[0]));
    // MachineOperand* rn = new MachineOperand(*(mul_inst->getUse()[0]));
    // MachineOperand* rm = new MachineOperand(*(mul_inst->getUse()[1]));
    // MachineOperand* ra;

    // // fix:  mul r0, r1, r0
    // //       add sp, sp, #0
    // // ;NO.7
	// //     mul r6, r4, r5
    // // ;NO.8
    // //     add r4, r6, #1
    // if (add_src1->isImm() || add_src2->isImm())
    //     return -1;
    // printf("before check1\n");
    // if (mul_dst->getReg() == add_src1->getReg()) {
    //     ra = new MachineOperand(*add_src2);
    // } else if (mul_dst->getReg() == add_src2->getReg()) {
    //     ra = new MachineOperand(*add_src1);
    // } else {
    //     return -1;
    // }

    // printf("before check2\n");
    // if (rn->isImm() || rm->isImm() || ra->isImm()) {
    //     return -1;
    // }

    // printf("before check3\n");
    // FuseMInstruction* fused_inst = new FuseMInstruction(
    //     block, FuseMInstruction::MLA, rd, rn, rm, ra);
    // //BinaryMInstruction* vninst = new BinaryMInstruction(block, 0, rd, rn, rm);
    // //*add_inst_iter = fused_inst;
    // block->insertBefore(fused_inst, block->getNext(add_inst));
    // // instToRemove->insert(mul_inst);
    // // instToRemove->insert(add_inst);
    // block->remove(mul_inst);
    // block->remove(add_inst);
    // printf("instToRemove.size() inner = %d\n", instToRemove->size());
    // printf("before return\n");
    // return 0;//代表instr_list中第0条指令的位置是替换过的新指令的位置
}

int PeepholeMInstrOpt::StrLdr2StrMov(MachineBlock* block, MachineInstruction* str_inst, MachineInstruction* ldr_inst, std::set<MachineInstruction*>* instToRemove)
{
    printf("now in PeepholeMInstrOpt::strldr2strmov\n");
    
    //0405 wzr: str指令有几个参数，ldr指令有几个参数
    //满参数状态下的这两条指令形式如下
    //str use_list[0], [use_list[1], use_list[2]]
    //ldr def_list[0], [use_list[0], use_list[1]]
    //stroperand123按顺序对应上面的形式
    int stroperand_num = 0, ldroperand_num = 0;
    MachineOperand* stroperand1, *stroperand2, *stroperand3;
    MachineOperand* ldroperand1, *ldroperand2, *ldroperand3;
    //下面这些if语句是为了避免取数组值时访问越界
    if(str_inst->getUse().size() > 0)
    {
        stroperand1 = str_inst->getUse()[0];
        stroperand_num = 1;
    }
    if(str_inst->getUse().size() > 1)
    {
        stroperand2 = str_inst->getUse()[1];
        stroperand_num = 2;
    }
    if(str_inst->getUse().size() > 2)
    {
        stroperand3 = str_inst->getUse()[2];
        stroperand_num = 3;
    }
    if(ldr_inst->getDef().size() > 0)
    {
        ldroperand1 = ldr_inst->getDef()[0];
        ldroperand_num = 1;
    }
    //printf("breakpoint\n");
    if(ldr_inst->getUse().size() > 0)
    {
        ldroperand2 = ldr_inst->getUse()[0];
        ldroperand_num = 2;
    }
    if(ldr_inst->getUse().size() > 1)
    {
        ldroperand3 = ldr_inst->getUse()[1];
        ldroperand_num = 3;
    }

    //0405 wzr: 在此明确一下，只有两种形式我们能进行窥孔优化
    //形式一
    //str v355, [v11]
    //ldr v227, [v11]

    //形式二
    //str v355, [v11, #-4]
    //ldr v227, [v11, #-4]

    //综上，str和ldr指令的参数总数必须相等，且不是2就得是3
    //本来我以为没有参数为1或者为0的情况，但不考虑这些情况运行时确实会报段错误
    //而且ldr指令的第二个参数有可能不是寄存器，比如ldr v4, =8这种立即数情况，自然也不能优化

    if(ldroperand2->isImm())return -1;
    if(ldroperand_num < 2 || stroperand_num < 2 || ldroperand_num != stroperand_num)return -1;
    if(ldroperand2->isReg() || ldroperand2->isVReg())
    {
        if(ldroperand_num == 2)
        {
            printf("before str ldr num = 2\n");
            if(stroperand2->getReg() == ldroperand2->getReg())//这里比的是寄存器号
            {
                //下面的操作2和3完全相同
                printf("new mov to replace ldr1");
                MovMInstruction* mov = new MovMInstruction(block, MovMInstruction::MOV, ldroperand1, stroperand1);
                block->insertBefore(mov, ldr_inst);//在指令列表里找ldr_inst，在它前面插一条mov
                //instToRemove->insert(ldr_inst);//然后把ldr_inst删了
                block->remove(ldr_inst);
            }
        }
        else{
            printf("before str ldr num = 3\n");
            //下面的if里比的是第二个参数的寄存器号和第三个参数的值，因为第三个参数一定是个立即数？？
            if(stroperand2->getReg() == ldroperand2->getReg() && stroperand3->getVal() == ldroperand3->getVal())
            {
                printf("new mov to replace ldr1");
                MovMInstruction* mov = new MovMInstruction(block, MovMInstruction::MOV, ldroperand1, stroperand1);
                block->insertBefore(mov, ldr_inst);
                //instToRemove->insert(ldr_inst);
                block->remove(ldr_inst);
            }
        }
    }

    return 0;//代表instr_list中第0条指令的位置是替换过的新指令的位置
}

int PeepholeMInstrOpt::LdrLdr2LdrMov(MachineBlock* block, MachineInstruction* first_ldr_inst, MachineInstruction* second_ldr_inst, std::set<MachineInstruction*>* instToRemove)
{
    printf("now in PeepholeMInstrOpt::ldrldr2ldrmov\n");
    
    //0405 wzr: ldr指令有几个参数
    //满参数状态下的这指令形式如下
    //ldr def_list[0], [use_list[0], use_list[1]]
    //ldroperand123按顺序对应上面的形式
    int first_ldroperand_num = 0, second_ldroperand_num = 0;
    MachineOperand* first_ldroperand1, *first_ldroperand2, *first_ldroperand3;
    MachineOperand* second_ldroperand1, *second_ldroperand2, *second_ldroperand3;
    //下面这些if语句是为了避免取数组值时访问越界
    if(first_ldr_inst->getDef().size() > 0)
    {
        first_ldroperand1 = first_ldr_inst->getDef()[0];
        first_ldroperand_num = 1;
    }
    if(first_ldr_inst->getUse().size() > 0)
    {
        first_ldroperand2 = first_ldr_inst->getUse()[0];
        first_ldroperand_num = 2;
    }
    if(first_ldr_inst->getUse().size() > 1)
    {
        first_ldroperand3 = first_ldr_inst->getUse()[1];
        first_ldroperand_num = 3;
    }
    if(second_ldr_inst->getDef().size() > 0)
    {
        second_ldroperand1 = second_ldr_inst->getDef()[0];
        second_ldroperand_num = 1;
    }
    //printf("breakpoint\n");
    if(second_ldr_inst->getUse().size() > 0)
    {
        second_ldroperand2 = second_ldr_inst->getUse()[0];
        second_ldroperand_num = 2;
    }
    if(second_ldr_inst->getUse().size() > 1)
    {
        second_ldroperand3 = second_ldr_inst->getUse()[1];
        second_ldroperand_num = 3;
    }

    //0405 wzr: 在此明确一下，只有两种形式我们能进行窥孔优化
    //形式一
    //ldr v355, [v11]
    //ldr v227, [v11]

    //形式二
    //ldr v355, [v11, #-4]
    //ldr v227, [v11, #-4]

    //综上，first_ldr和second_ldr指令的参数总数必须相等，且不是2就得是3
    //本来我以为没有参数为1或者为0的情况，但不考虑这些情况运行时确实会报段错误
    //而且ldr指令的第二个参数有可能不是寄存器，比如ldr v4, =8这种立即数情况，自然也不能优化

    if(first_ldroperand2->isImm() || second_ldroperand2->isImm())return -1;
    if(second_ldroperand_num < 2 || first_ldroperand_num < 2 || second_ldroperand_num != first_ldroperand_num)return -1;
    if((first_ldroperand2->isReg() || first_ldroperand2->isVReg()) && (second_ldroperand2->isReg() || second_ldroperand2->isVReg()))
    {
        if(second_ldroperand_num == 2)
        {
            printf("before ldr ldr num = 2\n");
            if(first_ldroperand2->getReg() == second_ldroperand2->getReg())//这里比的是寄存器号
            {
                //下面的操作2和3完全相同
                printf("new mov to replace ldr1");
                MovMInstruction* mov = new MovMInstruction(block, MovMInstruction::MOV, second_ldroperand1, first_ldroperand1);
                block->insertBefore(mov, second_ldr_inst);//在指令列表里找second_ldr_inst，在它前面插一条mov
                //instToRemove->insert(second_ldr_inst);//然后把second_ldr_inst删了
                block->remove(second_ldr_inst);
            }
        }
        else{
            printf("before ldr ldr num = 3\n");
            //下面的if里比的是第二个参数的寄存器号和第三个参数的值，因为第三个参数一定是个立即数？？
            if(first_ldroperand2->getReg() == second_ldroperand2->getReg() && first_ldroperand3->getVal() == second_ldroperand3->getVal())
            {
                printf("new mov to replace ldr1");
                MovMInstruction* mov = new MovMInstruction(block, MovMInstruction::MOV, second_ldroperand1, first_ldroperand1);
                block->insertBefore(mov, second_ldr_inst);
                //instToRemove->insert(second_ldr_inst);
                block->remove(second_ldr_inst);
            }
        }
    }

    return 0;//代表instr_list中第0条指令的位置是替换过的新指令的位置
}

int PeepholeMInstrOpt::LdrVMovVSub2VNeg(MachineBlock* block, MachineInstruction* ldr_inst, MachineInstruction* vmov_inst, MachineInstruction* vsub_inst, std::set<MachineInstruction*>* instToRemove)
{
    printf("now in LdrVMovVSub2VNeg\n");

    //处理load指令
    int ldroperand_num = 0;
    MachineOperand* ldroperand1, *ldroperand2, *ldroperand3;
    //下面这些if语句是为了避免取数组值时访问越界
    if(ldr_inst->getDef().size() > 0)
    {
        ldroperand1 = ldr_inst->getDef()[0];
        ldroperand_num = 1;
    }
    if(ldr_inst->getUse().size() > 0)
    {
        ldroperand2 = ldr_inst->getUse()[0];
        ldroperand_num = 2;
    }
    if(ldr_inst->getUse().size() > 1)
    {
        ldroperand3 = ldr_inst->getUse()[1];
        ldroperand_num = 3;
    }

    //处理vmov指令
    int vmovoperand_num = 0;
    MachineOperand* vmovoperand1, *vmovoperand2;
    if(vmov_inst->getDef().size() > 0)
    {
        vmovoperand1 = vmov_inst->getDef()[0];
    }
    if(vmov_inst->getUse().size() > 0)
    {
        vmovoperand2 = vmov_inst->getUse()[0];
    }

    //处理vsub指令
    int vsuboperand_num = 0;
    MachineOperand* vsuboperand1, *vsuboperand2, *vsuboperand3;
    //下面这些if语句是为了避免取数组值时访问越界
    if(vsub_inst->getDef().size() > 0)
    {
        vsuboperand1 = vsub_inst->getDef()[0];
        vsuboperand_num = 1;
    }
    if(vsub_inst->getUse().size() > 0)
    {
        vsuboperand2 = vsub_inst->getUse()[0];
        vsuboperand_num = 2;
    }
    if(vsub_inst->getUse().size() > 1)
    {
        vsuboperand3 = vsub_inst->getUse()[1];
        vsuboperand_num = 3;
    }

    //0406 wzr: 我们能处理的浮点数取负形式如下，一点不能变化
    // ldr r4, =0
	// vmov s6, r4
	// vsub.f32 s7, s6, s5

    printf("float vneg1\n");
    if(!(ldroperand1->isReg() || ldroperand1->isVReg()) || !ldroperand2->isImm() || ldroperand2->getVal() != 0)return -1;
    printf("float vneg2\n");
    if(!(vmovoperand1->isReg() || vmovoperand1->isVReg()) || !(vmovoperand2->isReg() || vmovoperand2->isVReg()))return -1;
    printf("float vneg3\n");
    if(vmovoperand2->getReg() != ldroperand1->getReg())return -1;
    printf("float vneg4\n");
    if(!(vsuboperand1->isReg() || vsuboperand1->isVReg()) || !(vsuboperand2->isReg() || vsuboperand2->isVReg()) || !(vsuboperand3->isReg() || vsuboperand3->isVReg()))return -1;
    printf("float vneg5\n");
    if(vsuboperand2->isImm() || vsuboperand3->isImm())return -1;
    printf("float vneg6\n");
    if(vsuboperand2->getReg() != vmovoperand1->getReg())return -1;
    printf("float vneg7\n");

    //如果能通过上面的检查，进入下面vneg指令的生成
    MachineInstruction* vneg = new VNegMInstruction(block, VNegMInstruction::F32, vsuboperand1, vsuboperand3);
    block->insertBefore(vneg, ldr_inst);
    // instToRemove->insert(ldr_inst);
    // instToRemove->insert(vmov_inst);
    // instToRemove->insert(vsub_inst);
    block->remove(ldr_inst);
    block->remove(vmov_inst);
    block->remove(vsub_inst);

    return 0;
}

void PeepholeMInstrOpt::pass() 
{
    //printf("before opt pass1\n");
    for (int func_iter = 0; func_iter < mUnit->getFuncs().size(); func_iter++) {
        //printf("before opt pass2\n");
        auto func = mUnit->getFuncs()[func_iter];
        for (int block_iter = 0; block_iter < func->getBlocks().size(); block_iter++) {
            //printf("before opt pass3\n");
            auto block = func->getBlocks()[block_iter];
            if (block->getInsts().empty()) {
                continue;
            }
            //auto next_inst_iter = next(curr_inst_iter, 1);

            std::set<MachineInstruction*> instToRemove;
            int curr_inst_iter = 0;
            int block_size = block->getInsts().size();
            for (; curr_inst_iter < block_size; curr_inst_iter++) 
            {
                //printf("before opt pass4\n");
                std::vector<MachineInstruction*> instr_list;
                MachineInstruction* first_inst = block->getInsts()[curr_inst_iter];
                MachineInstruction* second_inst, *third_inst, *forth_inst;
                instr_list.push_back(first_inst);
                //printf("before opt pass5\n");
                for(int winsize = window_size - 1; winsize >= 2; winsize --)
                {
                    //printf("in winsize\n");
                    if(curr_inst_iter + 1 < block_size)
                    {
                        second_inst = block->getInsts()[curr_inst_iter + 1];
                        instr_list.push_back(second_inst);
                    }
                    if(curr_inst_iter + 2 < block_size)
                    {
                        third_inst = block->getInsts()[curr_inst_iter + 2];
                        instr_list.push_back(third_inst);
                    }
                    if(curr_inst_iter + 3 < block_size)
                    {
                        forth_inst = block->getInsts()[curr_inst_iter + 3];
                        instr_list.push_back(forth_inst);
                    }
                    // printf("before instr_pattern code\n");
                    int code = instr_pattern_code(winsize, instr_list);
                    // printf("after instr_pattern code\n");
                    if(pattern_map.find(code) != pattern_map.end())
                    {
                        //int replace_no = *(pattern_map.find(code))(winsize, instr_list);
                        //printf("before opt pass5-0\n");
                        int replace_no = 0;
                        switch(pattern_map[code])
                        {
                            case MULADD2MLA_FUNC:
                                //printf("before opt pass5-1\n");
                                replace_no = MulAdd2Mla(block, first_inst, second_inst, &instToRemove);
                                //printf("instToRemove.size() = %d\n", instToRemove.size());
                                //printf("before opt pass5-2\n");
                                break;
                            case STRLDR2STRMOV_FUNC:
                                replace_no = StrLdr2StrMov(block, first_inst, second_inst, &instToRemove);
                                break;
                            case LDRVMOVVSUB2VNEG_FUNC:
                                replace_no = LdrVMovVSub2VNeg(block, first_inst, second_inst, third_inst, &instToRemove);
                                break;
                            //default:
                        }
                        // if(replace_no == -1)continue;
                        // //比如1位置的指令替换掉了，就回退(1-4)格，再加上for中那个curr_inst_iter++
                        // curr_inst_iter += (replace_no - window_size);
                        if(curr_inst_iter < -1)
                        {
                            printf("curr_inst_iter < -1!!\n");
                            assert(0);
                        }
                        break;
                    }
                }
                //printf("before opt pass6\n");
            }
            for (auto inst : instToRemove) {
                //printf("removing\n");
                block->remove(inst);
            }
        }
    }

}

int PeepholeMInstrOpt::instr_pattern_code(int instr_num, std::vector<MachineInstruction*> instr_list)
{
    int size = std::min(instr_num, (int)instr_list.size());
    if(size < 1)
    {
        printf("PeepholeMInstrOpt::instr_pattern_code get an instr_list with no size!\n");
        return 0;
    }
    uint32_t code = instr_list[0]->pattern_code();
    // printf("start code = %d\n", code);
    // printf("now in instr_pattern code, instr_num = %d\n", instr_num);
    for(int i = 1; i < size; i ++)
    {
        //printf("instr_list[i]->pattern_code() = %d\n", instr_list[i]->pattern_code());
        //printf("instr_list[i]->getNo = %d\n", instr_list[i]->getNo());
        code = code << 8;
        code += instr_list[i]->pattern_code();
        // printf("code = %d\n", code);
    }
    return code;
}

#endif  // __PEEPHOLE_OPTIMIZATION_H__