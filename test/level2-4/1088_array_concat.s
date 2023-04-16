	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L82:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	b .L87
.L87:
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L92
.L88:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r3, r0, r1
	str r2, [r0]
	add r1, r3, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L187
	b .L100
.L89:
	b .L102
.L92:
	ldr r0, =0
	mov r2, r0
	b .L89
.L100:
	mov r2, r1
	b .L89
.L102:
	ldr r0, =0
	mov r1, r0
	mov r0, r2
	ldr r2, =0
	cmp r2, #3
	movlt r2, #1
	movge r2, #0
	blt .L103
	b .L107
.L103:
	ldr r3, [fp, #-8]
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r4, [r2]
	ldr r3, [fp, #-12]
	mov r2, #4
	mla r2, r0, r2, r3
	str r4, [r2]
	add r2, r0, #1
	add r1, r1, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L191
	b .L115
.L104:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L107:
	ldr r0, =0
	b .L104
.L115:
	b .L104
.L187:
	mov r3, r1
	b .L88
.L191:
	mov r0, r2
	b .L103

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L116:
	b .L127
.L127:
	ldr r0, =0
	ldr r1, =0
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L128
	b .L132
.L128:
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
	add r0, r0, #1
	cmp r0, #3
	movlt r1, #1
	movge r1, #0
	blt .L195
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
	mov r1, r0
	b .L139
.L132:
	ldr r0, =0
	b .L129
.L137:
	b .L129
.L139:
	ldr r0, =0
	mov r4, r1
	cmp r1, #6
	movlt r0, #1
	movge r0, #0
	blt .L140
	b .L144
.L140:
	mov r2, #-96
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #6
	movlt r0, #1
	movge r0, #0
	blt .L199
	b .L150
.L141:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #120
	pop {r3, r4, fp, lr}
	bx lr
.L144:
	ldr r0, =0
	b .L141
.L150:
	b .L141
.L195:
	b .L128
.L199:
	mov r4, r1
	b .L140

	.ident "ZWJM"
