	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =408
	sub sp, sp, r4
.L23:
	ldr r1, =0
	ldr r0, =-404
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-408
	str r1, [fp, r0]
	b .L27
.L27:
	bl getint
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L28
	b .L31
.L28:
	bl getint
	ldr r1, =-404
	ldr r2, [fp, r1]
	ldr r3, =-400
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r0, =-404
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-404
	str r1, [fp, r0]
	bl getint
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L28
	b .L36
.L29:
	b .L38
.L31:
	b .L29
.L36:
	b .L29
.L38:
	ldr r0, =-404
	ldr r0, [fp, r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L39
	b .L42
.L39:
	ldr r0, =-404
	ldr r0, [fp, r0]
	sub r1, r0, #1
	ldr r0, =-404
	str r1, [fp, r0]
	ldr r0, =-408
	ldr r3, [fp, r0]
	ldr r0, =-404
	ldr r1, [fp, r0]
	ldr r2, =-400
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r3, r0
	ldr r0, =-408
	str r1, [fp, r0]
	ldr r0, =-404
	ldr r0, [fp, r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L39
	b .L48
.L40:
	ldr r0, =-408
	ldr r2, [fp, r0]
	ldr r1, =79
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r1, =408
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L42:
	b .L40
.L48:
	b .L40

	.ident "ZWJM"
