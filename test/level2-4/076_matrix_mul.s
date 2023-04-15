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
.L219:
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
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-28]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-28]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-4]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-4]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-28]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-8]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-8]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-32]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-8]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-8]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-32]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-8]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-8]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-32]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-12]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-12]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-36]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-12]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-12]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-36]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mul r0, r3, r0
	ldr r3, [fp, #-12]
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-20]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r0, r4, r1, r0
	ldr r3, [fp, #-12]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r4, [r1]
	ldr r3, [fp, #-24]
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mla r3, r4, r1, r0
	ldr r2, [fp, #-36]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
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
	mov fp, sp
	sub sp, sp, #136
.L347:
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
	b .L358
.L358:
	ldr r1, [fp, #-124]
	ldr r0, addr_M1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L363
.L359:
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-36
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r3, [fp, #-124]
	ldr r1, [fp, #-124]
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	mov r1, r0
	ldr r0, addr_M1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L369
.L360:
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
	b .L371
.L363:
	b .L360
.L369:
	b .L360
.L371:
	ldr r1, [fp, #-124]
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L372
	b .L376
.L372:
	ldr r1, [fp, #-124]
	mov r2, #-96
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	mov r1, r0
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L372
	b .L383
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L373:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L384
.L376:
	b .L373
.L383:
	b .L373
.L384:
	ldr r1, [fp, #-124]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L385
	b .L389
.L385:
	ldr r1, [fp, #-124]
	mov r2, #-108
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	mov r1, r0
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L385
	b .L396
.L386:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L397
.L389:
	b .L386
.L396:
	b .L386
.L397:
	ldr r1, [fp, #-124]
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L398
	b .L402
.L398:
	ldr r1, [fp, #-124]
	mov r2, #-120
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	mov r1, r0
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L398
	b .L409
.L399:
	ldr r0, =10
	str r0, [fp, #-128]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #136
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L402:
	b .L399
.L409:
	b .L399

addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
	.ident "ZWJM"
