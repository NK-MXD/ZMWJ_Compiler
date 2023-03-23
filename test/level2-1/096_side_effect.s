	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word -1
	.global b
	.align 4
	.size b, 4
b:
	.word 1
	.text
	.global inc_a
	.type inc_a , %function
inc_a:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L46:
	ldr r4, addr_a0
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_a0
	str r4, [r5]
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L48:
	ldr r4, =5
	str r4, [fp, #-4]
	b .L50
.L50:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movge r4, #1
	movlt r4, #0
	bge .L51
	b .L55
.L51:
	bl inc_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L59
	b .L61
.L52:
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L55:
	b .L52
.L56:
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L57
.L57:
	bl inc_a
	mov r4, r0
	cmp r4, #14
	movlt r4, #1
	movge r4, #0
	blt .L69
	b .L75
.L58:
	bl inc_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L56
	b .L67
.L59:
	bl inc_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L58
	b .L64
.L61:
	b .L57
.L64:
	b .L57
.L67:
	b .L57
.L69:
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r4, addr_b0
	ldr r5, [r4]
	ldr r4, =2
	mul r6, r5, r4
	ldr r4, addr_b0
	str r6, [r4]
	b .L71
.L70:
	bl inc_a
	mov r4, r0
	b .L71
.L71:
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movge r4, #1
	movlt r4, #0
	bge .L51
	b .L87
.L72:
	bl inc_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L76
	b .L78
.L75:
	b .L72
.L76:
	bl inc_a
	mov r4, r0
	bl inc_a
	mov r5, r0
	sub r6, r4, r5
	add r4, r6, #1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L69
	b .L81
.L78:
	b .L70
.L81:
	b .L70
.L87:
	b .L52

addr_a0:
	.word a
addr_b0:
	.word b
