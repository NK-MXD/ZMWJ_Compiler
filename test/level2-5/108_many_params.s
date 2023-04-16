	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global sort
	.type sort , %function
sort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L546:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L550
.L550:
	ldr r1, [fp, #-8]
	sub r2, r1, #1
	ldr r1, =0
	ldr r3, =0
	ldr r3, =0
	mov r4, r3
	ldr r3, =0
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L551
	b .L555
.L551:
	add r6, r4, #1
	b .L557
.L552:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L555:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L552
.L557:
	ldr r5, [fp, #-8]
	mov r2, r1
	mov r3, r6
	cmp r6, r5
	movlt r5, #1
	movge r5, #0
	blt .L558
	b .L562
.L558:
	ldr r1, [fp, #-4]
	mov r5, #4
	mla r5, r4, r5, r1
	ldr r6, [r5]
	mov r5, #4
	mla r1, r3, r5, r1
	ldr r1, [r1]
	cmp r6, r1
	movlt r1, #1
	movge r1, #0
	blt .L563
	b .L571
.L559:
	add r3, r4, #1
	ldr r2, [fp, #-8]
	sub r2, r2, #1
	mov r4, r3
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L551
	b .L591
.L562:
	b .L559
.L563:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	mov r5, #4
	mla r5, r3, r5, r2
	ldr r6, [r5]
	mov r5, #4
	mla r5, r4, r5, r2
	str r6, [r5]
	mov r5, #4
	mla r2, r3, r5, r2
	str r1, [r2]
	mov r6, r1
	b .L564
.L564:
	add r5, r3, #1
	ldr r1, [fp, #-8]
	mov r2, r6
	mov r3, r5
	cmp r5, r1
	movlt r1, #1
	movge r1, #0
	blt .L558
	b .L584
.L571:
	mov r6, r2
	b .L564
.L584:
	mov r1, r6
	b .L559
.L591:
	b .L552

	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #216
.L592:
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
	ldr r3, [fp, #60]
	str r3, [fp, #-40]
	ldr r3, [fp, #64]
	str r3, [fp, #-44]
	ldr r3, [fp, #68]
	str r3, [fp, #-48]
	ldr r3, [fp, #72]
	str r3, [fp, #-52]
	ldr r3, [fp, #76]
	str r3, [fp, #-56]
	ldr r3, [fp, #80]
	str r3, [fp, #-60]
	ldr r3, [fp, #84]
	str r3, [fp, #-64]
	ldr r3, [fp, #88]
	str r3, [fp, #-68]
	ldr r3, [fp, #92]
	str r3, [fp, #-72]
	ldr r3, [fp, #96]
	str r3, [fp, #-76]
	ldr r3, [fp, #100]
	str r3, [fp, #-80]
	ldr r3, [fp, #104]
	str r3, [fp, #-84]
	ldr r3, [fp, #108]
	str r3, [fp, #-88]
	ldr r3, [fp, #112]
	str r3, [fp, #-92]
	ldr r3, [fp, #116]
	str r3, [fp, #-96]
	ldr r3, [fp, #120]
	str r3, [fp, #-100]
	ldr r3, [fp, #124]
	str r3, [fp, #-104]
	ldr r3, [fp, #128]
	str r3, [fp, #-108]
	ldr r3, [fp, #132]
	str r3, [fp, #-112]
	ldr r3, [fp, #136]
	str r3, [fp, #-116]
	ldr r3, [fp, #140]
	str r3, [fp, #-120]
	ldr r3, [fp, #144]
	str r3, [fp, #-124]
	ldr r3, [fp, #148]
	str r3, [fp, #-128]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L625
	b .L630
.L625:
	ldr r0, [fp, #-8]
	add sp, sp, #216
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L626:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	add r3, r2, r1
	ldr r2, =998244353
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r1, r3, r1
	ldr r2, [fp, #-16]
	ldr r3, [fp, #-20]
	ldr r4, [fp, #-24]
	str r4, [fp, #-132]
	ldr r4, [fp, #-28]
	str r4, [fp, #-136]
	ldr r4, [fp, #-32]
	str r4, [fp, #-140]
	ldr r4, [fp, #-36]
	str r4, [fp, #-144]
	ldr r4, [fp, #-40]
	str r4, [fp, #-148]
	ldr r4, [fp, #-44]
	str r4, [fp, #-152]
	ldr r4, [fp, #-48]
	str r4, [fp, #-156]
	ldr r4, [fp, #-52]
	str r4, [fp, #-160]
	ldr r4, [fp, #-56]
	str r4, [fp, #-164]
	ldr r4, [fp, #-60]
	str r4, [fp, #-168]
	ldr r4, [fp, #-64]
	str r4, [fp, #-172]
	ldr r4, [fp, #-68]
	str r4, [fp, #-176]
	ldr r4, [fp, #-72]
	str r4, [fp, #-180]
	ldr r4, [fp, #-76]
	str r4, [fp, #-184]
	ldr r4, [fp, #-80]
	str r4, [fp, #-188]
	ldr r4, [fp, #-84]
	str r4, [fp, #-192]
	ldr r4, [fp, #-88]
	str r4, [fp, #-196]
	ldr r4, [fp, #-92]
	str r4, [fp, #-200]
	ldr r4, [fp, #-96]
	str r4, [fp, #-204]
	ldr r4, [fp, #-100]
	str r4, [fp, #-208]
	ldr r4, [fp, #-104]
	str r4, [fp, #-216]
	ldr r10, [fp, #-108]
	ldr r9, [fp, #-112]
	ldr r8, [fp, #-116]
	ldr r7, [fp, #-120]
	ldr r6, [fp, #-124]
	ldr r5, [fp, #-128]
	mov r4, #0
	str r4, [fp, #-212]
	mov r4, r4
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, [fp, #-216]
	push {r4}
	ldr r4, [fp, #-208]
	push {r4}
	ldr r4, [fp, #-204]
	push {r4}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r4, [fp, #-196]
	push {r4}
	ldr r4, [fp, #-192]
	push {r4}
	ldr r4, [fp, #-188]
	push {r4}
	ldr r4, [fp, #-184]
	push {r4}
	ldr r4, [fp, #-180]
	push {r4}
	ldr r4, [fp, #-176]
	push {r4}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r4, [fp, #-168]
	push {r4}
	ldr r4, [fp, #-164]
	push {r4}
	ldr r4, [fp, #-160]
	push {r4}
	ldr r4, [fp, #-156]
	push {r4}
	ldr r4, [fp, #-152]
	push {r4}
	ldr r4, [fp, #-148]
	push {r4}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r4, [fp, #-140]
	push {r4}
	ldr r4, [fp, #-136]
	push {r4}
	ldr r4, [fp, #-132]
	push {r4}
	bl param32_rec
	add sp, sp, #112
	add sp, sp, #216
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L630:
	b .L626

	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L631:
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
	ldr r3, [fp, #36]
	str r3, [fp, #-40]
	ldr r3, [fp, #40]
	str r3, [fp, #-44]
	ldr r3, [fp, #44]
	str r3, [fp, #-48]
	ldr r3, [fp, #48]
	str r3, [fp, #-52]
	ldr r3, [fp, #52]
	str r3, [fp, #-56]
	ldr r3, [fp, #56]
	str r3, [fp, #-60]
	ldr r3, [fp, #60]
	str r3, [fp, #-64]
	ldr r3, [fp, #64]
	str r3, [fp, #-68]
	ldr r3, [fp, #68]
	str r3, [fp, #-72]
	ldr r3, [fp, #72]
	str r3, [fp, #-76]
	ldr r3, [fp, #76]
	str r3, [fp, #-80]
	ldr r3, [fp, #80]
	str r3, [fp, #-84]
	ldr r3, [fp, #84]
	str r3, [fp, #-88]
	ldr r3, [fp, #88]
	str r3, [fp, #-92]
	ldr r3, [fp, #92]
	str r3, [fp, #-96]
	ldr r3, [fp, #96]
	str r3, [fp, #-100]
	ldr r3, [fp, #100]
	str r3, [fp, #-104]
	ldr r3, [fp, #104]
	str r3, [fp, #-108]
	ldr r3, [fp, #108]
	str r3, [fp, #-112]
	ldr r3, [fp, #112]
	str r3, [fp, #-116]
	ldr r3, [fp, #116]
	str r3, [fp, #-120]
	ldr r3, [fp, #120]
	str r3, [fp, #-124]
	ldr r3, [fp, #124]
	str r3, [fp, #-128]
	ldr r3, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r2, [r0]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-8]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-20]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-24]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-28]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-32]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-36]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-40]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-44]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-48]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-52]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-56]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-60]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-64]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-68]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r3, r2, r0
	ldr r2, [fp, #-72]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add r3, r3, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add r2, r3, r0
	ldr r3, [fp, #-76]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-80]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-84]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-88]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-92]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-96]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-100]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-104]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-108]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-112]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-116]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-120]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-124]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	ldr r3, [fp, #-128]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r0, r2, r0
	add sp, sp, #128
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.global param16
	.type param16 , %function
param16:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =256
	sub sp, sp, r4
.L793:
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
	ldr r3, [fp, #60]
	str r3, [fp, #-40]
	ldr r3, [fp, #64]
	str r3, [fp, #-44]
	ldr r3, [fp, #68]
	str r3, [fp, #-48]
	ldr r3, [fp, #72]
	str r3, [fp, #-52]
	ldr r3, [fp, #76]
	str r3, [fp, #-56]
	ldr r3, [fp, #80]
	str r3, [fp, #-60]
	ldr r3, [fp, #84]
	str r3, [fp, #-64]
	add r0, fp, #-128
	mov r1, #0
	mov r2, #64
	bl memset
	ldr r3, [fp, #-4]
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	str r3, [r4]
	ldr r1, [fp, #-8]
	add r0, r4, #4
	str r0, [fp, #-132]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-132]
	add r0, r0, #4
	str r0, [fp, #-136]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-136]
	add r0, r0, #4
	str r0, [fp, #-140]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-140]
	add r0, r0, #4
	str r0, [fp, #-144]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-144]
	add r0, r0, #4
	str r0, [fp, #-148]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-148]
	add r0, r0, #4
	str r0, [fp, #-152]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-152]
	add r0, r0, #4
	str r0, [fp, #-156]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-36]
	ldr r0, [fp, #-156]
	add r0, r0, #4
	str r0, [fp, #-160]
	mov r0, r0
	str r1, [r0]
	ldr r1, [fp, #-40]
	ldr r0, [fp, #-160]
	add r5, r0, #4
	str r1, [r5]
	ldr r0, [fp, #-44]
	add r6, r5, #4
	str r0, [r6]
	ldr r0, [fp, #-48]
	add r10, r6, #4
	str r0, [r10]
	ldr r0, [fp, #-52]
	add r9, r10, #4
	str r0, [r9]
	ldr r0, [fp, #-56]
	add r8, r9, #4
	str r0, [r8]
	ldr r0, [fp, #-60]
	add r7, r8, #4
	str r0, [r7]
	ldr r1, [fp, #-64]
	add r0, r7, #4
	str r0, [fp, #-164]
	mov r0, r0
	str r1, [r0]
	mov r0, r4
	mov r1, #16
	bl sort
	ldr r0, [r4]
	str r0, [fp, #-252]
	ldr r0, [fp, #-132]
	ldr r1, [r0]
	ldr r0, [fp, #-136]
	ldr r2, [r0]
	ldr r0, [fp, #-140]
	ldr r3, [r0]
	ldr r0, [fp, #-144]
	ldr r0, [r0]
	str r0, [fp, #-168]
	ldr r0, [fp, #-148]
	ldr r0, [r0]
	str r0, [fp, #-172]
	ldr r0, [fp, #-152]
	ldr r0, [r0]
	str r0, [fp, #-176]
	ldr r0, [fp, #-156]
	ldr r0, [r0]
	str r0, [fp, #-180]
	ldr r0, [fp, #-160]
	ldr r0, [r0]
	str r0, [fp, #-184]
	ldr r0, [r5]
	str r0, [fp, #-188]
	ldr r0, [r6]
	str r0, [fp, #-192]
	ldr r0, [r10]
	str r0, [fp, #-196]
	ldr r0, [r9]
	str r0, [fp, #-200]
	ldr r0, [r8]
	str r0, [fp, #-204]
	ldr r0, [r7]
	str r0, [fp, #-208]
	ldr r0, [fp, #-164]
	ldr r0, [r0]
	str r0, [fp, #-212]
	ldr r0, [fp, #-4]
	str r0, [fp, #-216]
	ldr r0, [fp, #-8]
	str r0, [fp, #-220]
	ldr r0, [fp, #-12]
	str r0, [fp, #-224]
	ldr r0, [fp, #-16]
	str r0, [fp, #-228]
	ldr r0, [fp, #-20]
	str r0, [fp, #-232]
	ldr r0, [fp, #-24]
	str r0, [fp, #-236]
	ldr r0, [fp, #-28]
	str r0, [fp, #-240]
	ldr r0, [fp, #-32]
	str r0, [fp, #-244]
	ldr r0, [fp, #-36]
	str r0, [fp, #-248]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-44]
	ldr r8, [fp, #-48]
	ldr r7, [fp, #-52]
	ldr r6, [fp, #-56]
	ldr r5, [fp, #-60]
	ldr r4, [fp, #-64]
	ldr r0, [fp, #-252]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
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
	ldr r4, [fp, #-212]
	push {r4}
	ldr r4, [fp, #-208]
	push {r4}
	ldr r4, [fp, #-204]
	push {r4}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r4, [fp, #-196]
	push {r4}
	ldr r4, [fp, #-192]
	push {r4}
	ldr r4, [fp, #-188]
	push {r4}
	ldr r4, [fp, #-184]
	push {r4}
	ldr r4, [fp, #-180]
	push {r4}
	ldr r4, [fp, #-176]
	push {r4}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r4, [fp, #-168]
	push {r4}
	bl param32_rec
	add sp, sp, #112
	ldr r1, =256
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F1
.LTORG
.F1:

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =392
	sub sp, sp, r4
.L844:
	ldr r0, =-256
	add r0, fp, r0
	mov r1, #0
	ldr r2, =256
	bl memset
	bl getint
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-264
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-268
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-272
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-276
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-280
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-284
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-288
	str r1, [fp, r0]
	bl getint
	mov r1, r0
	ldr r0, =-292
	str r1, [fp, r0]
	bl getint
	mov r10, r0
	bl getint
	mov r9, r0
	bl getint
	mov r8, r0
	bl getint
	mov r7, r0
	bl getint
	mov r6, r0
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	ldr r0, =-260
	ldr r0, [fp, r0]
	ldr r1, =-264
	ldr r1, [fp, r1]
	ldr r2, =-268
	ldr r2, [fp, r2]
	ldr r3, =-272
	ldr r3, [fp, r3]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
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
	bl param16
	add sp, sp, #48
	mov r2, #0
	ldr r3, =-256
	mov r1, #8
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8848
	str r0, [r1]
	b .L976
.L976:
	ldr r0, =1
	mov r2, r0
	ldr r0, =1
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L977
	b .L981
.L977:
	sub r1, r2, #1
	ldr r3, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r3
	add r1, r0, r1
	mov r3, #1
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	ldr r5, =-256
	mov r3, #8
	mul r4, r2, r3
	add r3, fp, r5
	add r5, r3, r4
	mov r4, #0
	mov r3, #4
	mla r3, r4, r3, r5
	str r0, [r3]
	mov r3, #0
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r0, [r0]
	sub r0, r0, #2
	ldr r4, =-256
	mov r1, #8
	mul r3, r2, r1
	add r1, fp, r4
	add r4, r1, r3
	mov r3, #1
	mov r1, #4
	mla r1, r3, r1, r4
	str r0, [r1]
	add r1, r2, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1134
	b .L992
.L978:
	mov r1, #0
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r3, r1, r0, r2
	mov r1, #1
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-296
	str r1, [fp, r0]
	mov r1, #2
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-300
	str r1, [fp, r0]
	mov r1, #3
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-304
	str r1, [fp, r0]
	mov r1, #4
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-308
	str r1, [fp, r0]
	mov r1, #5
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-312
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-316
	str r1, [fp, r0]
	mov r1, #7
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-320
	str r1, [fp, r0]
	mov r1, #8
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-324
	str r1, [fp, r0]
	mov r1, #9
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-328
	str r1, [fp, r0]
	mov r1, #10
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-332
	str r1, [fp, r0]
	mov r1, #11
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-336
	str r1, [fp, r0]
	mov r1, #12
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-340
	str r1, [fp, r0]
	mov r1, #13
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-344
	str r1, [fp, r0]
	mov r1, #14
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-348
	str r1, [fp, r0]
	mov r1, #15
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-352
	str r1, [fp, r0]
	mov r1, #16
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-356
	str r1, [fp, r0]
	mov r1, #17
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-360
	str r1, [fp, r0]
	mov r1, #18
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-364
	str r1, [fp, r0]
	mov r1, #19
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-368
	str r1, [fp, r0]
	mov r1, #20
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-372
	str r1, [fp, r0]
	mov r1, #21
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-376
	str r1, [fp, r0]
	mov r1, #22
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-380
	str r1, [fp, r0]
	mov r1, #23
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-384
	str r1, [fp, r0]
	mov r1, #24
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-388
	str r1, [fp, r0]
	mov r1, #25
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #0
	mov r2, #4
	mla r10, r0, r2, r1
	mov r1, #26
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r9, r1, r0, r2
	mov r1, #27
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r8, r1, r0, r2
	mov r1, #28
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r7, r2, r1, r0
	mov r2, #29
	ldr r0, =-256
	mov r1, #8
	mul r1, r2, r1
	add r0, fp, r0
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r6, r2, r1, r0
	mov r1, #30
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #0
	mov r0, #4
	mla r5, r2, r0, r1
	mov r1, #31
	ldr r2, =-256
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #0
	mov r0, #4
	mla r4, r2, r0, r1
	mov r0, r3
	ldr r1, =-296
	ldr r1, [fp, r1]
	ldr r2, =-300
	ldr r2, [fp, r2]
	ldr r3, =-304
	ldr r3, [fp, r3]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, =-388
	ldr r4, [fp, r4]
	push {r4}
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
	ldr r4, =-344
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-340
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-336
	ldr r4, [fp, r4]
	push {r4}
	ldr r4, =-332
	ldr r4, [fp, r4]
	push {r4}
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
	bl param32_arr
	add sp, sp, #112
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =392
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F2
.LTORG
.F2:
.L981:
	ldr r0, =1
	b .L978
.L992:
	b .L978
.L1134:
	mov r2, r1
	b .L977

	.ident "ZWJM"
