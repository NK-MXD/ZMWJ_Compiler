	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L82:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L87
.L87:
	ldr r4, [fp, #-16]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L88
	b .L92
.L88:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L88
	b .L100
.L89:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L102
.L92:
	b .L89
.L100:
	b .L89
.L102:
	ldr r4, [fp, #-20]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L103
	b .L107
.L103:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L103
	b .L115
.L104:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L107:
	b .L104
.L115:
	b .L104

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L116:
	ldr r4, =0
	str r4, [fp, #-124]
	b .L127
.L127:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L128
	b .L132
.L128:
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
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L128
	b .L137
.L129:
	mov r4, #0
	mov r5, #-12
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #-48
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #-96
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl concat
	mov r4, r0
	str r4, [fp, #-124]
	b .L139
.L132:
	b .L129
.L137:
	b .L129
.L139:
	ldr r4, [fp, #-124]
	cmp r4, #6
	movlt r4, #1
	movge r4, #0
	blt .L140
	b .L144
.L140:
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
	cmp r4, #6
	movlt r4, #1
	movge r4, #0
	blt .L140
	b .L150
.L141:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #128
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L144:
	b .L141
.L150:
	b .L141

	.ident "ZWJM"
