	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L82:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-16]
	b .L87
.L87:
	ldr r0, [fp, #-16]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L92
.L88:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r0, r0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L100
.L89:
	ldr r0, =0
	str r0, [fp, #-20]
	b .L102
.L92:
	b .L89
.L100:
	b .L89
.L102:
	ldr r0, [fp, #-20]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L103
	b .L107
.L103:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	mov r0, r0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L103
	b .L115
.L104:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L107:
	b .L104
.L115:
	b .L104

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L116:
	ldr r0, =0
	str r0, [fp, #-124]
	b .L127
.L127:
	ldr r0, [fp, #-124]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L128
	b .L132
.L128:
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
	mov r0, r0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L128
	b .L137
.L129:
	mov r1, #0
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r2, #0
	mov r3, #-48
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	mov r3, #0
	mov r4, #-96
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	bl concat
	str r0, [fp, #-124]
	b .L139
.L132:
	b .L129
.L137:
	b .L129
.L139:
	ldr r0, [fp, #-124]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L140
	b .L144
.L140:
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
	mov r0, r0
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L140
	b .L150
.L141:
	ldr r0, =10
	str r0, [fp, #-128]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #128
	pop {r3, r4, fp, lr}
	bx lr
.L144:
	b .L141
.L150:
	b .L141

	.ident "ZWJM"
