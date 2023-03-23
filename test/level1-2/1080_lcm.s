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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L50:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	str r4, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L57
	b .L61
.L57:
	ldr r4, [fp, #-4]
	str r4, [fp, #-20]
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	ldr r4, [fp, #-20]
	str r4, [fp, #-8]
	b .L58
.L58:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	str r5, [fp, #-24]
	b .L62
.L61:
	b .L58
.L62:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L63
	b .L67
.L63:
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	ldr r4, [fp, #-24]
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L63
	b .L72
.L64:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	mul r6, r4, r5
	ldr r4, [fp, #-8]
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L67:
	b .L64
.L72:
	b .L64

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L73:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r0, r4
	mov r1, r5
	bl gcd
	mov r4, r0
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
