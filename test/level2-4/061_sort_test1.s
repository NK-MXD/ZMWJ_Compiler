	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L71:
	str r0, [fp, #-4]
	b .L75
.L75:
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r2, r0, #1
	ldr r0, =0
	ldr r1, =0
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L76
	b .L80
.L76:
	b .L81
.L77:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L80:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L77
.L81:
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r1, r1, r4
	sub r5, r1, #1
	mov r1, r0
	ldr r2, =0
	mov r3, r2
	ldr r2, =0
	cmp r2, r5
	movlt r2, #1
	movge r2, #0
	blt .L82
	b .L86
.L82:
	ldr r0, [fp, #-4]
	mov r2, #4
	mla r2, r3, r2, r0
	ldr r6, [r2]
	add r5, r3, #1
	mov r2, #4
	mla r0, r5, r2, r0
	ldr r0, [r0]
	cmp r6, r0
	movgt r0, #1
	movle r0, #0
	bgt .L87
	b .L95
.L83:
	add r3, r4, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r2, r0, #1
	mov r0, r1
	mov r4, r3
	cmp r3, r2
	movlt r1, #1
	movge r1, #0
	blt .L76
	b .L118
.L86:
	mov r1, r0
	ldr r0, =0
	b .L83
.L87:
	ldr r2, [fp, #-4]
	add r1, r3, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mov r5, #4
	mla r5, r3, r5, r2
	ldr r6, [r5]
	mov r5, #4
	mla r1, r1, r5, r2
	str r6, [r1]
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	mov r5, r0
	b .L88
.L88:
	add r2, r3, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, r4
	sub r0, r0, #1
	mov r1, r5
	mov r3, r2
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L82
	b .L111
.L95:
	mov r5, r1
	b .L88
.L111:
	mov r1, r5
	b .L83
.L118:
	b .L77

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L119:
	ldr r0, =10
	ldr r1, addr_n0
	str r0, [r1]
	mov r0, #0
	mov r2, #-40
	mov r1, #4
	mul r1, r0, r1
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =4
	str r1, [r0]
	mov r2, #1
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =3
	str r1, [r2]
	mov r2, #2
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =9
	str r1, [r2]
	mov r2, #3
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =2
	str r1, [r2]
	mov r2, #4
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r2, #5
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #6
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =6
	str r1, [r2]
	mov r2, #7
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =5
	str r1, [r2]
	mov r2, #8
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =7
	str r1, [r2]
	mov r2, #9
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =8
	str r1, [r2]
	bl bubblesort
	mov r2, r0
	b .L122
.L122:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L127
.L123:
	mov r2, #-40
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r1, r4, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L188
	b .L135
.L124:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L127:
	ldr r0, =0
	b .L124
.L135:
	ldr r0, =10
	b .L124
.L188:
	ldr r0, =10
	mov r4, r1
	b .L123

addr_n0:
	.word n
	.ident "ZWJM"
