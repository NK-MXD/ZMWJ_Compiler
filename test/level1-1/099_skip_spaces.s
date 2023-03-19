	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =408
	sub sp, sp, r4
.L23:
	ldr r4, =0
	ldr r5, =-404
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-408
	str r4, [fp, r5]
	b .L27
.L27:
	bl getint
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L28
	b .L31
.L28:
	bl getint
	mov r4, r0
	ldr r6, =-404
	ldr r5, [fp, r6]
	ldr r6, =-400
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r5, =-404
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-404
	str r5, [fp, r4]
	bl getint
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L28
	b .L36
.L29:
	b .L38
.L31:
	b .L29
.L36:
	b .L29
.L38:
	ldr r5, =-404
	ldr r4, [fp, r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L39
	b .L42
.L39:
	ldr r4, =-404
	ldr r5, [fp, r4]
	sub r4, r5, #1
	ldr r5, =-404
	str r4, [fp, r5]
	ldr r5, =-408
	ldr r4, [fp, r5]
	ldr r6, =-404
	ldr r5, [fp, r6]
	ldr r6, =-400
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, =-408
	str r6, [fp, r4]
	ldr r5, =-404
	ldr r4, [fp, r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L39
	b .L48
.L40:
	ldr r5, =-408
	ldr r4, [fp, r5]
	ldr r5, =79
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	mov r0, r5
	ldr r1, =408
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L42:
	b .L40
.L48:
	b .L40

