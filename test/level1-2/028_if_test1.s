	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L10:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L12
	b .L17
.L12:
	ldr r4, =25
	str r4, [fp, #-4]
	b .L14
.L13:
	ldr r4, [fp, #-4]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L14
.L14:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
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
	mov r4, r0
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
