	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =3
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L32
.L27:
	b .L33
.L28:
	b .L44
.L29:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	ldr r0, [fp, #-8]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	beq .L34
	b .L38
.L34:
	ldr r0, [fp, #-8]
	add r0, r0, #2
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	beq .L34
	b .L43
.L35:
	ldr r0, [fp, #-8]
	add r0, r0, #25
	str r0, [fp, #-8]
	b .L29
.L38:
	b .L35
.L43:
	b .L35
.L44:
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L45
	b .L49
.L45:
	ldr r0, [fp, #-8]
	add r0, r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L45
	b .L54
.L46:
	b .L29
.L49:
	b .L46
.L54:
	b .L46

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L55:
	bl ifWhile
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
