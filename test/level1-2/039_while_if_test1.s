	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L20:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L23
.L23:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L24
	b .L28
.L24:
	ldr r0, [fp, #-4]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L29
	b .L34
.L25:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L28:
	b .L25
.L29:
	ldr r0, =25
	str r0, [fp, #-8]
	b .L31
.L30:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L35
	b .L40
.L31:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L24
	b .L45
.L34:
	b .L30
.L35:
	ldr r0, =42
	str r0, [fp, #-8]
	b .L37
.L36:
	ldr r0, [fp, #-4]
	add r0, r0, r0
	str r0, [fp, #-8]
	b .L37
.L37:
	b .L31
.L40:
	b .L36
.L45:
	b .L25

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L46:
	bl whileIf
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
