	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L16:
	bl getint
	mov r1, r0
	ldr r0, addr_a0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_b0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L21
	b .L24
.L18:
	ldr r0, =1
	b .L20
.L19:
	ldr r0, =0
	b .L20
.L20:
	pop {r3, r4, fp, lr}
	bx lr
.L21:
	ldr r0, addr_a0
	ldr r0, [r0]
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	bne .L18
	b .L27
.L24:
	b .L19
.L27:
	b .L19

addr_a0:
	.word a
addr_b0:
	.word b
	.ident "ZWJM"
