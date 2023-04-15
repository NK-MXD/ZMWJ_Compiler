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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L228:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r0, =0
	str r0, [fp, #-40]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-4]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-4]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-28]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-4]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-4]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-28]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-4]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-4]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-28]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-8]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-8]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-32]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-8]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-8]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-32]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	vmul.f32 s3, s1, s2
	ldr r2, [fp, #-8]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-8]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-32]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-12]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-12]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-36]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-12]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-12]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-36]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s3, s2, s1
	ldr r2, [fp, #-12]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s3, s3, s1
	ldr r2, [fp, #-12]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vmul.f32 s1, s2, s1
	vadd.f32 s1, s3, s1
	ldr r2, [fp, #-36]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
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
	sub sp, sp, #136
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
	ldr r0, =0
	str r0, [fp, #-124]
	b .L367
.L367:
	ldr r1, [fp, #-124]
	ldr r0, addr_M1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L368
	b .L372
.L368:
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-36
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L367
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
	str r0, [fp, #-132]
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
	ldr r3, [fp, #-132]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	bl mul
	add sp, sp, #20
	str r0, [fp, #-124]
	b .L374
.L372:
	b .L369
.L374:
	ldr r1, [fp, #-124]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L375
	b .L379
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L375:
	ldr r1, [fp, #-124]
	mov r2, #-96
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L374
.L376:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L381
.L379:
	b .L376
.L381:
	ldr r1, [fp, #-124]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L382
	b .L386
.L382:
	ldr r1, [fp, #-124]
	mov r2, #-108
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L381
.L383:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L388
.L386:
	b .L383
.L388:
	ldr r1, [fp, #-124]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L389
	b .L393
.L389:
	ldr r1, [fp, #-124]
	mov r2, #-120
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L388
.L390:
	ldr r0, =10
	str r0, [fp, #-128]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #136
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L393:
	b .L390

addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
	.ident "ZWJM"
