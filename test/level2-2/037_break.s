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
.L16:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L19
.L19:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L20
	b .L24
.L20:
	ldr r0, [fp, #-4]
	cmp r0, #50
	moveq r0, #1
	movne r0, #0
	beq .L25
	b .L29
.L21:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L24:
	b .L21
.L25:
	b .L21
.L26:
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
	blt .L20
	b .L35
.L29:
	b .L26
.L35:
	b .L21

	.ident "ZWJM"
