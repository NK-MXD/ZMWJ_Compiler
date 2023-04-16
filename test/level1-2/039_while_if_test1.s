	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r3, r4, fp, lr}
	mov fp, sp
.L20:
	b .L23
.L23:
	ldr r0, =0
	ldr r0, =0
	ldr r1, =0
	cmp r1, #100
	movlt r1, #1
	movge r1, #0
	blt .L24
	b .L28
.L24:
	cmp r0, #5
	moveq r1, #1
	movne r1, #0
	beq .L29
	b .L34
.L25:
	mov r0, r1
	pop {r3, r4, fp, lr}
	bx lr
.L28:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L25
.L29:
	ldr r1, =25
	mov r2, r1
	b .L31
.L30:
	cmp r0, #10
	moveq r1, #1
	movne r1, #0
	beq .L35
	b .L40
.L31:
	add r1, r0, #1
	mov r0, r2
	mov r0, r1
	cmp r1, #100
	movlt r1, #1
	movge r1, #0
	blt .L24
	b .L45
.L34:
	b .L30
.L35:
	ldr r1, =42
	b .L37
.L36:
	add r1, r0, r0
	b .L37
.L37:
	mov r2, r1
	b .L31
.L40:
	b .L36
.L45:
	mov r1, r2
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
