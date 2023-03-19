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
	push {r4, r5, r6, r7, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #40
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
	ldr r4, =0
	str r4, [fp, #-40]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-28]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-28]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-4]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-28]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-32]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-32]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-32]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-36]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-36]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r21, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r22, [r5]
	ldr r4, [fp, #-24]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 r23, [r5]
	ldr r4, [fp, #-36]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, r7, r21, r22, r23, r24, fp, lr}
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
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #148
.L347:
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
	b .L358
.L358:
	ldr r4, [fp, #-124]
	ldr r5, addr_M1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L359
	b .L363
.L359:
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-12
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-24
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-36
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-60
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	ldr r5, addr_M1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L359
	b .L369
.L360:
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
	b .L371
.L363:
	b .L360
.L369:
	b .L360
.L371:
	ldr r4, [fp, #-124]
	ldr r5, addr_N1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L372
	b .L376
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
	ldr r4, [fp, #-124]
	mov r5, #-96
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L372
	b .L383
.L373:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L384
.L376:
	b .L373
.L383:
	b .L373
.L384:
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L385
	b .L389
.L385:
	ldr r4, [fp, #-124]
	mov r5, #-108
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L385
	b .L396
.L386:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L397
.L389:
	b .L386
.L396:
	b .L386
.L397:
	ldr r4, [fp, #-124]
	ldr r5, addr_N2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L398
	b .L402
.L398:
	ldr r4, [fp, #-124]
	mov r5, #-120
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L398
	b .L409
.L399:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #148
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
