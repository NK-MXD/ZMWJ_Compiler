	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L58:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L62
.L62:
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L63
	b .L67
.L63:
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
	blt .L63
	b .L72
.L64:
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
	ldr r4, =0
	str r4, [fp, #-72]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-76]
	b .L80
.L67:
	b .L64
.L72:
	b .L64
.L80:
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L101
	b .L86
.L81:
	ldr r4, [fp, #-4]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-52]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L90
	b .L95
.L82:
	ldr r4, [fp, #-72]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L108
	b .L113
.L86:
	b .L82
.L90:
	ldr r4, =1
	str r4, [fp, #-72]
	ldr r4, [fp, #-4]
	str r4, [fp, #-76]
	b .L91
.L91:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L101
	b .L104
.L95:
	b .L91
.L101:
	ldr r4, [fp, #-72]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L81
	b .L107
.L104:
	b .L82
.L107:
	b .L82
.L108:
	ldr r4, [fp, #-76]
	mov r0, r4
	bl putint
	b .L110
.L109:
	ldr r4, =0
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	b .L110
.L110:
	ldr r4, =10
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #80
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L113:
	b .L109

	.ident "ZWJM"
