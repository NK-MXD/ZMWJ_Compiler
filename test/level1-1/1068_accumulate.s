	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L14:
	b .L17
.L17:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L18
	b .L22
.L18:
	add r2, r2, r1
	add r1, r1, #1
	cmp r1, #21
	movlt r0, #1
	movge r0, #0
	blt .L42
	b .L27
.L19:
	mov r0, r1
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L22:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L19
.L27:
	mov r1, r2
	b .L19
.L42:
	b .L18

	.ident "ZWJM"
