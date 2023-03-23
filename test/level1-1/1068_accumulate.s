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
.L14:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L17
.L17:
	ldr r4, [fp, #-4]
	cmp r4, #21
	movlt r4, #1
	movge r4, #0
	blt .L18
	b .L22
.L18:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #21
	movlt r4, #1
	movge r4, #0
	blt .L18
	b .L27
.L19:
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L22:
	b .L19
.L27:
	b .L19

	.ident "ZWJM"
