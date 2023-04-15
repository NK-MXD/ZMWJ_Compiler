	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L26:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L29
	b .L33
.L29:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L30:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	mov r0, r3
	bl gcd
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L33:
	b .L30

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L34:
	bl getint
	str r0, [fp, #-4]
	b .L36
.L36:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L37
	b .L41
.L37:
	bl getint
	str r0, [fp, #-8]
	bl getint
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	bl gcd
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L37
	b .L48
.L38:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L41:
	b .L38
.L48:
	b .L38

	.ident "ZWJM"
