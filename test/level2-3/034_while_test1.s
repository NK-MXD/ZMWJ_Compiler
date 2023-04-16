	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {r3, r4, fp, lr}
	mov fp, sp
.L19:
	b .L22
.L22:
	ldr r0, =7
	mov r3, r0
	ldr r0, =5
	mov r4, r0
	ldr r0, =5
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L27
.L23:
	add r2, r4, #30
	b .L28
.L24:
	mov r0, r1
	pop {r3, r4, fp, lr}
	bx lr
.L27:
	ldr r0, =7
	mov r1, r0
	ldr r0, =5
	b .L24
.L28:
	mov r1, r3
	cmp r3, #100
	movlt r0, #1
	movge r0, #0
	blt .L29
	b .L33
.L29:
	add r1, r1, #6
	cmp r1, #100
	movlt r0, #1
	movge r0, #0
	blt .L67
	b .L38
.L30:
	sub r1, r0, #100
	mov r3, r1
	mov r4, r2
	cmp r2, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L43
.L33:
	mov r0, r3
	b .L30
.L38:
	mov r0, r1
	b .L30
.L43:
	b .L24
.L67:
	b .L29

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L44:
	bl doubleWhile
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
