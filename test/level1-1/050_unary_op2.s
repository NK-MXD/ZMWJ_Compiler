	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L24:
	ldr r0, =0
	sub r1, r0, #4
	ldr r0, =56
	sub r0, r0, r1
	add r0, r0, #4
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
	moveq r0, #1
	movne r0, #0
	ldr r1, =0
	sub r0, r1, r0
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
	b .L29
.L28:
	ldr r0, =0
	add r0, r0, #4
	b .L29
.L29:
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L35:
	b .L28

	.ident "ZWJM"
