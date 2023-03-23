	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L20:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L23
.L23:
	ldr r4, [fp, #-4]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L24
	b .L28
.L24:
	ldr r4, [fp, #-4]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L29
	b .L34
.L25:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L28:
	b .L25
.L29:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L31
.L30:
	ldr r4, [fp, #-4]
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L35
	b .L40
.L31:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L24
	b .L45
.L34:
	b .L30
.L35:
	ldr r4, =42
	str r4, [fp, #-8]
	b .L37
.L36:
	ldr r4, [fp, #-4]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-8]
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
	mov r4, r0
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
