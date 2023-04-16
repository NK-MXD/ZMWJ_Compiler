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
	sub sp, sp, #8
.L50:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L57
	b .L61
.L57:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	str r2, [fp, #-4]
	str r3, [fp, #-8]
	b .L58
.L58:
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-8]
	sdiv r2, r4, r3
	mul r2, r2, r3
	sub r2, r4, r2
	b .L62
.L61:
	ldr r2, =0
	b .L58
.L62:
	mov r3, r2
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	bne .L63
	b .L67
.L63:
	ldr r2, [fp, #-8]
	str r2, [fp, #-4]
	str r3, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-8]
	sdiv r2, r4, r3
	mul r2, r2, r3
	sub r3, r4, r2
	cmp r3, #0
	movne r2, #1
	moveq r2, #0
	bne .L91
	b .L72
.L64:
	mul r1, r1, r0
	ldr r0, [fp, #-8]
	sdiv r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L67:
	b .L64
.L72:
	b .L64
.L91:
	b .L63

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L73:
	bl getint
	mov r4, r0
	bl getint
	mov r1, r0
	mov r0, r4
	bl gcd
	pop {r3, r4, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
