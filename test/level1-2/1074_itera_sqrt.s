	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L32:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, =2
	sdiv r3, r1, r0
	b .L36
.L36:
	ldr r0, =0
	sub r1, r0, r3
	ldr r0, =0
	mov r2, r3
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L37
	b .L41
.L37:
	ldr r0, [fp, #-4]
	sdiv r0, r0, r2
	add r1, r2, r0
	ldr r0, =2
	sdiv r1, r1, r0
	sub r0, r2, r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L70
	b .L48
.L38:
	mov r0, r1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L41:
	mov r1, r3
	ldr r0, =0
	b .L38
.L48:
	b .L38
.L70:
	mov r2, r1
	b .L37

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L49:
	ldr r0, =400
	bl fsqrt
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
