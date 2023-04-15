	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L58:
	ldr r0, =0
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-4]
	b .L62
.L62:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L67
.L63:
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
	blt .L63
	b .L72
.L64:
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
	ldr r0, =0
	str r0, [fp, #-72]
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-76]
	b .L80
.L67:
	b .L64
.L72:
	b .L64
.L80:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L101
	b .L86
.L81:
	ldr r1, [fp, #-4]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, [fp, #-52]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L90
	b .L95
.L82:
	ldr r0, [fp, #-72]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L108
	b .L113
.L86:
	b .L82
.L90:
	ldr r0, =1
	str r0, [fp, #-72]
	ldr r0, [fp, #-4]
	str r0, [fp, #-76]
	b .L91
.L91:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L101
	b .L104
.L95:
	b .L91
.L101:
	ldr r0, [fp, #-72]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L81
	b .L107
.L104:
	b .L82
.L107:
	b .L82
.L108:
	ldr r0, [fp, #-76]
	bl putint
	b .L110
.L109:
	ldr r0, =0
	str r0, [fp, #-52]
	mov r0, r0
	bl putint
	b .L110
.L110:
	ldr r0, =10
	str r0, [fp, #-52]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #80
	pop {r3, r4, fp, lr}
	bx lr
.L113:
	b .L109

	.ident "ZWJM"
