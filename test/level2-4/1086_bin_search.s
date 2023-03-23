	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L63:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L67
.L67:
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L68
	b .L72
.L68:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	ldr r4, [fp, #-4]
	mov r6, #-48
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L68
	b .L77
.L69:
	ldr r4, =10
	str r4, [fp, #-68]
	bl getint
	mov r4, r0
	str r4, [fp, #-52]
	ldr r4, [fp, #-68]
	sub r5, r4, #1
	str r5, [fp, #-56]
	ldr r4, =0
	str r4, [fp, #-60]
	ldr r4, [fp, #-56]
	ldr r5, [fp, #-60]
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-64]
	b .L83
.L72:
	b .L69
.L77:
	b .L69
.L83:
	ldr r4, [fp, #-64]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-52]
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L109
	b .L90
.L84:
	ldr r4, [fp, #-56]
	ldr r5, [fp, #-60]
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-64]
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-64]
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L94
	b .L100
.L85:
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-64]
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L117
	b .L123
.L90:
	b .L85
.L94:
	ldr r4, [fp, #-64]
	sub r5, r4, #1
	str r5, [fp, #-56]
	b .L96
.L95:
	ldr r4, [fp, #-64]
	add r5, r4, #1
	str r5, [fp, #-60]
	b .L96
.L96:
	ldr r4, [fp, #-64]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-52]
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L109
	b .L113
.L100:
	b .L95
.L109:
	ldr r4, [fp, #-60]
	ldr r5, [fp, #-56]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L84
	b .L116
.L113:
	b .L85
.L116:
	b .L85
.L117:
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	b .L119
.L118:
	ldr r4, =0
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	b .L119
.L119:
	ldr r4, =10
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #72
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L123:
	b .L118

	.ident "ZWJM"
