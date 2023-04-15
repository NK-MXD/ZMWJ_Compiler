	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L38:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L43
.L43:
	ldr r0, [fp, #-4]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L48
.L44:
	b .L49
.L45:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L48:
	b .L45
.L49:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, =101
	sub r0, r0, r1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L50
	b .L54
.L50:
	ldr r1, [fp, #-4]
	ldr r0, =100
	sub r1, r0, r1
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	str r0, [fp, #-12]
	ldr r1, [fp, #-4]
	lsl r0, r1, #2
	add r1, r0, r1
	ldr r0, [fp, #-8]
	add r2, r1, r0
	ldr r1, [fp, #-12]
	ldr r0, =2
	sdiv r0, r1, r0
	add r0, r2, r0
	cmp r0, #100
	moveq r0, #1
	movne r0, #0
	beq .L55
	b .L59
.L51:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L71
.L54:
	b .L51
.L55:
	ldr r0, [fp, #-4]
	bl putint
	ldr r0, [fp, #-8]
	bl putint
	ldr r0, [fp, #-12]
	bl putint
	ldr r0, =10
	str r0, [fp, #-16]
	mov r0, r0
	bl putch
	b .L56
.L56:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r2, r0
	ldr r1, [fp, #-4]
	ldr r0, =101
	sub r0, r0, r1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L50
	b .L66
.L59:
	b .L56
.L66:
	b .L51
.L71:
	b .L45

	.ident "ZWJM"
