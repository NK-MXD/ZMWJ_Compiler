	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L38:
	b .L43
.L43:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L48
.L44:
	b .L49
.L45:
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L48:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L45
.L49:
	ldr r0, =101
	sub r6, r0, r4
	mov r0, r2
	mov r5, r3
	mov r5, r1
	cmp r1, r6
	movlt r6, #1
	movge r6, #0
	blt .L50
	b .L54
.L50:
	ldr r1, =100
	sub r1, r1, r4
	sub r6, r1, r5
	lsl r1, r4, #2
	add r2, r1, r4
	mov r1, r5
	add r2, r2, r1
	ldr r1, =2
	sdiv r1, r6, r1
	add r1, r2, r1
	cmp r1, #100
	moveq r1, #1
	movne r1, #0
	beq .L55
	b .L59
.L51:
	add r6, r4, #1
	mov r2, r5
	mov r3, r0
	mov r4, r6
	cmp r6, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L71
.L54:
	mov r5, r2
	mov r0, r3
	b .L51
.L55:
	mov r0, r4
	bl putint
	mov r0, r5
	bl putint
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	ldr r0, =10
	mov r3, r0
	b .L56
.L56:
	add r2, r5, #1
	ldr r0, =101
	sub r1, r0, r4
	mov r0, r3
	mov r5, r6
	mov r5, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L50
	b .L66
.L59:
	mov r3, r0
	b .L56
.L66:
	mov r5, r3
	mov r0, r6
	mov r1, r2
	b .L51
.L71:
	b .L45

	.ident "ZWJM"
