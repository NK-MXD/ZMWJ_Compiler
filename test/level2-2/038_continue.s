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
.L19:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L22
.L22:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L27
.L23:
	ldr r0, [fp, #-4]
	cmp r0, #50
	moveq r0, #1
	movne r0, #0
	beq .L28
	b .L32
.L24:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L22
.L29:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L38
.L32:
	b .L29
.L38:
	b .L24

	.ident "ZWJM"
