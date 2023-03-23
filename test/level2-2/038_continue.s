	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L22
.L22:
	ldr r4, [fp, #-4]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L23
	b .L27
.L23:
	ldr r4, [fp, #-4]
	cmp r4, #50
	moveq r4, #1
	movne r4, #0
	beq .L28
	b .L32
.L24:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L22
.L29:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L23
	b .L38
.L32:
	b .L29
.L38:
	b .L24

	.ident "ZWJM"
