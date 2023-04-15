	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L10:
	ldr r0, =5
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L12
	b .L17
.L12:
	ldr r0, =25
	str r0, [fp, #-4]
	b .L14
.L13:
	ldr r0, [fp, #-4]
	add r0, r0, r0
	str r0, [fp, #-4]
	b .L14
.L14:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L17:
	b .L13

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L18:
	bl ifElse
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
