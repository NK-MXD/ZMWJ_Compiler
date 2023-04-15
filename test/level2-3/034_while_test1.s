	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =7
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
	add r0, r0, #30
	str r0, [fp, #-4]
	b .L28
.L24:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L27:
	b .L24
.L28:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L29
	b .L33
.L29:
	ldr r0, [fp, #-8]
	add r0, r0, #6
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L29
	b .L38
.L30:
	ldr r0, [fp, #-8]
	sub r0, r0, #100
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L43
.L33:
	b .L30
.L38:
	b .L30
.L43:
	b .L24

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
