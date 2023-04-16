	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L933:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #127
	movgt r0, #1
	movle r0, #0
	bgt .L935
	b .L939
.L935:
	mov r0, #127
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L936:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L940
	b .L944
.L939:
	b .L936
.L940:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L941:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L944:
	b .L941

	.global model
	.type model , %function
model:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #216
.L945:
	str r0, [fp, #-4]
	mov r0, r0
	mov r2, #0
	mov r1, #20
	mla r1, r2, r1, r0
	ldr r2, [r1]
	ldr r1, =85
	mul r1, r2, r1
	mov r3, #0
	mov r2, #20
	mla r4, r3, r2, r0
	mov r3, #1
	mov r2, #4
	mla r2, r3, r2, r4
	str r2, [fp, #-96]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =23
	mla r1, r3, r2, r1
	mov r3, #2
	mov r2, #4
	mla r2, r3, r2, r4
	str r2, [fp, #-100]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =0
	sub r2, r2, #82
	mla r1, r3, r2, r1
	mov r3, #3
	mov r2, #4
	mla r2, r3, r2, r4
	str r2, [fp, #-8]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =0
	sub r2, r2, #103
	str r2, [fp, #-72]
	mov r2, r2
	mla r1, r3, r2, r1
	mov r3, #4
	mov r2, #4
	mla r2, r3, r2, r4
	str r2, [fp, #-48]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =0
	sub r2, r2, #123
	str r2, [fp, #-16]
	mov r2, r2
	mla r1, r3, r2, r1
	mov r3, #1
	mov r2, #20
	mla r2, r3, r2, r0
	mov r5, #0
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-20]
	mov r3, r3
	ldr r3, [r3]
	lsl r3, r3, #6
	add r1, r1, r3
	mov r5, #1
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-40]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =0
	sub r3, r3, #120
	mla r1, r5, r3, r1
	mov r5, #2
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-56]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =50
	mla r1, r5, r3, r1
	mov r5, #3
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-12]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =0
	sub r3, r3, #59
	mla r1, r5, r3, r1
	mov r5, #4
	mov r3, #4
	mla r2, r5, r3, r2
	str r2, [fp, #-52]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =47
	mla r3, r3, r2, r1
	mov r2, #2
	mov r1, #20
	mla r2, r2, r1, r0
	mov r5, #0
	mov r1, #4
	mla r1, r5, r1, r2
	str r1, [fp, #-44]
	mov r1, r1
	ldr r5, [r1]
	ldr r1, =0
	sub r1, r1, #111
	mla r1, r5, r1, r3
	mov r5, #1
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-60]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =0
	sub r3, r3, #67
	mul r3, r5, r3
	str r3, [fp, #-64]
	mov r3, r3
	add r1, r1, r3
	mov r5, #2
	mov r3, #4
	mla r3, r5, r3, r2
	str r3, [fp, #-68]
	mov r3, r3
	ldr r3, [r3]
	ldr r5, =0
	sub r7, r5, #106
	mla r3, r3, r7, r1
	mov r5, #3
	mov r1, #4
	mla r1, r5, r1, r2
	str r1, [fp, #-24]
	mov r1, r1
	ldr r1, [r1]
	ldr r5, =0
	sub r5, r5, #75
	str r5, [fp, #-32]
	mov r5, r5
	mla r3, r1, r5, r3
	mov r5, #4
	mov r1, #4
	mla r1, r5, r1, r2
	str r1, [fp, #-36]
	mov r1, r1
	ldr r1, [r1]
	ldr r2, =0
	sub r2, r2, #102
	str r2, [fp, #-76]
	mov r2, r2
	mla r2, r1, r2, r3
	mov r3, #3
	mov r1, #20
	mla r1, r3, r1, r0
	mov r5, #0
	mov r3, #4
	mla r3, r5, r3, r1
	str r3, [fp, #-80]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =34
	mla r3, r5, r3, r2
	mov r5, #1
	mov r2, #4
	mla r2, r5, r2, r1
	str r2, [fp, #-84]
	mov r2, r2
	ldr r2, [r2]
	ldr r5, =0
	sub r5, r5, #39
	str r5, [fp, #-88]
	mov r5, r5
	mla r2, r2, r5, r3
	mov r5, #2
	mov r3, #4
	mla r3, r5, r3, r1
	str r3, [fp, #-92]
	mov r3, r3
	ldr r5, [r3]
	lsl r3, r5, #6
	add r3, r3, r5
	add r2, r2, r3
	mov r5, #3
	mov r3, #4
	mla r3, r5, r3, r1
	str r3, [fp, #-104]
	mov r3, r3
	ldr r5, [r3]
	ldr r3, =47
	mla r2, r5, r3, r2
	mov r5, #4
	mov r3, #4
	mla r1, r5, r3, r1
	str r1, [fp, #-108]
	mov r1, r1
	ldr r3, [r1]
	ldr r1, =113
	mla r1, r3, r1, r2
	mov r3, #4
	mov r2, #20
	mla r0, r3, r2, r0
	mov r3, #0
	mov r2, #4
	mla r2, r3, r2, r0
	str r2, [fp, #-112]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =110
	mla r1, r3, r2, r1
	mov r3, #1
	mov r2, #4
	mla r2, r3, r2, r0
	str r2, [fp, #-116]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =47
	mla r1, r3, r2, r1
	mov r3, #2
	mov r2, #4
	mla r2, r3, r2, r0
	str r2, [fp, #-120]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =0
	sub r5, r2, #4
	mla r1, r3, r5, r1
	mov r3, #3
	mov r2, #4
	mla r2, r3, r2, r0
	str r2, [fp, #-124]
	mov r2, r2
	ldr r3, [r2]
	ldr r2, =80
	mla r1, r3, r2, r1
	mov r3, #4
	mov r2, #4
	mla r9, r3, r2, r0
	ldr r2, [r9]
	ldr r0, =46
	mla r0, r2, r0, r1
	bl relu_reg
	mov r1, r0
	ldr r0, =39
	mul r6, r1, r0
	mov r1, #0
	mov r0, #4
	mla r10, r1, r0, r4
	ldr r0, [r10]
	mul r2, r0, r7
	ldr r0, [fp, #-96]
	ldr r1, [r0]
	ldr r0, =126
	mla r2, r1, r0, r2
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #18
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =0
	sub r8, r0, #31
	mla r2, r1, r8, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #8
	str r0, [fp, #-28]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r1, [r0]
	ldr r0, =47
	mla r1, r1, r0, r2
	ldr r0, [fp, #-40]
	ldr r0, [r0]
	mla r2, r0, r5, r1
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =67
	mla r2, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #94
	mla r2, r1, r0, r2
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #121
	str r0, [fp, #-128]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-44]
	ldr r0, [r0]
	lsl r1, r0, #3
	sub r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #21
	str r0, [fp, #-132]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #60
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #43
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =105
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #42
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =87
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, =29
	mla r0, r1, r0, r2
	ldr r1, [fp, #-104]
	ldr r1, [r1]
	mla r0, r1, r7, r0
	ldr r1, [fp, #-108]
	ldr r1, [r1]
	mla r2, r1, r8, r0
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #110
	str r0, [fp, #-136]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #100
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #22
	mla r2, r1, r0, r2
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, [fp, #-32]
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =0
	sub r0, r0, #125
	str r0, [fp, #-140]
	mov r0, r0
	mla r0, r1, r0, r2
	bl relu_reg
	mov r1, r0
	ldr r0, =77
	mla r4, r1, r0, r6
	ldr r1, [r10]
	ldr r0, =26
	mul r2, r1, r0
	ldr r0, [fp, #-96]
	ldr r1, [r0]
	ldr r0, =76
	mla r2, r1, r0, r2
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #70
	str r0, [fp, #-144]
	mov r0, r0
	mul r0, r1, r0
	str r0, [fp, #-148]
	mov r0, r0
	add r2, r2, r0
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =29
	mla r2, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #95
	str r0, [fp, #-152]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r1, [r0]
	ldr r0, =96
	mla r2, r1, r0, r2
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, =52
	mla r2, r1, r0, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #68
	str r0, [fp, #-156]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #5
	mla r2, r1, r0, r2
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, =34
	mla r2, r1, r0, r2
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #34
	str r0, [fp, #-160]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =102
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =6
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #38
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =27
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =110
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =116
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, =39
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =0
	sub r5, r0, #63
	mla r2, r1, r5, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #99
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r0, [r0]
	lsl r1, r0, #6
	add r0, r1, r0
	str r0, [fp, #-164]
	mov r0, r0
	add r2, r2, r0
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =120
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, [fp, #-88]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #6
	str r0, [fp, #-168]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =94
	mla r0, r1, r0, r2
	bl relu_reg
	lsl r1, r0, #7
	sub r0, r1, r0
	add r6, r4, r0
	ldr r1, [r10]
	ldr r0, =0
	sub r0, r0, #23
	str r0, [fp, #-172]
	mov r0, r0
	b .B0
.LTORG
.B0:
	mul r1, r1, r0
	ldr r0, [fp, #-96]
	ldr r0, [r0]
	mla r2, r0, r5, r1
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =49
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =50
	mla r2, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =72
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r1, [r0]
	ldr r0, =85
	mla r2, r1, r0, r2
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #30
	str r0, [fp, #-176]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =12
	mla r2, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =125
	mla r2, r1, r0, r2
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, =0
	sub r3, r0, #117
	mla r2, r1, r3, r2
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #65
	mla r1, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r0, [r0]
	ldr r0, [fp, #-64]
	add r2, r1, r0
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =125
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =110
	mla r1, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r0, [r0]
	mla r2, r0, r8, r1
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, [fp, #-16]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =83
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, =122
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =11
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, [fp, #-172]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #47
	mla r2, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #32
	str r0, [fp, #-180]
	mov r0, r0
	mla r1, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r0, [r0]
	mla r2, r0, r3, r1
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, =95
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =118
	mla r0, r1, r0, r2
	bl relu_reg
	mla r6, r0, r7, r6
	ldr r0, [r10]
	lsl r2, r0, #3
	ldr r0, [fp, #-96]
	ldr r1, [r0]
	ldr r0, =82
	mul r0, r1, r0
	str r0, [fp, #-184]
	mov r0, r0
	add r2, r2, r0
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #104
	str r0, [fp, #-188]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =101
	mla r2, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =0
	sub r7, r0, #116
	mla r1, r1, r7, r2
	ldr r0, [fp, #-20]
	ldr r0, [r0]
	mla r2, r0, r5, r1
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, =0
	sub r5, r0, #16
	mla r2, r1, r5, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, [fp, #-144]
	mla r1, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r0, [r0]
	add r2, r1, r4
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, =75
	mla r2, r1, r0, r2
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, =66
	mla r2, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #96
	str r0, [fp, #-192]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #101
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #114
	str r0, [fp, #-196]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =59
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =12
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r0, [r0]
	lsl r1, r0, #2
	add r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, [fp, #-152]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =116
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #93
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r0, [r0]
	lsl r1, r0, #4
	sub r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =79
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, =3
	mla r2, r1, r0, r2
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, =49
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =0
	sub r0, r0, #124
	mla r0, r1, r0, r2
	bl relu_reg
	ldr r1, =0
	sub r1, r1, #3
	mla r4, r0, r1, r6
	ldr r1, [r10]
	ldr r0, =81
	mul r2, r1, r0
	ldr r0, [fp, #-96]
	ldr r1, [r0]
	ldr r0, =68
	mla r2, r1, r0, r2
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, [fp, #-76]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #74
	str r0, [fp, #-200]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =121
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r1, [r0]
	ldr r0, =0
	sub r8, r0, #15
	mul r0, r1, r8
	str r0, [fp, #-204]
	mov r0, r0
	add r2, r2, r0
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, =55
	mla r2, r1, r0, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =101
	mla r2, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =0
	sub r6, r0, #13
	mla r2, r1, r6, r2
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #62
	mul r0, r1, r0
	str r0, [fp, #-208]
	mov r0, r0
	add r1, r2, r0
	ldr r0, [fp, #-44]
	ldr r0, [r0]
	lsl r0, r0, #6
	add r2, r1, r0
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =114
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =38
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, [fp, #-132]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =112
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =114
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =112
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #10
	mla r1, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r0, [r0]
	mla r2, r0, r5, r1
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #50
	str r0, [fp, #-212]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #112
	mla r1, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r0, [r0]
	mla r2, r0, r7, r1
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #54
	mla r2, r1, r0, r2
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, =82
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =0
	sub r0, r0, #72
	mla r0, r1, r0, r2
	bl relu_reg
	lsl r0, r0, #5
	add r4, r4, r0
	ldr r1, [r10]
	lsl r0, r1, #4
	sub r2, r0, r1
	ldr r0, [fp, #-96]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #77
	str r0, [fp, #-216]
	mov r0, r0
	mla r2, r1, r0, r2
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =66
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =0
	sub r7, r0, #90
	mla r2, r1, r7, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, [fp, #-168]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r1, [r0]
	ldr r0, [fp, #-176]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =81
	mla r1, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r0, [r0]
	add r0, r0, r0
	add r2, r1, r0
	ldr r0, [fp, #-52]
	ldr r1, [r0]
	ldr r0, [fp, #-136]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, [fp, #-152]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =59
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =52
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r0, [r0]
	lsl r1, r0, #4
	sub r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =55
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #33
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =14
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, =58
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =67
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, =86
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #79
	mla r2, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =48
	mla r1, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r0, [r0]
	mla r1, r0, r6, r1
	ldr r0, [fp, #-124]
	ldr r0, [r0]
	mla r2, r0, r8, r1
	ldr r1, [r9]
	ldr r0, =66
	mla r0, r1, r0, r2
	bl relu_reg
	mov r1, r0
	ldr r0, [fp, #-152]
	mla r4, r1, r0, r4
	ldr r1, [r10]
	lsl r0, r1, #5
	add r0, r0, r1
	ldr r1, [fp, #-96]
	ldr r1, [r1]
	ldr r1, [fp, #-184]
	add r2, r0, r1
	ldr r0, [fp, #-100]
	ldr r1, [r0]
	ldr r0, =67
	mla r2, r1, r0, r2
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =30
	mla r2, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #2
	mla r2, r1, r0, r2
	ldr r0, [fp, #-20]
	ldr r0, [r0]
	lsl r1, r0, #6
	add r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, =120
	mla r0, r1, r0, r2
	ldr r1, [fp, #-56]
	ldr r1, [r1]
	mla r2, r1, r6, r0
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =18
	mla r2, r1, r0, r2
	ldr r0, [fp, #-52]
	ldr r0, [r0]
	lsl r1, r0, #2
	add r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, =104
	mla r2, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #119
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, =0
	b .B1
.LTORG
.B1:
	sub r0, r0, #7
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =71
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =107
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =24
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =82
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, [fp, #-192]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, [fp, #-188]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, [fp, #-128]
	mla r1, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r0, [r0]
	ldr r0, [fp, #-164]
	add r2, r1, r0
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =97
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, =83
	mla r2, r1, r0, r2
	ldr r0, [fp, #-124]
	ldr r1, [r0]
	ldr r0, =46
	mla r2, r1, r0, r2
	ldr r1, [r9]
	ldr r0, =0
	sub r0, r0, #84
	mla r0, r1, r0, r2
	bl relu_reg
	mov r1, r0
	ldr r0, [fp, #-212]
	mla r4, r1, r0, r4
	ldr r1, [r10]
	ldr r0, =0
	sub r0, r0, #29
	mul r2, r1, r0
	ldr r0, [fp, #-96]
	ldr r0, [r0]
	lsl r1, r0, #3
	sub r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-100]
	ldr r0, [r0]
	ldr r0, [fp, #-148]
	add r2, r1, r0
	ldr r0, [fp, #-8]
	ldr r1, [r0]
	ldr r0, =38
	mla r1, r1, r0, r2
	ldr r0, [fp, #-48]
	ldr r0, [r0]
	mla r0, r0, r7, r1
	ldr r1, [fp, #-20]
	ldr r1, [r1]
	ldr r1, [fp, #-204]
	add r2, r0, r1
	ldr r0, [fp, #-40]
	ldr r1, [r0]
	ldr r0, [fp, #-180]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-56]
	ldr r1, [r0]
	ldr r0, =37
	mla r2, r1, r0, r2
	ldr r0, [fp, #-12]
	ldr r1, [r0]
	ldr r0, =36
	mla r0, r1, r0, r2
	ldr r1, [fp, #-52]
	ldr r1, [r1]
	ldr r1, [fp, #-208]
	add r2, r0, r1
	ldr r0, [fp, #-44]
	ldr r1, [r0]
	ldr r0, [fp, #-140]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-60]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #46
	mla r2, r1, r0, r2
	ldr r0, [fp, #-68]
	ldr r1, [r0]
	ldr r0, [fp, #-144]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-24]
	ldr r1, [r0]
	ldr r0, =37
	mla r2, r1, r0, r2
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #73
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, [fp, #-160]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #87
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, [fp, #-32]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =71
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, [fp, #-216]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =53
	mla r2, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, =37
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, [fp, #-72]
	mla r0, r1, r0, r2
	ldr r1, [fp, #-124]
	ldr r1, [r1]
	mla r0, r1, r6, r0
	ldr r2, [r9]
	ldr r1, [fp, #-196]
	mla r0, r2, r1, r0
	bl relu_reg
	mov r1, r0
	ldr r0, [fp, #-172]
	mla r4, r1, r0, r4
	ldr r1, [r10]
	ldr r0, =67
	mul r0, r1, r0
	ldr r1, [fp, #-96]
	ldr r2, [r1]
	ldr r1, =42
	mla r0, r2, r1, r0
	ldr r1, [fp, #-100]
	ldr r2, [r1]
	ldr r1, =41
	mla r0, r2, r1, r0
	ldr r1, [fp, #-8]
	ldr r2, [r1]
	ldr r1, [fp, #-16]
	mla r0, r2, r1, r0
	ldr r1, [fp, #-48]
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #92
	mla r0, r2, r1, r0
	ldr r1, [fp, #-20]
	ldr r2, [r1]
	ldr r1, =10
	mla r0, r2, r1, r0
	ldr r1, [fp, #-40]
	ldr r2, [r1]
	ldr r1, [fp, #-216]
	mla r0, r2, r1, r0
	ldr r1, [fp, #-56]
	ldr r2, [r1]
	ldr r1, =75
	mla r0, r2, r1, r0
	ldr r1, [fp, #-12]
	ldr r2, [r1]
	ldr r1, =96
	mla r0, r2, r1, r0
	ldr r1, [fp, #-52]
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #51
	mla r0, r2, r1, r0
	ldr r1, [fp, #-44]
	ldr r2, [r1]
	ldr r1, =109
	mla r0, r2, r1, r0
	ldr r1, [fp, #-60]
	ldr r2, [r1]
	ldr r1, [fp, #-200]
	mla r1, r2, r1, r0
	ldr r0, [fp, #-68]
	ldr r0, [r0]
	add r0, r1, r5
	ldr r1, [fp, #-24]
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #122
	mla r2, r2, r1, r0
	ldr r0, [fp, #-36]
	ldr r1, [r0]
	ldr r0, =67
	mla r2, r1, r0, r2
	ldr r0, [fp, #-80]
	ldr r1, [r0]
	ldr r0, =47
	mla r2, r1, r0, r2
	ldr r0, [fp, #-84]
	ldr r1, [r0]
	ldr r0, =22
	mla r2, r1, r0, r2
	ldr r0, [fp, #-92]
	ldr r1, [r0]
	ldr r0, [fp, #-156]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-104]
	ldr r1, [r0]
	ldr r0, =38
	mla r2, r1, r0, r2
	ldr r0, [fp, #-108]
	ldr r1, [r0]
	ldr r0, =29
	mla r2, r1, r0, r2
	ldr r0, [fp, #-112]
	ldr r1, [r0]
	ldr r0, =115
	mla r2, r1, r0, r2
	ldr r0, [fp, #-116]
	ldr r1, [r0]
	ldr r0, [fp, #-128]
	mla r2, r1, r0, r2
	ldr r0, [fp, #-120]
	ldr r1, [r0]
	ldr r0, =36
	mla r0, r1, r0, r2
	ldr r1, [fp, #-124]
	ldr r2, [r1]
	ldr r1, =0
	sub r1, r1, #49
	mla r2, r2, r1, r0
	ldr r1, [r9]
	ldr r0, =85
	mla r0, r1, r0, r2
	bl relu_reg
	mov r1, r0
	ldr r0, =46
	mla r0, r1, r0, r4
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L947
	b .L1701
	b .F2
.LTORG
.F2:
.L947:
	mov r0, #1
	add sp, sp, #216
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L948:
	mov r0, #0
	add sp, sp, #216
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L1701:
	b .L948

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #104
.L1702:
	bl getint
	mov r2, r0
	b .L1705
.L1705:
	ldr r0, =0
	ldr r1, =0
	mov r5, r2
	cmp r2, #0
	movgt r1, #1
	movle r1, #0
	bgt .L1706
	b .L1710
.L1706:
	b .L1712
.L1707:
	mov r0, #0
	add sp, sp, #104
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L1710:
	ldr r0, =0
	ldr r0, =0
	b .L1707
.L1712:
	mov r1, r0
	ldr r1, =0
	mov r6, r1
	ldr r1, =0
	cmp r1, #5
	movlt r1, #1
	movge r1, #0
	blt .L1713
	b .L1717
.L1713:
	b .L1719
.L1714:
	mov r1, #0
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl model
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L1736
	b .L1740
.L1717:
	mov r4, r0
	ldr r0, =0
	b .L1714
.L1719:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1720
	b .L1724
.L1720:
	bl getint
	mov r3, #-100
	mov r1, #20
	mul r2, r6, r1
	add r1, fp, r3
	add r2, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	str r0, [r1]
	add r1, r4, #1
	cmp r1, #5
	movlt r0, #1
	movge r0, #0
	blt .L1788
	b .L1730
.L1721:
	add r2, r6, #1
	mov r1, r0
	mov r6, r2
	cmp r2, #5
	movlt r1, #1
	movge r1, #0
	blt .L1713
	b .L1735
.L1724:
	ldr r0, =0
	b .L1721
.L1730:
	mov r0, r1
	b .L1721
.L1735:
	mov r4, r0
	b .L1714
.L1736:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1738
.L1737:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1738
.L1738:
	sub r1, r5, #1
	mov r0, r4
	mov r5, r1
	cmp r1, #0
	movgt r1, #1
	movle r1, #0
	bgt .L1706
	b .L1746
.L1740:
	b .L1737
.L1746:
	b .L1707
.L1788:
	mov r4, r1
	b .L1720

	.ident "ZWJM"
