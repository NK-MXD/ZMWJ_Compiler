	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global if_if_Else
	.type if_if_Else , %function
if_if_Else:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L17
	b .L22
.L17:
	ldr r4, [fp, #-8]
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L23
	b .L27
.L18:
	ldr r4, [fp, #-4]
	add r5, r4, #15
	str r5, [fp, #-4]
	b .L19
.L19:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L22:
	b .L18
.L23:
	ldr r4, =25
	str r4, [fp, #-4]
	b .L24
.L24:
	b .L19
.L27:
	b .L24

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L28:
	bl if_if_Else
	mov r4, r0
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
