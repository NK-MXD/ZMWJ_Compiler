	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L19:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L22
.L22:
	mov r3, r1
	mov r2, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L27
.L23:
	cmp r2, #50
	moveq r0, #1
	movne r0, #0
	beq .L28
	b .L32
.L24:
	pop {r3, r4, fp, lr}
	bx lr
.L27:
	mov r0, r1
	b .L24
.L28:
	add r0, r2, #1
	mov r1, r3
	b .L22
.L29:
	add r1, r3, r2
	add r0, r2, #1
	mov r3, r1
	mov r2, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L38
.L32:
	b .L29
.L38:
	mov r0, r1
	b .L24

	.ident "ZWJM"
