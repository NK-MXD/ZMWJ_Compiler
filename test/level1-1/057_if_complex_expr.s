	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L42:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #2
	str r5, [fp, #-16]
	ldr r4, =2
	str r4, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L48
	b .L53
.L48:
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	b .L49
.L49:
	ldr r4, [fp, #-16]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	add r4, r5, #67
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L61
	b .L66
.L50:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L54
	b .L57
.L53:
	b .L50
.L54:
	ldr r4, [fp, #-12]
	add r5, r4, #3
	ldr r4, =2
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L48
	b .L60
.L57:
	b .L49
.L60:
	b .L49
.L61:
	ldr r4, =4
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	b .L62
.L62:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L63:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L67
	b .L70
.L66:
	b .L63
.L67:
	ldr r4, [fp, #-12]
	add r5, r4, #2
	ldr r4, =2
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L61
	b .L73
.L70:
	b .L62
.L73:
	b .L62

