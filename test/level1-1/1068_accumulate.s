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
.L14:
	ldr r0, =0
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-4]
	b .L17
.L17:
	ldr r0, [fp, #-4]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L18
	b .L22
.L18:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L18
	b .L27
.L19:
	ldr r0, [fp, #-8]
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L22:
	b .L19
.L27:
	b .L19

	.ident "ZWJM"
