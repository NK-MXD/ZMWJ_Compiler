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
	.global gcd
	.type gcd , %function
gcd:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L50:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	str r0, [fp, #-16]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L57
	b .L61
.L57:
	ldr r0, [fp, #-4]
	str r0, [fp, #-20]
	ldr r0, [fp, #-8]
	str r0, [fp, #-4]
	ldr r0, [fp, #-20]
	str r0, [fp, #-8]
	b .L58
.L58:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-24]
	b .L62
.L61:
	b .L58
.L62:
	ldr r0, [fp, #-24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L63
	b .L67
.L63:
	ldr r0, [fp, #-8]
	str r0, [fp, #-4]
	ldr r0, [fp, #-24]
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-24]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L63
	b .L72
.L64:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	mul r1, r1, r0
	ldr r0, [fp, #-8]
	sdiv r0, r1, r0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L67:
	b .L64
.L72:
	b .L64

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L73:
	bl getint
	str r0, [fp, #-4]
	bl getint
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl gcd
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
