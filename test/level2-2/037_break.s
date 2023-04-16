	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L16:
	b .L19
.L19:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L20
	b .L24
.L20:
	cmp r3, #50
	moveq r0, #1
	movne r0, #0
	beq .L25
	b .L29
.L21:
	mov r0, r1
	pop {r3, r4, fp, lr}
	bx lr
.L24:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L21
.L25:
	mov r1, r2
	b .L21
.L26:
	add r1, r2, r3
	add r0, r3, #1
	mov r2, r1
	mov r3, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L20
	b .L35
.L29:
	b .L26
.L35:
	b .L21

	.ident "ZWJM"
