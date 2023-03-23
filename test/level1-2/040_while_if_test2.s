	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =3
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L27
	b .L32
.L27:
	b .L33
.L28:
	b .L44
.L29:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	ldr r4, [fp, #-8]
	cmp r4, #2
	moveq r4, #1
	movne r4, #0
	beq .L34
	b .L38
.L34:
	ldr r4, [fp, #-8]
	add r5, r4, #2
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #2
	moveq r4, #1
	movne r4, #0
	beq .L34
	b .L43
.L35:
	ldr r4, [fp, #-8]
	add r5, r4, #25
	str r5, [fp, #-8]
	b .L29
.L38:
	b .L35
.L43:
	b .L35
.L44:
	ldr r4, [fp, #-4]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L45
	b .L49
.L45:
	ldr r4, [fp, #-8]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
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
	mov r4, r0
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
