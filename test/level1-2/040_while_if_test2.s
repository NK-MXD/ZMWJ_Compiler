	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r3, r4, fp, lr}
	mov fp, sp
.L24:
	ldr r0, =0
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
	mov r0, r1
	pop {r3, r4, fp, lr}
	bx lr
.L32:
	b .L28
.L33:
	ldr r0, =3
	mov r1, r0
	ldr r0, =3
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	beq .L34
	b .L38
.L34:
	add r1, r1, #2
	cmp r1, #2
	moveq r0, #1
	movne r0, #0
	beq .L81
	b .L43
.L35:
	add r0, r0, #25
	mov r1, r0
	ldr r0, =0
	b .L29
.L38:
	ldr r0, =3
	b .L35
.L43:
	mov r0, r1
	b .L35
.L44:
	ldr r0, =3
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L45
	b .L49
.L45:
	add r2, r2, r2
	add r1, r1, #1
	cmp r1, #5
	movlt r0, #1
	movge r0, #0
	blt .L85
	b .L54
.L46:
	b .L29
.L49:
	ldr r0, =3
	mov r1, r0
	ldr r0, =0
	b .L46
.L54:
	mov r1, r2
	b .L46
.L81:
	b .L34
.L85:
	b .L45

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
