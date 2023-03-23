	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L26:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L29
	b .L33
.L29:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L30:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	sdiv r7, r5, r6
	mul r8, r7, r6
	sub r6, r5, r8
	mov r0, r4
	mov r1, r6
	bl gcd
	mov r4, r0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L33:
	b .L30

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L34:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L36
.L36:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L37
	b .L41
.L37:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	mov r0, r4
	mov r1, r5
	bl gcd
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L37
	b .L48
.L38:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L41:
	b .L38
.L48:
	b .L38

