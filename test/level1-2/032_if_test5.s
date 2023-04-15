	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global if_if_Else
	.type if_if_Else , %function
if_if_Else:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L17
	b .L22
.L17:
	ldr r0, [fp, #-8]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L23
	b .L27
.L18:
	ldr r0, [fp, #-4]
	add r0, r0, #15
	str r0, [fp, #-4]
	b .L19
.L19:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L22:
	b .L18
.L23:
	ldr r0, =25
	str r0, [fp, #-4]
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
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
