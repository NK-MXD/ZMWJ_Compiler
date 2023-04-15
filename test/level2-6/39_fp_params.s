	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global params_f40
	.type params_f40 , %function
params_f40:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	vpush {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	mov fp, sp
	ldr r4, =256
	sub sp, sp, r4
.L1516:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	vldr.32 s4, [fp, #128]
	vstr.32 s4, [fp, #-20]
	vldr.32 s4, [fp, #132]
	vstr.32 s4, [fp, #-24]
	vldr.32 s4, [fp, #136]
	vstr.32 s4, [fp, #-28]
	vldr.32 s4, [fp, #140]
	vstr.32 s4, [fp, #-32]
	vldr.32 s4, [fp, #144]
	vstr.32 s4, [fp, #-36]
	vldr.32 s4, [fp, #148]
	vstr.32 s4, [fp, #-40]
	vldr.32 s4, [fp, #152]
	vstr.32 s4, [fp, #-44]
	vldr.32 s4, [fp, #156]
	vstr.32 s4, [fp, #-48]
	vldr.32 s4, [fp, #160]
	vstr.32 s4, [fp, #-52]
	vldr.32 s4, [fp, #164]
	vstr.32 s4, [fp, #-56]
	vldr.32 s4, [fp, #168]
	vstr.32 s4, [fp, #-60]
	vldr.32 s4, [fp, #172]
	vstr.32 s4, [fp, #-64]
	vldr.32 s4, [fp, #176]
	vstr.32 s4, [fp, #-68]
	vldr.32 s4, [fp, #180]
	vstr.32 s4, [fp, #-72]
	vldr.32 s4, [fp, #184]
	vstr.32 s4, [fp, #-76]
	vldr.32 s4, [fp, #188]
	vstr.32 s4, [fp, #-80]
	vldr.32 s4, [fp, #192]
	vstr.32 s4, [fp, #-84]
	vldr.32 s4, [fp, #196]
	vstr.32 s4, [fp, #-88]
	vldr.32 s4, [fp, #200]
	vstr.32 s4, [fp, #-92]
	vldr.32 s4, [fp, #204]
	vstr.32 s4, [fp, #-96]
	vldr.32 s4, [fp, #208]
	vstr.32 s4, [fp, #-100]
	vldr.32 s4, [fp, #212]
	vstr.32 s4, [fp, #-104]
	vldr.32 s4, [fp, #216]
	vstr.32 s4, [fp, #-108]
	vldr.32 s4, [fp, #220]
	vstr.32 s4, [fp, #-112]
	vldr.32 s4, [fp, #224]
	vstr.32 s4, [fp, #-116]
	vldr.32 s4, [fp, #228]
	vstr.32 s4, [fp, #-120]
	vldr.32 s4, [fp, #232]
	vstr.32 s4, [fp, #-124]
	vldr.32 s4, [fp, #236]
	vstr.32 s4, [fp, #-128]
	vldr.32 s4, [fp, #240]
	vstr.32 s4, [fp, #-132]
	vldr.32 s4, [fp, #244]
	vstr.32 s4, [fp, #-136]
	vldr.32 s4, [fp, #248]
	vstr.32 s4, [fp, #-140]
	vldr.32 s4, [fp, #252]
	vstr.32 s4, [fp, #-144]
	vldr.32 s4, [fp, #256]
	vstr.32 s4, [fp, #-148]
	vldr.32 s4, [fp, #260]
	vstr.32 s4, [fp, #-152]
	vldr.32 s4, [fp, #264]
	vstr.32 s4, [fp, #-156]
	vldr.32 s4, [fp, #268]
	vstr.32 s4, [fp, #-160]
	vldr.32 s5, [fp, #-160]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	bne .L1557
	b .L1562
.L1557:
	add r0, fp, #-200
	mov r1, #0
	mov r2, #40
	bl memset
	vldr.32 s5, [fp, #-4]
	vldr.32 s4, [fp, #-8]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-12]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-16]
	vadd.f32 s4, s5, s4
	mov r1, #0
	mov r2, #-200
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-20]
	vldr.32 s4, [fp, #-24]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-28]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-32]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-36]
	vldr.32 s4, [fp, #-40]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-44]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-48]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-52]
	vldr.32 s4, [fp, #-56]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-60]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-64]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-68]
	vldr.32 s4, [fp, #-72]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-76]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-80]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-84]
	vldr.32 s4, [fp, #-88]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-92]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-96]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-100]
	vldr.32 s4, [fp, #-104]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-108]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-112]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-116]
	vldr.32 s4, [fp, #-120]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-124]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-128]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-132]
	vldr.32 s4, [fp, #-136]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-140]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-144]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-148]
	vldr.32 s4, [fp, #-152]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-156]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-160]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	mov r1, #0
	mov r2, #-200
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #10
	bl putfarray
	ldr r1, addr_k0
	ldr r2, [r1]
	mov r3, #-200
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	ldr r1, =256
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
addr_k0:
	.word k
.F0:
.L1558:
	vldr.32 s0, [fp, #-8]
	vldr.32 s1, [fp, #-12]
	vldr.32 s2, [fp, #-16]
	vstr.32 s2, [fp, #-204]
	vldr.32 s2, [fp, #-20]
	vstr.32 s2, [fp, #-208]
	vldr.32 s2, [fp, #-24]
	vstr.32 s2, [fp, #-212]
	vldr.32 s2, [fp, #-28]
	vstr.32 s2, [fp, #-216]
	vldr.32 s2, [fp, #-32]
	vstr.32 s2, [fp, #-220]
	vldr.32 s2, [fp, #-36]
	vstr.32 s2, [fp, #-224]
	vldr.32 s2, [fp, #-40]
	vstr.32 s2, [fp, #-228]
	vldr.32 s2, [fp, #-44]
	vstr.32 s2, [fp, #-232]
	vldr.32 s2, [fp, #-48]
	vstr.32 s2, [fp, #-236]
	vldr.32 s2, [fp, #-52]
	vstr.32 s2, [fp, #-240]
	vldr.32 s2, [fp, #-56]
	vstr.32 s2, [fp, #-244]
	vldr.32 s2, [fp, #-60]
	vstr.32 s2, [fp, #-248]
	vldr.32 s2, [fp, #-64]
	vstr.32 s2, [fp, #-252]
	vldr.32 s2, [fp, #-68]
	ldr r0, =-256
	add r0, fp, r0
	vstr.32 s2, [r0]
	vldr.32 s31, [fp, #-72]
	vldr.32 s30, [fp, #-76]
	vldr.32 s29, [fp, #-80]
	vldr.32 s28, [fp, #-84]
	vldr.32 s27, [fp, #-88]
	vldr.32 s26, [fp, #-92]
	vldr.32 s25, [fp, #-96]
	vldr.32 s24, [fp, #-100]
	vldr.32 s23, [fp, #-104]
	vldr.32 s22, [fp, #-108]
	vldr.32 s21, [fp, #-112]
	vldr.32 s20, [fp, #-116]
	vldr.32 s19, [fp, #-120]
	vldr.32 s18, [fp, #-124]
	vldr.32 s17, [fp, #-128]
	vldr.32 s16, [fp, #-132]
	vldr.32 s11, [fp, #-136]
	vldr.32 s10, [fp, #-140]
	vldr.32 s9, [fp, #-144]
	vldr.32 s8, [fp, #-148]
	vldr.32 s7, [fp, #-152]
	vldr.32 s6, [fp, #-156]
	vldr.32 s5, [fp, #-160]
	vldr.32 s3, [fp, #-4]
	vldr.32 s2, [fp, #-8]
	vadd.f32 s3, s3, s2
	vldr.32 s2, [fp, #-12]
	vadd.f32 s4, s3, s2
	vldr.32 s2, [fp, #-204]
	vldr.32 s3, [fp, #-208]
	vpush {s4}
	vpush {s5}
	vpush {s6}
	vpush {s7}
	vpush {s8}
	vpush {s9}
	vpush {s10}
	vpush {s11}
	vpush {s16}
	vpush {s17}
	vpush {s18}
	vpush {s19}
	vpush {s20}
	vpush {s21}
	vpush {s22}
	vpush {s23}
	vpush {s24}
	vpush {s25}
	vpush {s26}
	vpush {s27}
	vpush {s28}
	vpush {s29}
	vpush {s30}
	vpush {s31}
	ldr r0, =-256
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	vldr.32 s4, [fp, #-252]
	vpush {s4}
	vldr.32 s4, [fp, #-248]
	vpush {s4}
	vldr.32 s4, [fp, #-244]
	vpush {s4}
	vldr.32 s4, [fp, #-240]
	vpush {s4}
	vldr.32 s4, [fp, #-236]
	vpush {s4}
	vldr.32 s4, [fp, #-232]
	vpush {s4}
	vldr.32 s4, [fp, #-228]
	vpush {s4}
	vldr.32 s4, [fp, #-224]
	vpush {s4}
	vldr.32 s4, [fp, #-220]
	vpush {s4}
	vldr.32 s4, [fp, #-216]
	vpush {s4}
	vldr.32 s4, [fp, #-212]
	vpush {s4}
	bl params_f40
	add sp, sp, #144
	ldr r1, =256
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, fp, lr}
	bx lr
.L1562:
	b .L1558

	.global params_f40_i24
	.type params_f40_i24 , %function
params_f40_i24:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	vpush {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	mov fp, sp
	ldr r4, =440
	sub sp, sp, r4
.L1576:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	vstr.32 s0, [fp, #-16]
	str r3, [fp, #-20]
	ldr r3, [fp, #152]
	str r3, [fp, #-24]
	ldr r3, [fp, #156]
	str r3, [fp, #-28]
	vstr.32 s1, [fp, #-32]
	vstr.32 s2, [fp, #-36]
	vstr.32 s3, [fp, #-40]
	ldr r3, [fp, #160]
	str r3, [fp, #-44]
	vldr.32 s4, [fp, #164]
	vstr.32 s4, [fp, #-48]
	vldr.32 s4, [fp, #168]
	vstr.32 s4, [fp, #-52]
	ldr r3, [fp, #172]
	str r3, [fp, #-56]
	vldr.32 s4, [fp, #176]
	vstr.32 s4, [fp, #-60]
	ldr r3, [fp, #180]
	str r3, [fp, #-64]
	vldr.32 s4, [fp, #184]
	vstr.32 s4, [fp, #-68]
	vldr.32 s4, [fp, #188]
	vstr.32 s4, [fp, #-72]
	vldr.32 s4, [fp, #192]
	vstr.32 s4, [fp, #-76]
	vldr.32 s4, [fp, #196]
	vstr.32 s4, [fp, #-80]
	vldr.32 s4, [fp, #200]
	vstr.32 s4, [fp, #-84]
	vldr.32 s4, [fp, #204]
	vstr.32 s4, [fp, #-88]
	ldr r3, [fp, #208]
	str r3, [fp, #-92]
	vldr.32 s4, [fp, #212]
	vstr.32 s4, [fp, #-96]
	ldr r3, [fp, #216]
	str r3, [fp, #-100]
	ldr r3, [fp, #220]
	str r3, [fp, #-104]
	vldr.32 s4, [fp, #224]
	vstr.32 s4, [fp, #-108]
	vldr.32 s4, [fp, #228]
	vstr.32 s4, [fp, #-112]
	vldr.32 s4, [fp, #232]
	vstr.32 s4, [fp, #-116]
	vldr.32 s4, [fp, #236]
	vstr.32 s4, [fp, #-120]
	vldr.32 s4, [fp, #240]
	vstr.32 s4, [fp, #-124]
	ldr r3, [fp, #244]
	str r3, [fp, #-128]
	vldr.32 s4, [fp, #248]
	vstr.32 s4, [fp, #-132]
	ldr r3, [fp, #252]
	str r3, [fp, #-136]
	vldr.32 s4, [fp, #256]
	vstr.32 s4, [fp, #-140]
	vldr.32 s4, [fp, #260]
	vstr.32 s4, [fp, #-144]
	vldr.32 s4, [fp, #264]
	vstr.32 s4, [fp, #-148]
	vldr.32 s4, [fp, #268]
	vstr.32 s4, [fp, #-152]
	ldr r3, [fp, #272]
	str r3, [fp, #-156]
	ldr r3, [fp, #276]
	str r3, [fp, #-160]
	vldr.32 s4, [fp, #280]
	vstr.32 s4, [fp, #-164]
	vldr.32 s4, [fp, #284]
	vstr.32 s4, [fp, #-168]
	vldr.32 s4, [fp, #288]
	vstr.32 s4, [fp, #-172]
	ldr r3, [fp, #292]
	str r3, [fp, #-176]
	vldr.32 s4, [fp, #296]
	vstr.32 s4, [fp, #-180]
	ldr r3, [fp, #300]
	str r3, [fp, #-184]
	ldr r3, [fp, #304]
	str r3, [fp, #-188]
	vldr.32 s4, [fp, #308]
	vstr.32 s4, [fp, #-192]
	vldr.32 s4, [fp, #312]
	vstr.32 s4, [fp, #-196]
	vldr.32 s4, [fp, #316]
	vstr.32 s4, [fp, #-200]
	vldr.32 s4, [fp, #320]
	vstr.32 s4, [fp, #-204]
	ldr r3, [fp, #324]
	str r3, [fp, #-208]
	ldr r3, [fp, #328]
	str r3, [fp, #-212]
	ldr r3, [fp, #332]
	str r3, [fp, #-216]
	vldr.32 s4, [fp, #336]
	vstr.32 s4, [fp, #-220]
	vldr.32 s4, [fp, #340]
	vstr.32 s4, [fp, #-224]
	vldr.32 s4, [fp, #344]
	vstr.32 s4, [fp, #-228]
	vldr.32 s4, [fp, #348]
	vstr.32 s4, [fp, #-232]
	vldr.32 s4, [fp, #352]
	vstr.32 s4, [fp, #-236]
	vldr.32 s4, [fp, #356]
	vstr.32 s4, [fp, #-240]
	ldr r3, [fp, #360]
	str r3, [fp, #-244]
	vldr.32 s4, [fp, #364]
	vstr.32 s4, [fp, #-248]
	ldr r3, [fp, #368]
	str r3, [fp, #-252]
	ldr r0, =-256
	add r0, fp, r0
	vldr.32 s4, [fp, #372]
	vstr.32 s4, [r0]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L1641
	b .L1646
.L1641:
	ldr r0, =-296
	add r0, fp, r0
	mov r1, #0
	mov r2, #40
	bl memset
	vldr.32 s5, [fp, #-172]
	vldr.32 s4, [fp, #-76]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-248]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-48]
	vadd.f32 s4, s5, s4
	mov r1, #0
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-16]
	vldr.32 s4, [fp, #-148]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-88]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-40]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-32]
	vldr.32 s4, [fp, #-120]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-168]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-80]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-72]
	vldr.32 s4, [fp, #-200]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-164]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-36]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-144]
	vldr.32 s4, [fp, #-240]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-220]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-224]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-108]
	vldr.32 s4, [fp, #-140]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-228]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-116]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-196]
	vldr.32 s4, [fp, #-124]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-232]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-192]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-52]
	vldr.32 s4, [fp, #-204]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-68]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-180]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-96]
	vldr.32 s4, [fp, #-112]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-152]
	vadd.f32 s5, s5, s4
	ldr r1, =-256
	add r1, fp, r1
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-236]
	vldr.32 s4, [fp, #-60]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-84]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-132]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r0, =-328
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	ldr r1, [fp, #-56]
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r3, r1, r0
	mov r1, #0
	ldr r2, =-328
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	str r3, [r2]
	ldr r1, [fp, #-208]
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-160]
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-184]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-176]
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-252]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-244]
	ldr r0, [fp, #-188]
	add r1, r1, r0
	ldr r0, [fp, #-136]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-156]
	ldr r0, [fp, #-64]
	add r1, r1, r0
	ldr r0, [fp, #-216]
	add r0, r1, r0
	add r2, r2, #4
	str r0, [r2]
	ldr r1, [fp, #-212]
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r1, r1, r0
	add r0, r2, #4
	str r1, [r0]
	mov r1, #0
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #10
	bl putfarray
	mov r1, #0
	ldr r2, =-328
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #8
	bl putarray
	ldr r2, =0
	ldr r1, =-332
	str r2, [fp, r1]
	b .L1670
	b .F1
.LTORG
addr_k1:
	.word k
.F1:
.L1642:
	ldr r2, [fp, #-20]
	ldr r3, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r0, =-440
	str r1, [fp, r0]
	vldr.32 s0, [fp, #-16]
	ldr r1, [fp, #-20]
	ldr r0, =-336
	str r1, [fp, r0]
	ldr r1, [fp, #-24]
	ldr r0, =-340
	str r1, [fp, r0]
	ldr r1, [fp, #-28]
	ldr r0, =-344
	str r1, [fp, r0]
	vldr.32 s1, [fp, #-32]
	vldr.32 s2, [fp, #-36]
	vldr.32 s3, [fp, #-40]
	ldr r1, [fp, #-44]
	ldr r0, =-348
	str r1, [fp, r0]
	vldr.32 s4, [fp, #-48]
	ldr r0, =-352
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-52]
	ldr r0, =-356
	add r0, fp, r0
	vstr.32 s4, [r0]
	ldr r1, [fp, #-56]
	ldr r0, =-360
	str r1, [fp, r0]
	vldr.32 s4, [fp, #-60]
	ldr r0, =-364
	add r0, fp, r0
	vstr.32 s4, [r0]
	ldr r1, [fp, #-64]
	ldr r0, =-368
	str r1, [fp, r0]
	vldr.32 s4, [fp, #-68]
	ldr r0, =-372
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-72]
	ldr r0, =-376
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-76]
	ldr r0, =-380
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-80]
	ldr r0, =-384
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-84]
	ldr r0, =-388
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-88]
	ldr r0, =-392
	add r0, fp, r0
	vstr.32 s4, [r0]
	ldr r1, [fp, #-92]
	ldr r0, =-396
	str r1, [fp, r0]
	vldr.32 s4, [fp, #-96]
	ldr r0, =-400
	add r0, fp, r0
	vstr.32 s4, [r0]
	ldr r1, [fp, #-100]
	ldr r0, =-404
	str r1, [fp, r0]
	ldr r1, [fp, #-104]
	ldr r0, =-408
	str r1, [fp, r0]
	vldr.32 s4, [fp, #-108]
	ldr r0, =-412
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s4, [fp, #-112]
	ldr r0, =-416
	add r0, fp, r0
	vstr.32 s4, [r0]
	vldr.32 s31, [fp, #-116]
	vldr.32 s30, [fp, #-120]
	vldr.32 s29, [fp, #-124]
	ldr r1, [fp, #-128]
	ldr r0, =-420
	str r1, [fp, r0]
	vldr.32 s28, [fp, #-132]
	ldr r1, [fp, #-136]
	ldr r0, =-424
	str r1, [fp, r0]
	vldr.32 s27, [fp, #-140]
	vldr.32 s26, [fp, #-144]
	vldr.32 s25, [fp, #-148]
	vldr.32 s24, [fp, #-152]
	ldr r1, [fp, #-156]
	ldr r0, =-428
	str r1, [fp, r0]
	ldr r1, [fp, #-160]
	ldr r0, =-432
	str r1, [fp, r0]
	vldr.32 s23, [fp, #-164]
	vldr.32 s22, [fp, #-168]
	vldr.32 s21, [fp, #-172]
	ldr r1, [fp, #-176]
	ldr r0, =-436
	str r1, [fp, r0]
	vldr.32 s20, [fp, #-180]
	ldr r10, [fp, #-184]
	ldr r9, [fp, #-188]
	vldr.32 s19, [fp, #-192]
	vldr.32 s18, [fp, #-196]
	vldr.32 s17, [fp, #-200]
	vldr.32 s16, [fp, #-204]
	ldr r8, [fp, #-208]
	ldr r7, [fp, #-212]
	ldr r6, [fp, #-216]
	vldr.32 s11, [fp, #-220]
	vldr.32 s10, [fp, #-224]
	vldr.32 s9, [fp, #-228]
	vldr.32 s8, [fp, #-232]
	vldr.32 s7, [fp, #-236]
	vldr.32 s6, [fp, #-240]
	ldr r5, [fp, #-244]
	vldr.32 s5, [fp, #-248]
	ldr r4, [fp, #-252]
	ldr r0, =-256
	add r0, fp, r0
	vldr.32 s4, [r0]
	mov r0, r2
	mov r1, r3
	ldr r2, =-440
	ldr r2, [fp, r2]
	ldr r3, =-336
	ldr r3, [fp, r3]
	vpush {s4}
	push {r4}
	vpush {s5}
	push {r5}
	vpush {s6}
	vpush {s7}
	vpush {s8}
	vpush {s9}
	vpush {s10}
	vpush {s11}
	push {r6}
	push {r7}
	push {r8}
	vpush {s16}
	vpush {s17}
	vpush {s18}
	vpush {s19}
	push {r9}
	push {r10}
	vpush {s20}
	ldr r4, =-436
	ldr r4, [fp, r4]
	push {r4}
	vpush {s21}
	vpush {s22}
	vpush {s23}
	ldr r4, =-432
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-428
	ldr r4, [fp, r4]
	push {r4}
	vpush {s24}
	vpush {s25}
	vpush {s26}
	vpush {s27}
	ldr r4, =-424
	ldr r4, [fp, r4]
	push {r4}
	vpush {s28}
	ldr r4, =-420
	ldr r4, [fp, r4]
	push {r4}
	vpush {s29}
	vpush {s30}
	vpush {s31}
	ldr r4, =-416
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-412
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-408
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-404
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-400
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-396
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-392
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-388
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-384
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-380
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-376
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-372
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-368
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-364
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-360
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-356
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-352
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-348
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-344
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-340
	ldr r4, [fp, r4]
	push {r4}
	bl params_f40_i24
	add sp, sp, #224
	ldr r1, =440
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F2
.LTORG
addr_k2:
	.word k
.F2:
.L1646:
	b .L1642
.L1670:
	ldr r1, =-332
	ldr r1, [fp, r1]
	cmp r1, #8
	movlt r1, #1
	movge r1, #0
	blt .L1671
	b .L1675
.L1671:
	ldr r1, =-332
	ldr r2, [fp, r1]
	ldr r3, =-328
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	ldr r1, =-332
	ldr r2, [fp, r1]
	ldr r3, =-296
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32  s0, s0
	vmov r4, s0
	ldr r1, =-332
	ldr r2, [fp, r1]
	ldr r3, =-328
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r4, [r1]
	ldr r1, =-332
	ldr r1, [fp, r1]
	add r2, r1, #1
	ldr r1, =-332
	str r2, [fp, r1]
	b .L1670
.L1672:
	ldr r1, addr_k3
	ldr r2, [r1]
	ldr r3, =-328
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	ldr r1, =440
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1675:
	b .L1672

	.global params_fa40
	.type params_fa40 , %function
params_fa40:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	ldr r4, =328
	sub sp, sp, r4
.L1679:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #48]
	str r3, [fp, #-20]
	ldr r3, [fp, #52]
	str r3, [fp, #-24]
	ldr r3, [fp, #56]
	str r3, [fp, #-28]
	ldr r3, [fp, #60]
	str r3, [fp, #-32]
	ldr r3, [fp, #64]
	str r3, [fp, #-36]
	ldr r3, [fp, #68]
	str r3, [fp, #-40]
	ldr r3, [fp, #72]
	str r3, [fp, #-44]
	ldr r3, [fp, #76]
	str r3, [fp, #-48]
	ldr r3, [fp, #80]
	str r3, [fp, #-52]
	ldr r3, [fp, #84]
	str r3, [fp, #-56]
	ldr r3, [fp, #88]
	str r3, [fp, #-60]
	ldr r3, [fp, #92]
	str r3, [fp, #-64]
	ldr r3, [fp, #96]
	str r3, [fp, #-68]
	ldr r3, [fp, #100]
	str r3, [fp, #-72]
	ldr r3, [fp, #104]
	str r3, [fp, #-76]
	ldr r3, [fp, #108]
	str r3, [fp, #-80]
	ldr r3, [fp, #112]
	str r3, [fp, #-84]
	ldr r3, [fp, #116]
	str r3, [fp, #-88]
	ldr r3, [fp, #120]
	str r3, [fp, #-92]
	ldr r3, [fp, #124]
	str r3, [fp, #-96]
	ldr r3, [fp, #128]
	str r3, [fp, #-100]
	ldr r3, [fp, #132]
	str r3, [fp, #-104]
	ldr r3, [fp, #136]
	str r3, [fp, #-108]
	ldr r3, [fp, #140]
	str r3, [fp, #-112]
	ldr r3, [fp, #144]
	str r3, [fp, #-116]
	ldr r3, [fp, #148]
	str r3, [fp, #-120]
	ldr r3, [fp, #152]
	str r3, [fp, #-124]
	ldr r3, [fp, #156]
	str r3, [fp, #-128]
	ldr r3, [fp, #160]
	str r3, [fp, #-132]
	ldr r3, [fp, #164]
	str r3, [fp, #-136]
	ldr r3, [fp, #168]
	str r3, [fp, #-140]
	ldr r3, [fp, #172]
	str r3, [fp, #-144]
	ldr r3, [fp, #176]
	str r3, [fp, #-148]
	ldr r3, [fp, #180]
	str r3, [fp, #-152]
	ldr r3, [fp, #184]
	str r3, [fp, #-156]
	ldr r3, [fp, #188]
	str r3, [fp, #-160]
	add r0, fp, #-200
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r2, [fp, #-4]
	ldr r0, addr_k3
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s5, [r0]
	ldr r2, [fp, #-8]
	ldr r0, addr_k3
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	vadd.f32 s5, s5, s4
	ldr r2, [fp, #-12]
	ldr r0, addr_k3
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	vadd.f32 s5, s5, s4
	ldr r2, [fp, #-16]
	ldr r0, addr_k3
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	vadd.f32 s4, s5, s4
	mov r1, #0
	mov r2, #-200
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r3, [fp, #-20]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-24]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-28]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-32]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-36]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-40]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-44]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-48]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-52]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-56]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-60]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-64]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-68]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-72]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-76]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-80]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-84]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-88]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-92]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-96]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-100]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	ldr r2, [fp, #-104]
	ldr r1, addr_k3
	ldr r1, [r1]
	mov r3, #4
	mla r1, r1, r3, r2
	vldr.32 s5, [r1]
	vadd.f32 s5, s4, s5
	ldr r3, [fp, #-108]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-112]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-116]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-120]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-124]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-128]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-132]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-136]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-140]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-144]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-148]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-152]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-156]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-160]
	ldr r1, addr_k3
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r2, [fp, #-160]
	ldr r0, addr_k3
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s5, [r0]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	vmov s4, r0
	vcvt.f32.s32  s5, s4
	ldr r0, =0
	vmov s4, r0
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L1812
	b .L1830
	b .F3
.LTORG
addr_k3:
	.word k
.F3:
.L1812:
	mov r1, #0
	mov r2, #-200
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #10
	bl putfarray
	ldr r1, addr_k4
	ldr r2, [r1]
	mov r3, #-200
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	ldr r1, =328
	add sp, sp, r1
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1813:
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-12]
	str r0, [fp, #-204]
	ldr r0, [fp, #-16]
	str r0, [fp, #-208]
	ldr r0, [fp, #-20]
	str r0, [fp, #-212]
	ldr r0, [fp, #-24]
	str r0, [fp, #-216]
	ldr r0, [fp, #-28]
	str r0, [fp, #-220]
	ldr r0, [fp, #-32]
	str r0, [fp, #-224]
	ldr r0, [fp, #-36]
	str r0, [fp, #-228]
	ldr r0, [fp, #-40]
	str r0, [fp, #-232]
	ldr r0, [fp, #-44]
	str r0, [fp, #-236]
	ldr r0, [fp, #-48]
	str r0, [fp, #-240]
	ldr r0, [fp, #-52]
	str r0, [fp, #-244]
	ldr r0, [fp, #-56]
	str r0, [fp, #-248]
	ldr r0, [fp, #-60]
	str r0, [fp, #-252]
	ldr r1, [fp, #-64]
	ldr r0, =-256
	str r1, [fp, r0]
	ldr r1, [fp, #-68]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, [fp, #-72]
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r1, [fp, #-76]
	ldr r0, =-268
	str r1, [fp, r0]
	ldr r1, [fp, #-80]
	ldr r0, =-272
	str r1, [fp, r0]
	ldr r1, [fp, #-84]
	ldr r0, =-276
	str r1, [fp, r0]
	ldr r1, [fp, #-88]
	ldr r0, =-280
	str r1, [fp, r0]
	ldr r1, [fp, #-92]
	ldr r0, =-284
	str r1, [fp, r0]
	ldr r1, [fp, #-96]
	ldr r0, =-288
	str r1, [fp, r0]
	ldr r1, [fp, #-100]
	ldr r0, =-292
	str r1, [fp, r0]
	ldr r1, [fp, #-104]
	ldr r0, =-296
	str r1, [fp, r0]
	ldr r1, [fp, #-108]
	ldr r0, =-300
	str r1, [fp, r0]
	ldr r1, [fp, #-112]
	ldr r0, =-304
	str r1, [fp, r0]
	ldr r1, [fp, #-116]
	ldr r0, =-308
	str r1, [fp, r0]
	ldr r1, [fp, #-120]
	ldr r0, =-312
	str r1, [fp, r0]
	ldr r1, [fp, #-124]
	ldr r0, =-316
	str r1, [fp, r0]
	ldr r1, [fp, #-128]
	ldr r0, =-320
	str r1, [fp, r0]
	ldr r1, [fp, #-132]
	ldr r0, =-324
	str r1, [fp, r0]
	ldr r1, [fp, #-136]
	ldr r0, =-328
	str r1, [fp, r0]
	ldr r10, [fp, #-140]
	ldr r9, [fp, #-144]
	ldr r8, [fp, #-148]
	ldr r7, [fp, #-152]
	ldr r6, [fp, #-156]
	ldr r5, [fp, #-160]
	mov r1, #0
	mov r2, #-200
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	ldr r1, [fp, #-204]
	ldr r2, [fp, #-208]
	ldr r3, [fp, #-212]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, =-328
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-324
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-320
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-316
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-312
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-308
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-304
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-300
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-296
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-292
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-288
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-284
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-280
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-276
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-272
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-268
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-264
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-260
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-256
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, [fp, #-252]
	push {r4}
	ldr r4, [fp, #-248]
	push {r4}
	ldr r4, [fp, #-244]
	push {r4}
	ldr r4, [fp, #-240]
	push {r4}
	ldr r4, [fp, #-236]
	push {r4}
	ldr r4, [fp, #-232]
	push {r4}
	ldr r4, [fp, #-228]
	push {r4}
	ldr r4, [fp, #-224]
	push {r4}
	ldr r4, [fp, #-220]
	push {r4}
	ldr r4, [fp, #-216]
	push {r4}
	bl params_fa40
	add sp, sp, #144
	ldr r1, =328
	add sp, sp, r1
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F4
.LTORG
addr_k4:
	.word k
.F4:
.L1830:
	b .L1813

	.global params_mix
	.type params_mix , %function
params_mix:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	vpush {s20, s21, s22, s23, s24, s25}
	mov fp, sp
	ldr r4, =480
	sub sp, sp, r4
.L1871:
	vstr.32 s0, [fp, #-4]
	str r0, [fp, #-8]
	str r1, [fp, #-12]
	str r2, [fp, #-16]
	vstr.32 s1, [fp, #-20]
	str r3, [fp, #-24]
	vstr.32 s2, [fp, #-28]
	vstr.32 s3, [fp, #-32]
	ldr r3, [fp, #128]
	str r3, [fp, #-36]
	ldr r3, [fp, #132]
	str r3, [fp, #-40]
	ldr r3, [fp, #136]
	str r3, [fp, #-44]
	ldr r3, [fp, #140]
	str r3, [fp, #-48]
	ldr r3, [fp, #144]
	str r3, [fp, #-52]
	ldr r3, [fp, #148]
	str r3, [fp, #-56]
	ldr r3, [fp, #152]
	str r3, [fp, #-60]
	ldr r3, [fp, #156]
	str r3, [fp, #-64]
	ldr r3, [fp, #160]
	str r3, [fp, #-68]
	ldr r3, [fp, #164]
	str r3, [fp, #-72]
	vldr.32 s4, [fp, #168]
	vstr.32 s4, [fp, #-76]
	vldr.32 s4, [fp, #172]
	vstr.32 s4, [fp, #-80]
	vldr.32 s4, [fp, #176]
	vstr.32 s4, [fp, #-84]
	ldr r3, [fp, #180]
	str r3, [fp, #-88]
	ldr r3, [fp, #184]
	str r3, [fp, #-92]
	vldr.32 s4, [fp, #188]
	vstr.32 s4, [fp, #-96]
	vldr.32 s4, [fp, #192]
	vstr.32 s4, [fp, #-100]
	vldr.32 s4, [fp, #196]
	vstr.32 s4, [fp, #-104]
	ldr r3, [fp, #200]
	str r3, [fp, #-108]
	ldr r3, [fp, #204]
	str r3, [fp, #-112]
	ldr r3, [fp, #208]
	str r3, [fp, #-116]
	ldr r3, [fp, #212]
	str r3, [fp, #-120]
	ldr r3, [fp, #216]
	str r3, [fp, #-124]
	vldr.32 s4, [fp, #220]
	vstr.32 s4, [fp, #-128]
	vldr.32 s4, [fp, #224]
	vstr.32 s4, [fp, #-132]
	ldr r3, [fp, #228]
	str r3, [fp, #-136]
	ldr r3, [fp, #232]
	str r3, [fp, #-140]
	ldr r3, [fp, #236]
	str r3, [fp, #-144]
	ldr r3, [fp, #240]
	str r3, [fp, #-148]
	vldr.32 s4, [fp, #244]
	vstr.32 s4, [fp, #-152]
	vldr.32 s4, [fp, #248]
	vstr.32 s4, [fp, #-156]
	ldr r3, [fp, #252]
	str r3, [fp, #-160]
	ldr r3, [fp, #256]
	str r3, [fp, #-164]
	ldr r3, [fp, #260]
	str r3, [fp, #-168]
	ldr r3, [fp, #264]
	str r3, [fp, #-172]
	vldr.32 s4, [fp, #268]
	vstr.32 s4, [fp, #-176]
	vldr.32 s4, [fp, #272]
	vstr.32 s4, [fp, #-180]
	ldr r3, [fp, #276]
	str r3, [fp, #-184]
	ldr r3, [fp, #280]
	str r3, [fp, #-188]
	ldr r3, [fp, #284]
	str r3, [fp, #-192]
	ldr r3, [fp, #288]
	str r3, [fp, #-196]
	ldr r3, [fp, #292]
	str r3, [fp, #-200]
	ldr r3, [fp, #296]
	str r3, [fp, #-204]
	vldr.32 s4, [fp, #300]
	vstr.32 s4, [fp, #-208]
	vldr.32 s4, [fp, #304]
	vstr.32 s4, [fp, #-212]
	ldr r3, [fp, #308]
	str r3, [fp, #-216]
	ldr r3, [fp, #312]
	str r3, [fp, #-220]
	ldr r3, [fp, #316]
	str r3, [fp, #-224]
	ldr r3, [fp, #320]
	str r3, [fp, #-228]
	vldr.32 s4, [fp, #324]
	vstr.32 s4, [fp, #-232]
	ldr r3, [fp, #328]
	str r3, [fp, #-236]
	vldr.32 s4, [fp, #332]
	vstr.32 s4, [fp, #-240]
	ldr r3, [fp, #336]
	str r3, [fp, #-244]
	ldr r3, [fp, #340]
	str r3, [fp, #-248]
	vldr.32 s4, [fp, #344]
	vstr.32 s4, [fp, #-252]
	ldr r0, =-256
	ldr r3, [fp, #348]
	str r3, [fp, r0]
	ldr r0, =-296
	add r0, fp, r0
	mov r1, #0
	mov r2, #40
	bl memset
	vldr.32 s5, [fp, #-4]
	ldr r2, [fp, #-16]
	ldr r0, addr_k5
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-20]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-28]
	vadd.f32 s4, s5, s4
	mov r1, #0
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-32]
	ldr r3, [fp, #-36]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-52]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-68]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-72]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	vldr.32 s4, [fp, #-76]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-80]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-84]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-88]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	vldr.32 s4, [fp, #-96]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-100]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-104]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-112]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-124]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-128]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-132]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r3, [fp, #-144]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r3, [fp, #-148]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-152]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-156]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-176]
	vldr.32 s4, [fp, #-180]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-192]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-208]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-212]
	ldr r3, [fp, #-216]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-228]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-232]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	vldr.32 s5, [fp, #-240]
	ldr r3, [fp, #-244]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	ldr r3, [fp, #-248]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vadd.f32 s5, s5, s4
	vldr.32 s4, [fp, #-252]
	vadd.f32 s4, s5, s4
	add r0, r0, #4
	vstr.32 s4, [r0]
	ldr r0, =-336
	add r0, fp, r0
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r2, [fp, #-8]
	ldr r0, addr_k5
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r3, r1, r0
	mov r1, #0
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-40]
	ldr r1, addr_k5
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, [fp, #-44]
	add r2, r2, r1
	ldr r1, [fp, #-48]
	add r2, r2, r1
	add r1, r0, #4
	str r2, [r1]
	ldr r3, [fp, #-56]
	ldr r0, addr_k5
	ldr r2, [r0]
	mov r0, #4
	mla r0, r2, r0, r3
	ldr r0, [r0]
	ldr r4, [fp, #-60]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r2, r0, r2
	ldr r0, [fp, #-64]
	add r0, r2, r0
	add r1, r1, #4
	str r0, [r1]
	ldr r0, [fp, #-92]
	ldr r4, [fp, #-108]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r0, r0, r2
	ldr r4, [fp, #-116]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r0, r0, r2
	add r1, r1, #4
	str r0, [r1]
	ldr r3, [fp, #-120]
	ldr r0, addr_k5
	ldr r2, [r0]
	mov r0, #4
	mla r0, r2, r0, r3
	ldr r0, [r0]
	ldr r4, [fp, #-136]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r2, r0, r2
	ldr r0, [fp, #-140]
	add r0, r2, r0
	add r1, r1, #4
	str r0, [r1]
	ldr r3, [fp, #-160]
	ldr r0, addr_k5
	ldr r2, [r0]
	mov r0, #4
	mla r0, r2, r0, r3
	ldr r0, [r0]
	ldr r4, [fp, #-164]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r2, r0, r2
	ldr r0, [fp, #-168]
	add r0, r2, r0
	add r1, r1, #4
	str r0, [r1]
	ldr r0, [fp, #-172]
	ldr r4, [fp, #-184]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r2, r0, r2
	ldr r0, [fp, #-188]
	add r0, r2, r0
	add r1, r1, #4
	str r0, [r1]
	ldr r0, [fp, #-196]
	ldr r4, [fp, #-200]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r0, r0, r2
	ldr r4, [fp, #-204]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r0, r0, r2
	add r1, r1, #4
	str r0, [r1]
	ldr r0, [fp, #-220]
	ldr r4, [fp, #-224]
	ldr r2, addr_k5
	ldr r3, [r2]
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r2, [r2]
	add r2, r0, r2
	ldr r0, [fp, #-236]
	add r2, r2, r0
	ldr r0, =-256
	ldr r0, [fp, r0]
	add r2, r2, r0
	add r0, r1, #4
	str r2, [r0]
	ldr r0, =-256
	ldr r0, [fp, r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L2016
	b .L2021
	b .F5
.LTORG
addr_k5:
	.word k
.F5:
.L2016:
	mov r1, #0
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #10
	bl putfarray
	mov r1, #0
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #10
	bl putarray
	ldr r1, =0
	ldr r0, =-340
	str r1, [fp, r0]
	b .L2023
.L2017:
	vldr.32 s1, [fp, #-4]
	mov r1, #0
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r3, [fp, #-12]
	mov r1, #0
	ldr r4, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r4
	add r1, r0, r1
	ldr r0, =-476
	str r1, [fp, r0]
	vldr.32 s2, [fp, #-20]
	ldr r1, [fp, #-24]
	ldr r0, =-344
	str r1, [fp, r0]
	vldr.32 s3, [fp, #-28]
	vldr.32 s17, [fp, #-32]
	ldr r1, [fp, #-36]
	ldr r0, =-348
	str r1, [fp, r0]
	ldr r1, [fp, #-40]
	ldr r0, =-352
	str r1, [fp, r0]
	ldr r1, [fp, #-44]
	ldr r0, =-356
	str r1, [fp, r0]
	ldr r1, [fp, #-48]
	ldr r0, =-360
	str r1, [fp, r0]
	ldr r1, [fp, #-52]
	ldr r0, =-364
	str r1, [fp, r0]
	ldr r1, [fp, #-56]
	ldr r0, =-368
	str r1, [fp, r0]
	ldr r1, [fp, #-60]
	ldr r0, =-372
	str r1, [fp, r0]
	ldr r1, [fp, #-64]
	ldr r0, =-376
	str r1, [fp, r0]
	ldr r1, [fp, #-68]
	ldr r0, =-380
	str r1, [fp, r0]
	ldr r1, [fp, #-72]
	ldr r0, =-384
	str r1, [fp, r0]
	vldr.32 s25, [fp, #-76]
	vldr.32 s24, [fp, #-80]
	vldr.32 s23, [fp, #-84]
	ldr r1, [fp, #-88]
	ldr r0, =-388
	str r1, [fp, r0]
	ldr r1, [fp, #-92]
	ldr r0, =-392
	str r1, [fp, r0]
	vldr.32 s22, [fp, #-96]
	vldr.32 s21, [fp, #-100]
	vldr.32 s20, [fp, #-104]
	ldr r1, [fp, #-108]
	ldr r0, =-396
	str r1, [fp, r0]
	ldr r1, [fp, #-112]
	ldr r0, =-400
	str r1, [fp, r0]
	ldr r1, [fp, #-116]
	ldr r0, =-404
	str r1, [fp, r0]
	ldr r1, [fp, #-120]
	ldr r0, =-408
	str r1, [fp, r0]
	ldr r1, [fp, #-124]
	ldr r0, =-412
	str r1, [fp, r0]
	vldr.32 s19, [fp, #-128]
	vldr.32 s18, [fp, #-132]
	ldr r1, [fp, #-136]
	ldr r0, =-416
	str r1, [fp, r0]
	ldr r1, [fp, #-140]
	ldr r0, =-420
	str r1, [fp, r0]
	ldr r1, [fp, #-144]
	ldr r0, =-424
	str r1, [fp, r0]
	ldr r1, [fp, #-148]
	ldr r0, =-428
	str r1, [fp, r0]
	vldr.32 s16, [fp, #-152]
	vldr.32 s11, [fp, #-156]
	ldr r1, [fp, #-160]
	ldr r0, =-432
	str r1, [fp, r0]
	ldr r1, [fp, #-164]
	ldr r0, =-436
	str r1, [fp, r0]
	ldr r1, [fp, #-168]
	ldr r0, =-440
	str r1, [fp, r0]
	ldr r1, [fp, #-172]
	ldr r0, =-444
	str r1, [fp, r0]
	vldr.32 s10, [fp, #-176]
	vldr.32 s9, [fp, #-180]
	ldr r1, [fp, #-184]
	ldr r0, =-448
	str r1, [fp, r0]
	ldr r1, [fp, #-188]
	ldr r0, =-452
	str r1, [fp, r0]
	ldr r1, [fp, #-192]
	ldr r0, =-456
	str r1, [fp, r0]
	ldr r1, [fp, #-196]
	ldr r0, =-460
	str r1, [fp, r0]
	ldr r1, [fp, #-200]
	ldr r0, =-464
	str r1, [fp, r0]
	ldr r1, [fp, #-204]
	ldr r0, =-468
	str r1, [fp, r0]
	vldr.32 s8, [fp, #-208]
	vldr.32 s7, [fp, #-212]
	ldr r1, [fp, #-216]
	ldr r0, =-472
	str r1, [fp, r0]
	ldr r10, [fp, #-220]
	ldr r9, [fp, #-224]
	ldr r8, [fp, #-228]
	vldr.32 s6, [fp, #-232]
	ldr r7, [fp, #-236]
	vldr.32 s5, [fp, #-240]
	ldr r6, [fp, #-244]
	ldr r5, [fp, #-248]
	ldr r0, =-256
	ldr r0, [fp, r0]
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	vldr.32 s0, [fp, #-252]
	vcvt.s32.f32  s0, s0
	vmov r4, s0
	mov r0, r2
	mov r1, r3
	ldr r2, =-476
	ldr r2, [fp, r2]
	ldr r3, =-344
	ldr r3, [fp, r3]
	vmov s0, s1
	vmov s1, s2
	vmov s2, s3
	vmov s3, s17
	push {r4}
	vpush {s4}
	push {r5}
	push {r6}
	vpush {s5}
	push {r7}
	vpush {s6}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, =-472
	ldr r4, [fp, r4]
	push {r4}
	vpush {s7}
	vpush {s8}
	ldr r4, =-468
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-464
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-460
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-456
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-452
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-448
	ldr r4, [fp, r4]
	push {r4}
	vpush {s9}
	vpush {s10}
	ldr r4, =-444
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-440
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-436
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-432
	ldr r4, [fp, r4]
	push {r4}
	vpush {s11}
	vpush {s16}
	ldr r4, =-428
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-424
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-420
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-416
	ldr r4, [fp, r4]
	push {r4}
	vpush {s18}
	vpush {s19}
	ldr r4, =-412
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-408
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-404
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-400
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-396
	ldr r4, [fp, r4]
	push {r4}
	vpush {s20}
	vpush {s21}
	vpush {s22}
	ldr r4, =-392
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-388
	ldr r4, [fp, r4]
	push {r4}
	vpush {s23}
	vpush {s24}
	vpush {s25}
	ldr r4, =-384
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-380
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-376
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-372
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-368
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-364
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-360
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-356
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-352
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-348
	ldr r4, [fp, r4]
	push {r4}
	bl params_mix
	add sp, sp, #224
	ldr r1, =480
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F6
.LTORG
addr_k6:
	.word k
.F6:
.L2021:
	b .L2017
.L2023:
	ldr r0, =-340
	ldr r0, [fp, r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L2024
	b .L2028
.L2024:
	ldr r0, =-340
	ldr r1, [fp, r0]
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	ldr r0, =-340
	ldr r1, [fp, r0]
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s1, [r0]
	vsub.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r3, s1
	ldr r0, =-340
	ldr r1, [fp, r0]
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r0, =-340
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-340
	str r1, [fp, r0]
	b .L2023
.L2025:
	ldr r0, addr_k7
	ldr r1, [r0]
	ldr r2, =-336
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	mov r1, #8
	ldr r2, =-296
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r0, s1
	ldr r1, =480
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L2028:
	b .L2025

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	vpush {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	mov fp, sp
	ldr r4, =1216
	sub sp, sp, r4
.L2060:
	bl getint
	mov r1, r0
	ldr r0, addr_k7
	str r1, [r0]
	ldr r1, =0
	ldr r0, =-772
	str r1, [fp, r0]
	b .L2064
.L2064:
	ldr r0, =-772
	ldr r0, [fp, r0]
	cmp r0, #40
	movlt r0, #1
	movge r0, #0
	blt .L2065
	b .L2069
.L2065:
	ldr r0, =-772
	ldr r1, [fp, r0]
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	bl getfarray
	ldr r0, =-772
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-772
	str r1, [fp, r0]
	b .L2064
.L2066:
	ldr r1, =0
	ldr r0, =-772
	str r1, [fp, r0]
	b .L2072
.L2069:
	b .L2066
.L2072:
	ldr r0, =-772
	ldr r0, [fp, r0]
	cmp r0, #24
	movlt r0, #1
	movge r0, #0
	blt .L2073
	b .L2077
.L2073:
	ldr r0, =-772
	ldr r1, [fp, r0]
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	bl getarray
	ldr r0, =-772
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-772
	str r1, [fp, r0]
	b .L2072
.L2074:
	mov r1, #0
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s0, [r0]
	mov r1, #1
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	mov r1, #2
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	mov r1, #3
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s3, [r0]
	mov r1, #4
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-792
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #5
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-796
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #6
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-800
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #7
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-804
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #8
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-808
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #9
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-812
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #10
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-816
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #11
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-820
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #12
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-824
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #13
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-828
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #14
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-832
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #15
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-836
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #16
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s31, [r0]
	mov r1, #17
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s30, [r0]
	mov r1, #18
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s29, [r0]
	mov r1, #19
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k7
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s28, [r0]
	mov r1, #20
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k7
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s27, [r0]
	mov r2, #21
	ldr r0, =-480
	mov r1, #12
	mul r1, r2, r1
	add r0, fp, r0
	add r0, r0, r1
	ldr r1, addr_k7
	ldr r1, [r1]
	mov r2, #4
	mla r0, r1, r2, r0
	vldr.32 s26, [r0]
	mov r1, #22
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s25, [r0]
	mov r1, #23
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s24, [r0]
	mov r1, #24
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s23, [r0]
	mov r1, #25
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s22, [r0]
	mov r1, #26
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s21, [r0]
	mov r1, #27
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s20, [r0]
	mov r1, #28
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s19, [r0]
	mov r1, #29
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s18, [r0]
	mov r1, #30
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s17, [r0]
	mov r1, #31
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s16, [r0]
	mov r1, #32
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s11, [r0]
	mov r1, #33
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s10, [r0]
	mov r1, #34
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s9, [r0]
	mov r1, #35
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s8, [r0]
	mov r1, #36
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s7, [r0]
	mov r1, #37
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s6, [r0]
	mov r1, #38
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s5, [r0]
	mov r1, #39
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k7
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s4, [r0]
	vpush {s4}
	vpush {s5}
	vpush {s6}
	vpush {s7}
	vpush {s8}
	vpush {s9}
	vpush {s10}
	vpush {s11}
	vpush {s16}
	vpush {s17}
	vpush {s18}
	vpush {s19}
	vpush {s20}
	vpush {s21}
	vpush {s22}
	vpush {s23}
	vpush {s24}
	vpush {s25}
	vpush {s26}
	vpush {s27}
	vpush {s28}
	vpush {s29}
	vpush {s30}
	vpush {s31}
	b .B0
.LTORG
addr_k7:
	.word k
.B0:
	ldr r0, =-836
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-832
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-828
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-824
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-820
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-816
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-812
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-808
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-804
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-800
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-796
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	ldr r0, =-792
	add r0, fp, r0
	vldr.32 s4, [r0]
	vpush {s4}
	bl params_f40
	add sp, sp, #144
	ldr r0, =-776
	add r0, fp, r0
	vstr.32 s0, [r0]
	mov r1, #23
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	mov r1, #2
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-840
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-844
	str r1, [fp, r0]
	mov r1, #4
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s0, [r0]
	mov r1, #1
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-848
	str r1, [fp, r0]
	mov r1, #4
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-852
	str r1, [fp, r0]
	mov r1, #5
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-856
	str r1, [fp, r0]
	mov r1, #8
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	mov r1, #15
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	mov r1, #7
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s3, [r0]
	mov r1, #22
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-860
	str r1, [fp, r0]
	mov r1, #3
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-864
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #28
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-868
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #0
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-872
	str r1, [fp, r0]
	mov r1, #37
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-876
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #19
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-880
	str r1, [fp, r0]
	mov r1, #30
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-884
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #12
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-888
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #1
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-892
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #11
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-896
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #38
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-900
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #6
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-904
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #7
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-908
	str r1, [fp, r0]
	mov r1, #32
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-912
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #10
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-916
	str r1, [fp, r0]
	mov r1, #13
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-920
	str r1, [fp, r0]
	mov r1, #20
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-924
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #33
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, =-928
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #23
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s31, [r0]
	mov r1, #9
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k8
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s30, [r0]
	mov r1, #25
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k8
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s29, [r0]
	mov r1, #8
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k8
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	ldr r1, [r0]
	ldr r0, =-932
	str r1, [fp, r0]
	mov r1, #39
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k8
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s28, [r0]
	mov r2, #17
	ldr r0, =-768
	mov r1, #12
	mul r1, r2, r1
	add r0, fp, r0
	add r1, r0, r1
	ldr r0, addr_k8
	ldr r0, [r0]
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =-936
	str r1, [fp, r0]
	mov r2, #21
	ldr r0, =-480
	mov r1, #12
	mul r1, r2, r1
	add r0, fp, r0
	add r1, r0, r1
	ldr r0, addr_k8
	ldr r0, [r0]
	mov r2, #4
	mla r0, r0, r2, r1
	vldr.32 s27, [r0]
	b .B1
.LTORG
addr_k8:
	.word k
.B1:
	mov r1, #16
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s26, [r0]
	mov r1, #5
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s25, [r0]
	mov r1, #34
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s24, [r0]
	mov r1, #18
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-940
	str r1, [fp, r0]
	mov r1, #9
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-944
	str r1, [fp, r0]
	mov r1, #14
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s23, [r0]
	mov r1, #10
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s22, [r0]
	mov r1, #0
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s21, [r0]
	mov r1, #12
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-956
	str r1, [fp, r0]
	mov r1, #31
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s20, [r0]
	mov r1, #11
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r10, [r0]
	mov r1, #16
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r9, [r0]
	mov r1, #27
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s19, [r0]
	mov r1, #24
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s18, [r0]
	mov r1, #13
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s17, [r0]
	mov r1, #29
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s16, [r0]
	mov r1, #3
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r8, [r0]
	mov r1, #21
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r7, [r0]
	mov r1, #20
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r6, [r0]
	mov r1, #18
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s11, [r0]
	mov r1, #19
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s10, [r0]
	mov r1, #22
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s9, [r0]
	mov r1, #26
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s8, [r0]
	mov r1, #36
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s7, [r0]
	mov r1, #17
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s6, [r0]
	mov r1, #15
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r5, [r0]
	mov r1, #2
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s5, [r0]
	mov r1, #14
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r4, [r0]
	mov r1, #35
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k9
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s4, [r0]
	mov r0, r3
	ldr r1, =-840
	ldr r1, [fp, r1]
	ldr r2, =-844
	ldr r2, [fp, r2]
	ldr r3, =-848
	ldr r3, [fp, r3]
	vpush {s4}
	push {r4}
	vpush {s5}
	push {r5}
	vpush {s6}
	vpush {s7}
	vpush {s8}
	vpush {s9}
	vpush {s10}
	vpush {s11}
	push {r6}
	push {r7}
	push {r8}
	vpush {s16}
	vpush {s17}
	vpush {s18}
	vpush {s19}
	push {r9}
	push {r10}
	vpush {s20}
	ldr r4, =-956
	ldr r4, [fp, r4]
	push {r4}
	vpush {s21}
	vpush {s22}
	vpush {s23}
	ldr r4, =-944
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-940
	ldr r4, [fp, r4]
	push {r4}
	vpush {s24}
	vpush {s25}
	vpush {s26}
	vpush {s27}
	ldr r4, =-936
	ldr r4, [fp, r4]
	push {r4}
	vpush {s28}
	ldr r4, =-932
	ldr r4, [fp, r4]
	push {r4}
	vpush {s29}
	vpush {s30}
	vpush {s31}
	ldr r4, =-928
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-924
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-920
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-916
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-912
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-908
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-904
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-900
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-896
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-892
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-888
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-884
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-880
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-876
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-872
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-868
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-864
	add r4, fp, r4
	vldr.32 s4, [r4]
	vpush {s4}
	ldr r4, =-860
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-856
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-852
	ldr r4, [fp, r4]
	push {r4}
	bl params_f40_i24
	add sp, sp, #224
	vmov s4, s0
	ldr r0, =-780
	add r0, fp, r0
	vstr.32 s4, [r0]
	mov r1, #0
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r3, r1, r0, r2
	mov r1, #1
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-960
	str r1, [fp, r0]
	mov r1, #2
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-964
	str r1, [fp, r0]
	mov r1, #3
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-968
	str r1, [fp, r0]
	mov r1, #4
	ldr r2, =-480
	b .B2
.LTORG
addr_k9:
	.word k
.B2:
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-972
	str r1, [fp, r0]
	mov r1, #5
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-976
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-980
	str r1, [fp, r0]
	mov r1, #7
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-984
	str r1, [fp, r0]
	mov r1, #8
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-988
	str r1, [fp, r0]
	mov r1, #9
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-992
	str r1, [fp, r0]
	mov r1, #10
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-996
	str r1, [fp, r0]
	mov r1, #11
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1000
	str r1, [fp, r0]
	mov r1, #12
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1004
	str r1, [fp, r0]
	mov r1, #13
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1008
	str r1, [fp, r0]
	mov r1, #14
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1012
	str r1, [fp, r0]
	mov r1, #15
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1016
	str r1, [fp, r0]
	mov r1, #16
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1020
	str r1, [fp, r0]
	mov r1, #17
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1024
	str r1, [fp, r0]
	mov r1, #18
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1028
	str r1, [fp, r0]
	mov r1, #19
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1032
	str r1, [fp, r0]
	mov r1, #20
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1036
	str r1, [fp, r0]
	mov r1, #21
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1040
	str r1, [fp, r0]
	mov r1, #22
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1044
	str r1, [fp, r0]
	mov r1, #23
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1048
	str r1, [fp, r0]
	mov r1, #24
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1052
	str r1, [fp, r0]
	mov r1, #25
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1056
	str r1, [fp, r0]
	mov r1, #26
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1060
	str r1, [fp, r0]
	mov r1, #27
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1064
	str r1, [fp, r0]
	mov r1, #28
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1068
	str r1, [fp, r0]
	mov r1, #29
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1072
	str r1, [fp, r0]
	mov r1, #30
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1076
	str r1, [fp, r0]
	mov r1, #31
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1080
	str r1, [fp, r0]
	mov r1, #32
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1084
	str r1, [fp, r0]
	mov r1, #33
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r10, r1, r0, r2
	mov r1, #34
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r9, r1, r0, r2
	mov r1, #35
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r8, r1, r0, r2
	mov r1, #36
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r7, r2, r1, r0
	mov r2, #37
	ldr r0, =-480
	mov r1, #12
	mul r1, r2, r1
	add r0, fp, r0
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r6, r2, r1, r0
	mov r1, #38
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #0
	mov r0, #4
	mla r5, r2, r0, r1
	mov r1, #39
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #0
	mov r0, #4
	mla r4, r2, r0, r1
	mov r0, r3
	ldr r1, =-960
	ldr r1, [fp, r1]
	ldr r2, =-964
	ldr r2, [fp, r2]
	ldr r3, =-968
	ldr r3, [fp, r3]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, =-1084
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1080
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1076
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1072
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1068
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1064
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1060
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1056
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1052
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1048
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1044
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1040
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1036
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1032
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1028
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1024
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1020
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1016
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1012
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1008
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1004
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1000
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-996
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-992
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-988
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-984
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-980
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-976
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-972
	ldr r4, [fp, r4]
	push {r4}
	bl params_fa40
	add sp, sp, #144
	ldr r0, =-784
	add r0, fp, r0
	vstr.32 s0, [r0]
	mov r1, #0
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k10
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s0, [r0]
	mov r1, #0
	ldr r2, =-768
	mov r0, #12
	b .B3
.LTORG
addr_k10:
	.word k
.B3:
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r3, r1, r0, r2
	mov r1, #1
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-1088
	str r1, [fp, r0]
	mov r1, #1
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1092
	str r1, [fp, r0]
	mov r1, #2
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	mov r1, #2
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-1096
	str r1, [fp, r0]
	mov r1, #3
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	mov r1, #4
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s3, [r0]
	mov r1, #5
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1100
	str r1, [fp, r0]
	mov r1, #3
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1104
	str r1, [fp, r0]
	mov r1, #4
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-1108
	str r1, [fp, r0]
	mov r1, #5
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-1112
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1116
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1120
	str r1, [fp, r0]
	mov r1, #7
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1124
	str r1, [fp, r0]
	mov r1, #8
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, =-1128
	str r1, [fp, r0]
	mov r1, #7
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1132
	str r1, [fp, r0]
	mov r1, #8
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1136
	str r1, [fp, r0]
	mov r1, #9
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s24, [r0]
	mov r1, #10
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s23, [r0]
	mov r1, #11
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k11
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s22, [r0]
	mov r1, #12
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r0
	ldr r0, =-948
	str r1, [fp, r0]
	mov r1, #9
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k11
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	ldr r1, [r0]
	ldr r0, =-952
	str r1, [fp, r0]
	mov r1, #13
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, addr_k11
	ldr r2, [r1]
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s21, [r0]
	mov r2, #14
	ldr r0, =-480
	mov r1, #12
	mul r1, r2, r1
	add r0, fp, r0
	add r1, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r2, #4
	mla r0, r0, r2, r1
	vldr.32 s20, [r0]
	mov r1, #15
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s19, [r0]
	mov r1, #10
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1140
	str r1, [fp, r0]
	mov r1, #16
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1144
	str r1, [fp, r0]
	mov r1, #11
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1148
	str r1, [fp, r0]
	mov r1, #12
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1152
	str r1, [fp, r0]
	mov r1, #17
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1156
	str r1, [fp, r0]
	mov r1, #18
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s18, [r0]
	mov r1, #19
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s17, [r0]
	mov r1, #13
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1160
	str r1, [fp, r0]
	mov r1, #14
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-1164
	str r1, [fp, r0]
	mov r1, #20
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1168
	str r1, [fp, r0]
	mov r1, #21
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1172
	str r1, [fp, r0]
	mov r1, #22
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s16, [r0]
	mov r1, #23
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s11, [r0]
	mov r1, #15
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1176
	str r1, [fp, r0]
	mov r1, #16
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1180
	str r1, [fp, r0]
	mov r1, #17
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-1184
	str r1, [fp, r0]
	mov r1, #18
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-1188
	str r1, [fp, r0]
	mov r1, #24
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s10, [r0]
	mov r1, #25
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k11
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s9, [r0]
	mov r1, #19
	ldr r2, =-768
	mov r0, #12
	b .B4
.LTORG
addr_k11:
	.word k
.B4:
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1192
	str r1, [fp, r0]
	mov r1, #20
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-1196
	str r1, [fp, r0]
	mov r1, #26
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1200
	str r1, [fp, r0]
	mov r1, #21
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	ldr r0, =-1204
	str r1, [fp, r0]
	mov r1, #22
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1208
	str r1, [fp, r0]
	mov r1, #23
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1212
	str r1, [fp, r0]
	mov r1, #27
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s8, [r0]
	mov r1, #28
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s7, [r0]
	mov r1, #29
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-1216
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r10, [r0]
	mov r1, #1
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r9, r1, r0, r2
	mov r1, #30
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r8, r1, r0, r2
	mov r1, #31
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s6, [r0]
	mov r1, #2
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r7, [r0]
	mov r1, #32
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s5, [r0]
	mov r1, #33
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r6, r1, r0, r2
	mov r1, #34
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r5, r1, r0, r2
	mov r1, #35
	ldr r2, =-480
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	vldr.32 s4, [r0]
	mov r1, #3
	ldr r2, =-768
	mov r0, #12
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_k12
	ldr r0, [r0]
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r4, [r0]
	mov r0, r3
	ldr r1, =-1088
	ldr r1, [fp, r1]
	ldr r2, =-1092
	ldr r2, [fp, r2]
	ldr r3, =-1096
	ldr r3, [fp, r3]
	push {r4}
	vpush {s4}
	push {r5}
	push {r6}
	vpush {s5}
	push {r7}
	vpush {s6}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, =-1216
	ldr r4, [fp, r4]
	push {r4}
	vpush {s7}
	vpush {s8}
	ldr r4, =-1212
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1208
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1204
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1200
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1196
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1192
	ldr r4, [fp, r4]
	push {r4}
	vpush {s9}
	vpush {s10}
	ldr r4, =-1188
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1184
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1180
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1176
	ldr r4, [fp, r4]
	push {r4}
	vpush {s11}
	vpush {s16}
	ldr r4, =-1172
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1168
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1164
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1160
	ldr r4, [fp, r4]
	push {r4}
	vpush {s17}
	vpush {s18}
	ldr r4, =-1156
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1152
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1148
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1144
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1140
	ldr r4, [fp, r4]
	push {r4}
	vpush {s19}
	vpush {s20}
	vpush {s21}
	ldr r4, =-952
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-948
	ldr r4, [fp, r4]
	push {r4}
	vpush {s22}
	vpush {s23}
	vpush {s24}
	ldr r4, =-1136
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1132
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1128
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1124
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1120
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1116
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1112
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1108
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1104
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-1100
	ldr r4, [fp, r4]
	push {r4}
	bl params_mix
	add sp, sp, #224
	mov r1, r0
	ldr r0, =-788
	str r1, [fp, r0]
	ldr r0, =-776
	add r0, fp, r0
	vldr.32 s0, [r0]
	bl putfloat
	mov r0, #10
	bl putch
	ldr r0, =-780
	add r0, fp, r0
	vldr.32 s0, [r0]
	bl putfloat
	mov r0, #10
	bl putch
	ldr r0, =-784
	add r0, fp, r0
	vldr.32 s0, [r0]
	bl putfloat
	mov r0, #10
	bl putch
	ldr r0, =-788
	ldr r0, [fp, r0]
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =1216
	add sp, sp, r1
	vpop {s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
	vpop {s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F12
.LTORG
addr_k12:
	.word k
.F12:
.L2077:
	b .L2074

addr_k13:
	.word k
	.ident "ZWJM"
