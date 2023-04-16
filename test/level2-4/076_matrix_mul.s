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
	sub sp, sp, #64
.L219:
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
	ldr r6, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r6
	ldr r3, [r0]
	ldr r1, [fp, #-16]
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mul r4, r3, r0
	mov r2, #1
	mov r0, #4
	mla r3, r2, r0, r6
	ldr r2, [r3]
	ldr r0, [fp, #-20]
	mov r7, #0
	mov r5, #4
	mla r5, r7, r5, r0
	ldr r5, [r5]
	mla r4, r2, r5, r4
	mov r5, #2
	mov r2, #4
	mla r5, r5, r2, r6
	ldr r8, [r5]
	ldr r2, [fp, #-24]
	mov r7, #0
	mov r9, #4
	mla r7, r7, r9, r2
	ldr r7, [r7]
	mla r7, r8, r7, r4
	ldr r4, [fp, #-28]
	mov r9, #0
	mov r8, #4
	mla r8, r9, r8, r4
	str r7, [r8]
	mov r8, #0
	mov r7, #4
	mla r6, r8, r7, r6
	ldr r8, [r6]
	mov r9, #1
	mov r7, #4
	mla r7, r9, r7, r1
	str r7, [fp, #-40]
	mov r7, r7
	ldr r7, [r7]
	mul r8, r8, r7
	ldr r7, [r3]
	mov r10, #1
	mov r9, #4
	mla r9, r10, r9, r0
	str r9, [fp, #-44]
	mov r9, r9
	ldr r9, [r9]
	mla r8, r7, r9, r8
	ldr r7, [r5]
	mov r10, #1
	mov r9, #4
	mla r9, r10, r9, r2
	str r9, [fp, #-48]
	mov r9, r9
	ldr r9, [r9]
	mla r7, r7, r9, r8
	mov r9, #1
	mov r8, #4
	mla r8, r9, r8, r4
	str r7, [r8]
	ldr r6, [r6]
	mov r8, #2
	mov r7, #4
	mla r7, r8, r7, r1
	str r7, [fp, #-52]
	mov r7, r7
	ldr r7, [r7]
	mul r6, r6, r7
	ldr r3, [r3]
	mov r8, #2
	mov r7, #4
	mla r7, r8, r7, r0
	str r7, [fp, #-56]
	mov r7, r7
	ldr r7, [r7]
	mla r6, r3, r7, r6
	ldr r3, [r5]
	mov r7, #2
	mov r5, #4
	mla r5, r7, r5, r2
	str r5, [fp, #-60]
	mov r5, r5
	ldr r5, [r5]
	mla r6, r3, r5, r6
	mov r5, #2
	mov r3, #4
	mla r3, r5, r3, r4
	str r6, [r3]
	ldr r5, [fp, #-8]
	mov r4, #0
	mov r3, #4
	mla r3, r4, r3, r5
	ldr r3, [r3]
	mov r6, #0
	mov r4, #4
	mla r1, r6, r4, r1
	str r1, [fp, #-64]
	mov r1, r1
	ldr r1, [r1]
	mul r6, r3, r1
	mov r3, #1
	mov r1, #4
	mla r4, r3, r1, r5
	ldr r1, [r4]
	mov r7, #0
	mov r3, #4
	mla r3, r7, r3, r0
	ldr r0, [r3]
	mla r7, r1, r0, r6
	mov r1, #2
	mov r0, #4
	mla r1, r1, r0, r5
	ldr r6, [r1]
	mov r8, #0
	mov r0, #4
	mla r0, r8, r0, r2
	ldr r2, [r0]
	mla r2, r6, r2, r7
	ldr r6, [fp, #-32]
	mov r8, #0
	mov r7, #4
	mla r7, r8, r7, r6
	str r2, [r7]
	mov r7, #0
	mov r2, #4
	mla r5, r7, r2, r5
	ldr r7, [r5]
	ldr r2, [fp, #-40]
	ldr r2, [r2]
	mul r2, r7, r2
	ldr r8, [r4]
	ldr r7, [fp, #-44]
	ldr r7, [r7]
	mla r2, r8, r7, r2
	ldr r8, [r1]
	ldr r7, [fp, #-48]
	ldr r7, [r7]
	mla r2, r8, r7, r2
	mov r8, #1
	mov r7, #4
	mla r7, r8, r7, r6
	str r2, [r7]
	ldr r5, [r5]
	ldr r2, [fp, #-52]
	ldr r2, [r2]
	mul r5, r5, r2
	ldr r4, [r4]
	ldr r2, [fp, #-56]
	ldr r2, [r2]
	mla r4, r4, r2, r5
	ldr r2, [r1]
	ldr r1, [fp, #-60]
	ldr r1, [r1]
	mla r4, r2, r1, r4
	mov r2, #2
	mov r1, #4
	mla r1, r2, r1, r6
	str r4, [r1]
	ldr r5, [fp, #-12]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r5
	ldr r2, [r1]
	ldr r1, [fp, #-64]
	ldr r1, [r1]
	mul r1, r2, r1
	mov r4, #1
	mov r2, #4
	mla r4, r4, r2, r5
	ldr r6, [r4]
	ldr r2, [r3]
	mla r1, r6, r2, r1
	mov r3, #2
	mov r2, #4
	mla r2, r3, r2, r5
	ldr r3, [r2]
	ldr r0, [r0]
	mla r6, r3, r0, r1
	ldr r1, [fp, #-36]
	mov r3, #0
	mov r0, #4
	mla r0, r3, r0, r1
	str r6, [r0]
	mov r3, #0
	mov r0, #4
	mla r0, r3, r0, r5
	ldr r5, [r0]
	ldr r3, [fp, #-40]
	ldr r3, [r3]
	mul r6, r5, r3
	ldr r5, [r4]
	ldr r3, [fp, #-44]
	ldr r3, [r3]
	mla r6, r5, r3, r6
	ldr r5, [r2]
	ldr r3, [fp, #-48]
	ldr r3, [r3]
	mla r6, r5, r3, r6
	mov r5, #1
	mov r3, #4
	mla r3, r5, r3, r1
	str r6, [r3]
	ldr r3, [r0]
	ldr r0, [fp, #-52]
	ldr r0, [r0]
	mul r5, r3, r0
	ldr r3, [r4]
	ldr r0, [fp, #-56]
	ldr r0, [r0]
	mla r3, r3, r0, r5
	ldr r2, [r2]
	ldr r0, [fp, #-60]
	ldr r0, [r0]
	mla r3, r2, r0, r3
	mov r2, #2
	mov r0, #4
	mla r0, r2, r0, r1
	str r3, [r0]
	mov r0, #0
	add sp, sp, #64
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
	mov fp, sp
	sub sp, sp, #128
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
	b .L358
.L358:
	ldr r0, addr_M1
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L359
	b .L363
.L359:
	mov r3, #-12
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	mov r3, #-24
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	mov r3, #-36
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	mov r3, #-48
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	mov r3, #-60
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	mov r3, #-72
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	add r1, r0, #1
	ldr r0, addr_M1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L454
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
	b .L371
.L363:
	ldr r0, =0
	b .L360
.L369:
	b .L360
.L371:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L372
	b .L376
.L372:
	mov r2, #-96
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L458
	b .L383
.L373:
	mov r0, #10
	bl putch
	b .L384
	b .F1
.LTORG
addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
.F1:
.L376:
	ldr r0, =0
	b .L373
.L383:
	b .L373
.L384:
	ldr r0, addr_N2
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L385
	b .L389
.L385:
	mov r2, #-108
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L463
	b .L396
.L386:
	mov r0, #10
	bl putch
	b .L397
.L389:
	ldr r0, =10
	ldr r0, =0
	b .L386
.L396:
	b .L386
.L397:
	ldr r0, addr_N2
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L398
	b .L402
.L398:
	mov r2, #-120
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	ldr r0, addr_N2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L468
	b .L409
.L399:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #128
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L402:
	ldr r0, =10
	ldr r0, =0
	b .L399
.L409:
	b .L399
.L454:
	mov r0, r1
	b .L359
.L458:
	mov r4, r1
	b .L372
.L463:
	mov r4, r1
	b .L385
.L468:
	mov r4, r1
	b .L398

addr_M2:
	.word M
addr_L2:
	.word L
addr_N2:
	.word N
	.ident "ZWJM"
