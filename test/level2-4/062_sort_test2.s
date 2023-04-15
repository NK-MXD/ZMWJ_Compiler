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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-4]
	ldr r0, =1
	str r0, [fp, #-8]
	b .L71
.L71:
	ldr r1, [fp, #-8]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L72
	b .L76
.L72:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L81
.L73:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L76:
	b .L73
.L81:
	ldr r1, [fp, #-16]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L104
	b .L87
.L82:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-16]
	add r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L104
	b .L107
.L83:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-16]
	add r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L72
	b .L119
.L87:
	b .L83
.L104:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
	blt .L82
	b .L112
.L107:
	b .L83
.L112:
	b .L83
.L119:
	b .L73

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L120:
	ldr r1, =10
	ldr r0, addr_n0
	str r1, [r0]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =4
	str r0, [r1]
	mov r1, #1
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =3
	str r0, [r1]
	mov r1, #2
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =9
	str r0, [r1]
	mov r1, #3
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =2
	str r0, [r1]
	mov r1, #4
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	mov r1, #5
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	mov r1, #6
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =6
	str r0, [r1]
	mov r1, #7
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =5
	str r0, [r1]
	mov r1, #8
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =7
	str r0, [r1]
	mov r1, #9
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =8
	str r0, [r1]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl insertsort
	str r0, [fp, #-44]
	b .L123
.L123:
	ldr r1, [fp, #-44]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L128
.L124:
	ldr r1, [fp, #-44]
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-48]
	mov r0, r0
	bl putint
	ldr r0, =10
	str r0, [fp, #-48]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-44]
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r1, r0
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L136
.L125:
	mov r0, #0
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L128:
	b .L125
.L136:
	b .L125

addr_n0:
	.word n
	.ident "ZWJM"
