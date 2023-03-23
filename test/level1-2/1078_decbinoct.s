	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L37:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	str r4, [fp, #-20]
	b .L43
.L43:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L44
	b .L48
.L44:
	ldr r4, [fp, #-20]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	str r5, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	mul r6, r4, r5
	ldr r4, [fp, #-8]
	add r5, r6, r4
	str r5, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, =10
	mul r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L44
	b .L53
.L45:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L48:
	b .L45
.L53:
	b .L45

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L54:
	ldr r4, =400
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl dec2bin
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
