	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L45:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =6
	str r0, [fp, #-8]
	ldr r0, =7
	str r0, [fp, #-12]
	ldr r0, =10
	str r0, [fp, #-16]
	b .L50
.L50:
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L51
	b .L55
.L51:
	ldr r0, [fp, #-4]
	add r0, r0, #3
	str r0, [fp, #-4]
	b .L56
.L52:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-12]
	add r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L55:
	b .L52
.L56:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L57
	b .L61
.L57:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L62
.L58:
	ldr r0, [fp, #-8]
	sub r0, r0, #2
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L51
	b .L93
.L61:
	b .L58
.L62:
	ldr r0, [fp, #-12]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L63
	b .L67
.L63:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L68
.L64:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L57
	b .L88
.L67:
	b .L64
.L68:
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L69
	b .L73
.L69:
	ldr r0, [fp, #-16]
	add r0, r0, #3
	str r0, [fp, #-16]
	mov r0, r0
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L69
	b .L78
.L70:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L63
	b .L83
.L73:
	b .L70
.L78:
	b .L70
.L83:
	b .L64
.L88:
	b .L58
.L93:
	b .L52

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L94:
	bl FourWhile
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
