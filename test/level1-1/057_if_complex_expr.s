	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L42:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =5
	str r0, [fp, #-8]
	ldr r0, =1
	str r0, [fp, #-12]
	ldr r0, =0
	sub r0, r0, #2
	str r0, [fp, #-16]
	ldr r0, =2
	str r0, [fp, #-20]
	ldr r1, [fp, #-16]
	ldr r0, =2
	sdiv r0, r1, r0
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L48
	b .L53
.L48:
	ldr r0, [fp, #-20]
	bl putint
	b .L49
.L49:
	ldr r0, [fp, #-16]
	and r0, r0, #1
	add r0, r0, #67
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L61
	b .L66
.L50:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L54
	b .L57
.L53:
	b .L50
.L54:
	ldr r0, [fp, #-12]
	add r0, r0, #3
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L48
	b .L60
.L57:
	b .L49
.L60:
	b .L49
.L61:
	ldr r0, =4
	str r0, [fp, #-20]
	mov r0, r0
	bl putint
	b .L62
.L62:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L63:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L67
	b .L70
.L66:
	b .L63
.L67:
	ldr r0, [fp, #-12]
	add r0, r0, #2
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L73
.L70:
	b .L62
.L73:
	b .L62

	.ident "ZWJM"
