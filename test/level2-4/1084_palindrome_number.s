	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L41:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-24]
	b .L46
.L46:
	ldr r4, [fp, #-24]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L51
.L47:
	ldr r4, [fp, #-4]
	ldr r5, =10
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #-20
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-4]
	ldr r5, =10
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L56
.L48:
	mov r4, #0
	mov r5, #-20
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #3
	mov r6, #-20
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L60
	b .L65
.L51:
	b .L48
.L56:
	b .L48
.L57:
	ldr r4, =1
	str r4, [fp, #-28]
	b .L59
.L58:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L59
.L59:
	ldr r4, [fp, #-28]
	mov r0, r4
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L60:
	mov r4, #1
	mov r5, #-20
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #2
	mov r6, #-20
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L57
	b .L70
.L65:
	b .L58
.L70:
	b .L58

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L71:
	ldr r4, =1221
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl palindrome
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L74
	b .L79
.L74:
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	b .L76
.L75:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	b .L76
.L76:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L79:
	b .L75

	.ident "ZWJM"
