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
	.global insertsort
	.type insertsort , %function
insertsort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L68:
	str r0, [fp, #-4]
	b .L71
.L71:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	mov r3, r0
	ldr r0, =1
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L72
	b .L76
.L72:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r2, [r0]
	sub r4, r3, #1
	b .L81
.L73:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L76:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	b .L73
.L81:
	ldr r0, =0
	sub r0, r0, #1
	mov r1, r4
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	bgt .L104
	b .L87
.L82:
	ldr r0, [fp, #-4]
	mov r4, #4
	mla r4, r1, r4, r0
	ldr r6, [r4]
	add r5, r1, #1
	mov r4, #4
	mla r0, r5, r4, r0
	str r6, [r0]
	sub r4, r1, #1
	ldr r0, =0
	sub r0, r0, #1
	mov r1, r4
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	bgt .L104
	b .L107
.L83:
	ldr r4, [fp, #-4]
	add r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r4
	str r2, [r0]
	add r1, r3, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	mov r3, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L72
	b .L119
.L87:
	mov r0, r4
	b .L83
.L104:
	ldr r4, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r4
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L82
	b .L112
.L107:
	mov r0, r4
	b .L83
.L112:
	mov r0, r1
	b .L83
.L119:
	b .L73

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L120:
	ldr r1, =10
	ldr r0, addr_n0
	str r1, [r0]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
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
	mov r3, #4
	mov r2, #-40
	mov r1, #4
	mul r3, r3, r1
	add r1, fp, r2
	add r1, r1, r3
	ldr r2, =0
	str r2, [r1]
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
	bl insertsort
	mov r2, r0
	b .L123
.L123:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L128
.L124:
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
	blt .L180
	b .L136
.L125:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L128:
	ldr r0, =0
	b .L125
.L136:
	ldr r0, =10
	b .L125
.L180:
	ldr r0, =10
	mov r4, r1
	b .L124

addr_n0:
	.word n
	.ident "ZWJM"
