	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r0, =56
	str r0, [fp, #-4]
	ldr r0, =4
	str r0, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, =0
	sub r0, r0, #4
	sub r1, r1, r0
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r1, #1
	movne r1, #0
	ldr r0, =0
	sub r0, r0, r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L27
	b .L35
.L27:
	ldr r0, =0
	sub r1, r0, #1
	ldr r0, =0
	sub r1, r0, r1
	ldr r0, =0
	sub r0, r0, r1
	str r0, [fp, #-4]
	b .L29
.L28:
	ldr r1, [fp, #-8]
	ldr r0, =0
	add r0, r0, r1
	str r0, [fp, #-4]
	b .L29
.L29:
	ldr r0, [fp, #-4]
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L35:
	b .L28

	.ident "ZWJM"
