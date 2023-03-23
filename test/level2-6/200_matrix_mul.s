	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global mul
	.type mul , %function
mul:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #40
.L228:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #56]
	str r3, [fp, #-20]
	ldr r3, [fp, #60]
	str r3, [fp, #-24]
	ldr r3, [fp, #64]
	str r3, [fp, #-28]
	ldr r3, [fp, #68]
	str r3, [fp, #-32]
	ldr r3, [fp, #72]
	str r3, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-40]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-28]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-28]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-28]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-32]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-32]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-32]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-36]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-36]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-36]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	mov r0, #0
	add sp, sp, #40
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #152
.L356:
	ldr r4, =3
	ldr r5, addr_N1
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_M1
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_L1
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-124]
	b .L367
.L367:
	ldr r4, [fp, #-124]
	ldr r5, addr_M1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L368
	b .L372
.L368:
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-12
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-24
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-36
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-60
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-72
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	ldr r5, addr_M1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L368
	b .L378
.L369:
	mov r4, #0
	mov r5, #-12
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #-24
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #-36
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r4, #0
	mov r8, #-48
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-132]
	mov r4, #0
	mov r8, #-60
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-136]
	mov r4, #0
	mov r8, #-72
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-140]
	mov r4, #0
	mov r8, #-96
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-144]
	mov r4, #0
	mov r8, #-108
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-148]
	mov r4, #0
	mov r8, #-120
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r0, r5
	mov r1, r6
	mov r2, r7
	ldr r4, [fp, #-132]
	mov r3, r4
	push {r8}
	ldr r4, [fp, #-148]
	push {r4}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r4, [fp, #-140]
	push {r4}
	ldr r4, [fp, #-136]
	push {r4}
	bl mul
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-124]
	b .L380
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L372:
	b .L369
.L378:
	b .L369
.L380:
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L381
	b .L385
.L381:
	ldr r4, [fp, #-124]
	mov r5, #-96
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L381
	b .L392
.L382:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L393
.L385:
	b .L382
.L392:
	b .L382
.L393:
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L394
	b .L398
.L394:
	ldr r4, [fp, #-124]
	mov r5, #-108
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L394
	b .L405
.L395:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L406
.L398:
	b .L395
.L405:
	b .L395
.L406:
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L407
	b .L411
.L407:
	ldr r4, [fp, #-124]
	mov r5, #-120
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L407
	b .L418
.L408:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #152
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L411:
	b .L408
.L418:
	b .L408

addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
	.ident "ZWJM"
