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
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L228:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #40]
	str r3, [fp, #-20]
	ldr r3, [fp, #44]
	str r3, [fp, #-24]
	ldr r3, [fp, #48]
	str r3, [fp, #-28]
	ldr r3, [fp, #52]
	str r3, [fp, #-32]
	ldr r3, [fp, #56]
	str r3, [fp, #-36]
	ldr r3, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	mov r0, #1
	mov r1, #4
	mla r0, r0, r1, r3
	vldr.32 s3, [r0]
	ldr r5, [fp, #-20]
	mov r4, #0
	mov r1, #4
	mla r1, r4, r1, r5
	vldr.32 s2, [r1]
	vmul.f32 s2, s3, s2
	vadd.f32 s2, s1, s2
	mov r4, #2
	mov r1, #4
	mla r4, r4, r1, r3
	vldr.32 s1, [r4]
	ldr r1, [fp, #-24]
	mov r6, #0
	mov r7, #4
	mla r6, r6, r7, r1
	vldr.32 s3, [r6]
	vmul.f32 s1, s1, s3
	vadd.f32 s1, s2, s1
	ldr r6, [fp, #-28]
	mov r8, #0
	mov r7, #4
	mla r7, r8, r7, r6
	vstr.32 s1, [r7]
	mov r8, #0
	mov r7, #4
	mla r3, r8, r7, r3
	vldr.32 s2, [r3]
	mov r8, #1
	mov r7, #4
	mla r7, r8, r7, r2
	str r7, [fp, #-40]
	mov r7, r7
	vldr.32 s1, [r7]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r0]
	mov r8, #1
	mov r7, #4
	mla r7, r8, r7, r5
	str r7, [fp, #-44]
	mov r7, r7
	vldr.32 s1, [r7]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r4]
	mov r8, #1
	mov r7, #4
	mla r7, r8, r7, r1
	str r7, [fp, #-48]
	mov r7, r7
	vldr.32 s1, [r7]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r8, #1
	mov r7, #4
	mla r7, r8, r7, r6
	vstr.32 s1, [r7]
	vldr.32 s2, [r3]
	mov r7, #2
	mov r3, #4
	mla r3, r7, r3, r2
	str r3, [fp, #-52]
	mov r3, r3
	vldr.32 s1, [r3]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r0]
	mov r3, #2
	mov r0, #4
	mla r0, r3, r0, r5
	str r0, [fp, #-56]
	mov r0, r0
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r4]
	mov r3, #2
	mov r0, #4
	mla r0, r3, r0, r1
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r4, #2
	mov r3, #4
	mla r3, r4, r3, r6
	vstr.32 s1, [r3]
	ldr r8, [fp, #-8]
	mov r4, #0
	mov r3, #4
	mla r3, r4, r3, r8
	vldr.32 s2, [r3]
	mov r4, #0
	mov r3, #4
	mla r7, r4, r3, r2
	vldr.32 s1, [r7]
	vmul.f32 s3, s2, s1
	mov r3, #1
	mov r2, #4
	mla r4, r3, r2, r8
	vldr.32 s2, [r4]
	mov r3, #0
	mov r2, #4
	mla r6, r3, r2, r5
	vldr.32 s1, [r6]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	mov r3, #2
	mov r2, #4
	mla r3, r3, r2, r8
	vldr.32 s2, [r3]
	mov r5, #0
	mov r2, #4
	mla r5, r5, r2, r1
	vldr.32 s1, [r5]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-32]
	mov r9, #0
	mov r1, #4
	mla r1, r9, r1, r2
	vstr.32 s1, [r1]
	mov r9, #0
	mov r1, #4
	mla r1, r9, r1, r8
	vldr.32 s2, [r1]
	ldr r8, [fp, #-40]
	vldr.32 s1, [r8]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r4]
	ldr r8, [fp, #-44]
	vldr.32 s1, [r8]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r3]
	ldr r8, [fp, #-48]
	vldr.32 s1, [r8]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r9, #1
	mov r8, #4
	mla r8, r9, r8, r2
	vstr.32 s1, [r8]
	vldr.32 s2, [r1]
	ldr r1, [fp, #-52]
	vldr.32 s1, [r1]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r4]
	ldr r1, [fp, #-56]
	vldr.32 s1, [r1]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r3]
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r3, #2
	mov r1, #4
	mla r1, r3, r1, r2
	vstr.32 s1, [r1]
	ldr r1, [fp, #-12]
	mov r3, #0
	mov r2, #4
	mla r2, r3, r2, r1
	vldr.32 s2, [r2]
	vldr.32 s1, [r7]
	vmul.f32 s3, s2, s1
	mov r3, #1
	mov r2, #4
	mla r4, r3, r2, r1
	vldr.32 s2, [r4]
	vldr.32 s1, [r6]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	mov r3, #2
	mov r2, #4
	mla r3, r3, r2, r1
	vldr.32 s2, [r3]
	vldr.32 s1, [r5]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-36]
	mov r6, #0
	mov r5, #4
	mla r5, r6, r5, r2
	vstr.32 s1, [r5]
	mov r6, #0
	mov r5, #4
	mla r1, r6, r5, r1
	vldr.32 s2, [r1]
	ldr r5, [fp, #-40]
	vldr.32 s1, [r5]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r4]
	ldr r5, [fp, #-44]
	vldr.32 s1, [r5]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r3]
	ldr r5, [fp, #-48]
	vldr.32 s1, [r5]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r6, #1
	mov r5, #4
	mla r5, r6, r5, r2
	vstr.32 s1, [r5]
	vldr.32 s2, [r1]
	ldr r1, [fp, #-52]
	vldr.32 s1, [r1]
	vmul.f32 s3, s2, s1
	vldr.32 s2, [r4]
	ldr r1, [fp, #-56]
	vldr.32 s1, [r1]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	vldr.32 s2, [r3]
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	mov r0, #0
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #128
.L356:
	ldr r1, =3
	ldr r0, addr_N1
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_M1
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_L1
	str r1, [r0]
	b .L367
.L367:
	ldr r0, addr_M1
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L368
	b .L372
.L368:
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	mov r3, #-12
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-24
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-36
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-48
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-60
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-72
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	add r1, r0, #1
	ldr r0, addr_M1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L463
	b .L378
.L369:
	mov r1, #0
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r9, r0, r1
	mov r1, #0
	mov r2, #-36
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r10, r0, r1
	mov r1, #0
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-124]
	mov r1, #0
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r8, r0, r1
	mov r1, #0
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r7, r0, r1
	mov r2, #0
	mov r1, #-96
	mov r0, #4
	mul r0, r2, r0
	add r1, fp, r1
	add r6, r1, r0
	mov r1, #0
	mov r2, #-108
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r5, r0, r1
	mov r1, #0
	mov r2, #-120
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r9
	mov r2, r10
	ldr r3, [fp, #-124]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	bl mul
	add sp, sp, #20
	mov r2, r0
	b .L380
.L372:
	ldr r0, =0
	b .L369
.L378:
	b .L369
.L380:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L381
	b .L385
.L381:
	mov r2, #-96
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L467
	b .L392
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L382:
	mov r0, #10
	bl putch
	b .L393
.L385:
	ldr r0, =0
	b .L382
.L392:
	b .L382
.L393:
	ldr r0, addr_N2
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L394
	b .L398
.L394:
	mov r2, #-108
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L472
	b .L405
.L395:
	mov r0, #10
	bl putch
	b .L406
.L398:
	ldr r0, =10
	ldr r0, =0
	b .L395
.L405:
	b .L395
.L406:
	ldr r0, addr_N2
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L407
	b .L411
.L407:
	mov r2, #-120
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L477
	b .L418
.L408:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #128
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L411:
	ldr r0, =10
	ldr r0, =0
	b .L408
.L418:
	b .L408
.L463:
	mov r0, r1
	b .L368
.L467:
	mov r4, r1
	b .L381
.L472:
	mov r4, r1
	b .L394
.L477:
	mov r4, r1
	b .L407

addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
	.ident "ZWJM"
