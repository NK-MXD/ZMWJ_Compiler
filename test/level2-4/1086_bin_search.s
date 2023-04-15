	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L63:
	ldr r0, =0
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-4]
	b .L67
.L67:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L72
.L68:
	ldr r0, [fp, #-4]
	add r3, r0, #1
	ldr r1, [fp, #-4]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L77
.L69:
	ldr r0, =10
	str r0, [fp, #-68]
	bl getint
	str r0, [fp, #-52]
	ldr r0, [fp, #-68]
	sub r0, r0, #1
	str r0, [fp, #-56]
	ldr r0, =0
	str r0, [fp, #-60]
	ldr r1, [fp, #-56]
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-64]
	b .L83
.L72:
	b .L69
.L77:
	b .L69
.L83:
	ldr r1, [fp, #-64]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, [fp, #-52]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L109
	b .L90
.L84:
	ldr r1, [fp, #-56]
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-64]
	ldr r0, [fp, #-52]
	ldr r2, [fp, #-64]
	mov r3, #-48
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L94
	b .L100
.L85:
	ldr r0, [fp, #-52]
	ldr r2, [fp, #-64]
	mov r3, #-48
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L117
	b .L123
.L90:
	b .L85
.L94:
	ldr r0, [fp, #-64]
	sub r0, r0, #1
	str r0, [fp, #-56]
	b .L96
.L95:
	ldr r0, [fp, #-64]
	add r0, r0, #1
	str r0, [fp, #-60]
	b .L96
.L96:
	ldr r1, [fp, #-64]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, [fp, #-52]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L109
	b .L113
.L100:
	b .L95
.L109:
	ldr r1, [fp, #-60]
	ldr r0, [fp, #-56]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L84
	b .L116
.L113:
	b .L85
.L116:
	b .L85
.L117:
	ldr r0, [fp, #-52]
	bl putint
	b .L119
.L118:
	ldr r0, =0
	str r0, [fp, #-52]
	mov r0, r0
	bl putint
	b .L119
.L119:
	ldr r0, =10
	str r0, [fp, #-52]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #72
	pop {r3, r4, fp, lr}
	bx lr
.L123:
	b .L118

	.ident "ZWJM"
