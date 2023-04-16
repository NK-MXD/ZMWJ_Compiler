	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L63:
	b .L67
.L67:
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L72
.L68:
	add r1, r3, #1
	mov r0, #-40
	mov r2, #4
	mul r2, r3, r2
	add r0, fp, r0
	add r0, r0, r2
	str r1, [r0]
	cmp r1, #10
	movlt r0, #1
	movge r0, #0
	blt .L160
	b .L77
.L69:
	bl getint
	mov r1, r0
	ldr r0, =10
	sub r3, r0, #1
	mov r2, r3
	ldr r0, =2
	sdiv r5, r2, r0
	b .L83
.L72:
	ldr r0, =0
	b .L69
.L77:
	b .L69
.L83:
	mov r4, #-40
	mov r0, #4
	mul r2, r5, r0
	add r0, fp, r4
	add r0, r0, r2
	ldr r2, [r0]
	mov r0, r5
	ldr r4, =0
	cmp r2, r1
	movne r2, #1
	moveq r2, #0
	bne .L109
	b .L90
.L84:
	add r2, r3, r4
	ldr r0, =2
	sdiv r5, r2, r0
	mov r6, #-40
	mov r0, #4
	mul r2, r5, r0
	add r0, fp, r6
	add r0, r0, r2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L94
	b .L100
.L85:
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L117
	b .L123
.L90:
	mov r2, r5
	ldr r0, =0
	b .L85
.L94:
	sub r0, r5, #1
	mov r3, r0
	b .L96
.L95:
	add r0, r5, #1
	mov r4, r0
	b .L96
.L96:
	mov r6, #-40
	mov r0, #4
	mul r2, r5, r0
	add r0, fp, r6
	add r0, r0, r2
	ldr r2, [r0]
	mov r0, r5
	cmp r2, r1
	movne r2, #1
	moveq r2, #0
	bne .L109
	b .L113
.L100:
	b .L95
.L109:
	cmp r4, r3
	movlt r2, #1
	movge r2, #0
	blt .L84
	b .L116
.L113:
	mov r2, r5
	b .L85
.L116:
	mov r2, r0
	b .L85
.L117:
	mov r0, r1
	bl putint
	b .L119
.L118:
	mov r0, #0
	bl putint
	ldr r0, =0
	b .L119
.L119:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L123:
	b .L118
.L160:
	mov r3, r1
	b .L68

	.ident "ZWJM"
