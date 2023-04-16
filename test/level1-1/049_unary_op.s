	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L14:
	ldr r0, =10
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
	bne .L16
	b .L24
.L16:
	ldr r0, =0
	sub r1, r0, #1
	ldr r0, =0
	sub r1, r0, r1
	ldr r0, =0
	sub r0, r0, r1
	b .L18
.L17:
	ldr r0, =0
	b .L18
.L18:
	pop {r3, r4, fp, lr}
	bx lr
.L24:
	b .L17

	.ident "ZWJM"
