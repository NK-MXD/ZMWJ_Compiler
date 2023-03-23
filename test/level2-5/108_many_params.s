	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global sort
	.type sort , %function
sort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L546:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L550
.L550:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L551
	b .L555
.L551:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L557
.L552:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L555:
	b .L552
.L557:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L558
	b .L562
.L558:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L563
	b .L571
.L559:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L551
	b .L591
.L562:
	b .L559
.L563:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	b .L564
.L564:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L558
	b .L584
.L571:
	b .L564
.L584:
	b .L559
.L591:
	b .L552

	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #224
.L592:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #36]
	str r3, [fp, #-20]
	ldr r3, [fp, #40]
	str r3, [fp, #-24]
	ldr r3, [fp, #44]
	str r3, [fp, #-28]
	ldr r3, [fp, #48]
	str r3, [fp, #-32]
	ldr r3, [fp, #52]
	str r3, [fp, #-36]
	ldr r3, [fp, #56]
	str r3, [fp, #-40]
	ldr r3, [fp, #60]
	str r3, [fp, #-44]
	ldr r3, [fp, #64]
	str r3, [fp, #-48]
	ldr r3, [fp, #68]
	str r3, [fp, #-52]
	ldr r3, [fp, #72]
	str r3, [fp, #-56]
	ldr r3, [fp, #76]
	str r3, [fp, #-60]
	ldr r3, [fp, #80]
	str r3, [fp, #-64]
	ldr r3, [fp, #84]
	str r3, [fp, #-68]
	ldr r3, [fp, #88]
	str r3, [fp, #-72]
	ldr r3, [fp, #92]
	str r3, [fp, #-76]
	ldr r3, [fp, #96]
	str r3, [fp, #-80]
	ldr r3, [fp, #100]
	str r3, [fp, #-84]
	ldr r3, [fp, #104]
	str r3, [fp, #-88]
	ldr r3, [fp, #108]
	str r3, [fp, #-92]
	ldr r3, [fp, #112]
	str r3, [fp, #-96]
	ldr r3, [fp, #116]
	str r3, [fp, #-100]
	ldr r3, [fp, #120]
	str r3, [fp, #-104]
	ldr r3, [fp, #124]
	str r3, [fp, #-108]
	ldr r3, [fp, #128]
	str r3, [fp, #-112]
	ldr r3, [fp, #132]
	str r3, [fp, #-116]
	ldr r3, [fp, #136]
	str r3, [fp, #-120]
	ldr r3, [fp, #140]
	str r3, [fp, #-124]
	ldr r3, [fp, #144]
	str r3, [fp, #-128]
	ldr r4, [fp, #-4]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L625
	b .L630
.L625:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L626:
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-12]
	add r7, r4, r6
	ldr r4, =998244353
	sdiv r6, r7, r4
	mul r8, r6, r4
	sub r4, r7, r8
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-24]
	str r8, [fp, #-132]
	ldr r8, [fp, #-28]
	str r8, [fp, #-136]
	ldr r8, [fp, #-32]
	str r8, [fp, #-140]
	ldr r8, [fp, #-36]
	str r8, [fp, #-144]
	ldr r8, [fp, #-40]
	str r8, [fp, #-148]
	ldr r8, [fp, #-44]
	str r8, [fp, #-152]
	ldr r8, [fp, #-48]
	str r8, [fp, #-156]
	ldr r8, [fp, #-52]
	str r8, [fp, #-160]
	ldr r8, [fp, #-56]
	str r8, [fp, #-164]
	ldr r8, [fp, #-60]
	str r8, [fp, #-168]
	ldr r8, [fp, #-64]
	str r8, [fp, #-172]
	ldr r8, [fp, #-68]
	str r8, [fp, #-176]
	ldr r8, [fp, #-72]
	str r8, [fp, #-180]
	ldr r8, [fp, #-76]
	str r8, [fp, #-184]
	ldr r8, [fp, #-80]
	str r8, [fp, #-188]
	ldr r8, [fp, #-84]
	str r8, [fp, #-192]
	ldr r8, [fp, #-88]
	str r8, [fp, #-196]
	ldr r8, [fp, #-92]
	str r8, [fp, #-200]
	ldr r8, [fp, #-96]
	str r8, [fp, #-204]
	ldr r8, [fp, #-100]
	str r8, [fp, #-208]
	ldr r8, [fp, #-104]
	str r8, [fp, #-212]
	ldr r8, [fp, #-108]
	str r8, [fp, #-216]
	ldr r8, [fp, #-112]
	str r8, [fp, #-220]
	ldr r8, [fp, #-116]
	str r8, [fp, #-224]
	ldr r8, [fp, #-120]
	ldr r9, [fp, #-124]
	ldr r10, [fp, #-128]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	mov r4, #0
	push {r4}
	push {r10}
	push {r9}
	push {r8}
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
	mov r4, r0
	mov r0, r4
	add sp, sp, #224
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L630:
	b .L626

	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L631:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #28]
	str r3, [fp, #-20]
	ldr r3, [fp, #32]
	str r3, [fp, #-24]
	ldr r3, [fp, #36]
	str r3, [fp, #-28]
	ldr r3, [fp, #40]
	str r3, [fp, #-32]
	ldr r3, [fp, #44]
	str r3, [fp, #-36]
	ldr r3, [fp, #48]
	str r3, [fp, #-40]
	ldr r3, [fp, #52]
	str r3, [fp, #-44]
	ldr r3, [fp, #56]
	str r3, [fp, #-48]
	ldr r3, [fp, #60]
	str r3, [fp, #-52]
	ldr r3, [fp, #64]
	str r3, [fp, #-56]
	ldr r3, [fp, #68]
	str r3, [fp, #-60]
	ldr r3, [fp, #72]
	str r3, [fp, #-64]
	ldr r3, [fp, #76]
	str r3, [fp, #-68]
	ldr r3, [fp, #80]
	str r3, [fp, #-72]
	ldr r3, [fp, #84]
	str r3, [fp, #-76]
	ldr r3, [fp, #88]
	str r3, [fp, #-80]
	ldr r3, [fp, #92]
	str r3, [fp, #-84]
	ldr r3, [fp, #96]
	str r3, [fp, #-88]
	ldr r3, [fp, #100]
	str r3, [fp, #-92]
	ldr r3, [fp, #104]
	str r3, [fp, #-96]
	ldr r3, [fp, #108]
	str r3, [fp, #-100]
	ldr r3, [fp, #112]
	str r3, [fp, #-104]
	ldr r3, [fp, #116]
	str r3, [fp, #-108]
	ldr r3, [fp, #120]
	str r3, [fp, #-112]
	ldr r3, [fp, #124]
	str r3, [fp, #-116]
	ldr r3, [fp, #128]
	str r3, [fp, #-120]
	ldr r3, [fp, #132]
	str r3, [fp, #-124]
	ldr r3, [fp, #136]
	str r3, [fp, #-128]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-8]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-12]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-16]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-20]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-24]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-24]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-28]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-28]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-32]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-32]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-36]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-36]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-40]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-40]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-44]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-44]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-48]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-48]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-52]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-52]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-56]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-56]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-60]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-60]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-64]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-64]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-68]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-68]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-72]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-72]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-76]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-76]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-80]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-80]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-84]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-84]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-88]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-88]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-92]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-92]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-96]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-96]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-100]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-100]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-104]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-104]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-108]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-108]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-112]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-112]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-116]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-116]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-120]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	b .B0
.LTORG
.B0:
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-120]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-124]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-124]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-128]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-128]
	mov r5, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-132]
	ldr r4, [fp, #-132]
	mov r0, r4
	add sp, sp, #132
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F2
.LTORG
.F2:

	.global param16
	.type param16 , %function
param16:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #228
.L793:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #36]
	str r3, [fp, #-20]
	ldr r3, [fp, #40]
	str r3, [fp, #-24]
	ldr r3, [fp, #44]
	str r3, [fp, #-28]
	ldr r3, [fp, #48]
	str r3, [fp, #-32]
	ldr r3, [fp, #52]
	str r3, [fp, #-36]
	ldr r3, [fp, #56]
	str r3, [fp, #-40]
	ldr r3, [fp, #60]
	str r3, [fp, #-44]
	ldr r3, [fp, #64]
	str r3, [fp, #-48]
	ldr r3, [fp, #68]
	str r3, [fp, #-52]
	ldr r3, [fp, #72]
	str r3, [fp, #-56]
	ldr r3, [fp, #76]
	str r3, [fp, #-60]
	ldr r3, [fp, #80]
	str r3, [fp, #-64]
	add r0, fp, #-128
	mov r1, #0
	mov r2, #64
	bl memset
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #-128
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-8]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-12]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-20]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-24]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-28]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-32]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-36]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-40]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-44]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-48]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-52]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-56]
	add r5, r6, #4
	str r4, [r5]
	ldr r4, [fp, #-60]
	add r6, r5, #4
	str r4, [r6]
	ldr r4, [fp, #-64]
	add r5, r6, #4
	str r4, [r5]
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	mov r1, #16
	bl sort
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #1
	mov r6, #-128
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	mov r6, #2
	mov r7, #-128
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	ldr r6, [r7]
	mov r7, #3
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-132]
	mov r7, #4
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-136]
	mov r7, #5
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-140]
	mov r7, #6
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-144]
	mov r7, #7
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-148]
	mov r7, #8
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-152]
	mov r7, #9
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-156]
	mov r7, #10
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-160]
	mov r7, #11
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-164]
	mov r7, #12
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-168]
	mov r7, #13
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-172]
	mov r7, #14
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-176]
	mov r7, #15
	mov r8, #-128
	mov r9, #4
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	ldr r7, [r8]
	str r7, [fp, #-180]
	ldr r7, [fp, #-4]
	str r7, [fp, #-184]
	ldr r7, [fp, #-8]
	str r7, [fp, #-188]
	ldr r7, [fp, #-12]
	str r7, [fp, #-192]
	ldr r7, [fp, #-16]
	str r7, [fp, #-196]
	ldr r7, [fp, #-20]
	str r7, [fp, #-200]
	ldr r7, [fp, #-24]
	str r7, [fp, #-204]
	ldr r7, [fp, #-28]
	str r7, [fp, #-208]
	ldr r7, [fp, #-32]
	str r7, [fp, #-212]
	ldr r7, [fp, #-36]
	str r7, [fp, #-216]
	ldr r7, [fp, #-40]
	str r7, [fp, #-220]
	ldr r7, [fp, #-44]
	str r7, [fp, #-224]
	ldr r7, [fp, #-48]
	str r7, [fp, #-228]
	ldr r7, [fp, #-52]
	ldr r8, [fp, #-56]
	ldr r9, [fp, #-60]
	ldr r10, [fp, #-64]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	ldr r4, [fp, #-132]
	mov r3, r4
	push {r10}
	push {r9}
	push {r8}
	push {r7}
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
	bl param32_rec
	add sp, sp, #112
	mov r4, r0
	mov r0, r4
	add sp, sp, #228
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F3
.LTORG
.F3:

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =408
	sub sp, sp, r4
.L844:
	ldr r4, =-256
	add r0, fp, r4
	mov r1, #0
	ldr r4, =256
	mov r2, r4
	bl memset
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	bl getint
	mov r7, r0
	bl getint
	mov r8, r0
	ldr r9, =-264
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-272
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-280
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-288
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-296
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-304
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-312
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-320
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	ldr r9, =-328
	str r8, [fp, r9]
	bl getint
	mov r8, r0
	bl getint
	mov r9, r0
	bl getint
	mov r10, r0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r10}
	push {r9}
	push {r8}
	ldr r4, =-328
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-320
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-312
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-304
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-296
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-288
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-280
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-272
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-264
	ldr r5, [fp, r4]
	push {r5}
	bl param16
	add sp, sp, #48
	mov r4, r0
	mov r5, #0
	ldr r6, =-256
	mov r7, #8
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8848
	str r5, [r4]
	ldr r4, =1
	ldr r5, =-260
	str r4, [fp, r5]
	b .L976
.L976:
	ldr r5, =-260
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L977
	b .L981
.L977:
	ldr r5, =-260
	ldr r4, [fp, r5]
	sub r5, r4, #1
	ldr r4, =-256
	mov r6, #8
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	sub r5, r4, #1
<<<<<<< HEAD
=======
	ldr r4, =-260
	ldr r6, [fp, r4]
	ldr r4, =-256
	mov r7, #8
	mul r8, r6, r7
	add r6, fp, r4
	add r4, r6, r8
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	ldr r5, =-260
	ldr r4, [fp, r5]
	sub r5, r4, #1
	ldr r4, =-256
	mov r6, #8
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	sub r5, r4, #2
>>>>>>> master
	ldr r6, =-260
	ldr r4, [fp, r6]
	ldr r6, =-256
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
<<<<<<< HEAD
	mov r4, #0
=======
	mov r4, #1
>>>>>>> master
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
<<<<<<< HEAD
	ldr r4, =-260
	ldr r5, [fp, r4]
	sub r4, r5, #1
	ldr r5, =-256
	mov r6, #8
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	sub r4, r5, #2
	ldr r5, =-260
	ldr r6, [fp, r5]
	ldr r5, =-256
	mov r7, #8
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	mov r6, #1
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
=======
>>>>>>> master
	ldr r5, =-260
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-260
	str r5, [fp, r4]
<<<<<<< HEAD
	ldr r5, =-260
	ldr r4, [fp, r5]
	cmp r4, #32
=======
	ldr r4, =-260
	ldr r5, [fp, r4]
	cmp r5, #32
>>>>>>> master
	movlt r4, #1
	movge r4, #0
	blt .L977
	b .L992
	b .F4
.LTORG
.F4:
.L978:
	mov r4, #0
	ldr r5, =-256
	mov r6, #8
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #1
	ldr r6, =-256
	mov r7, #8
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, #2
	ldr r7, =-256
	mov r8, #8
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	mov r6, #0
	mov r8, #4
	mul r9, r6, r8
	add r6, r7, r9
	mov r7, #3
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-336
	str r7, [fp, r8]
	mov r7, #4
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-268
	str r7, [fp, r8]
	mov r7, #5
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-276
	str r7, [fp, r8]
	mov r7, #6
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-284
	str r7, [fp, r8]
	mov r7, #7
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-292
	str r7, [fp, r8]
	mov r7, #8
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-300
	str r7, [fp, r8]
	mov r7, #9
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-308
	str r7, [fp, r8]
	mov r7, #10
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-316
	str r7, [fp, r8]
	mov r7, #11
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-324
	str r7, [fp, r8]
	mov r7, #12
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-332
	str r7, [fp, r8]
	mov r7, #13
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-340
	str r7, [fp, r8]
	mov r7, #14
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-344
	str r7, [fp, r8]
	mov r7, #15
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-348
	str r7, [fp, r8]
	mov r7, #16
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-352
	str r7, [fp, r8]
	mov r7, #17
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-356
	str r7, [fp, r8]
	mov r7, #18
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-360
	str r7, [fp, r8]
	mov r7, #19
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-364
	str r7, [fp, r8]
	mov r7, #20
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-368
	str r7, [fp, r8]
	mov r7, #21
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-372
	str r7, [fp, r8]
	mov r7, #22
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-376
	str r7, [fp, r8]
	mov r7, #23
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-380
	str r7, [fp, r8]
	mov r7, #24
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-384
	str r7, [fp, r8]
	mov r7, #25
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-388
	str r7, [fp, r8]
	mov r7, #26
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-392
	str r7, [fp, r8]
	mov r7, #27
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-396
	str r7, [fp, r8]
	mov r7, #28
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-400
	str r7, [fp, r8]
	mov r7, #29
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-404
	str r7, [fp, r8]
	mov r7, #30
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	ldr r8, =-408
	str r7, [fp, r8]
	mov r7, #31
	ldr r8, =-256
	mov r9, #8
	mul r10, r7, r9
	add r7, fp, r8
	add r8, r7, r10
	mov r7, #0
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	mov r0, r4
	mov r1, r5
	mov r2, r6
	ldr r4, =-336
	ldr r5, [fp, r4]
	mov r3, r5
	push {r7}
	ldr r4, =-408
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-404
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-400
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-396
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-392
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-388
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-384
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-380
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-376
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-372
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-368
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-364
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-360
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-356
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-352
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-348
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-344
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-340
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-332
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-324
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-316
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-308
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-300
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-292
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-284
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-276
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-268
	ldr r5, [fp, r4]
	push {r5}
	bl param32_arr
	add sp, sp, #112
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F5
.LTORG
.F5:
.L981:
	b .L978
.L992:
	b .L978

