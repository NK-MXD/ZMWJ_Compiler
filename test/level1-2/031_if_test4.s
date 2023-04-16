	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global if_ifElse_
	.type if_ifElse_ , %function
if_ifElse_:
	push {r3, r4, fp, lr}
	mov fp, sp
.L14:
	ldr r0, =5
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L17
	b .L21
.L17:
	ldr r0, =10
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L22
	b .L27
.L18:
	pop {r3, r4, fp, lr}
	bx lr
.L21:
	ldr r0, =5
	b .L18
.L22:
	ldr r0, =25
	b .L24
.L23:
	ldr r0, =5
	add r0, r0, #15
	b .L24
.L24:
	b .L18
.L27:
	b .L23

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L28:
	bl if_ifElse_
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
