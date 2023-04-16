	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L41:
	str r0, [fp, #-4]
	b .L46
.L46:
	ldr r0, =0
	ldr r1, =0
	cmp r1, #4
	movlt r1, #1
	movge r1, #0
	blt .L47
	b .L51
.L47:
	ldr r3, [fp, #-4]
	ldr r2, =10
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r4, r3, r1
	mov r3, #-20
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r4, [r1]
	ldr r4, [fp, #-4]
	ldr r1, =3435973837
	umull r1, r2, r4, r1
	mov r3, r2, ASR#3
	mov r1, r2, LSR#31
	add r3, r3, r1
	ldr r1, =10
	sdiv r3, r4, r1
	str r3, [fp, #-4]
	add r1, r0, #1
	cmp r1, #4
	movlt r0, #1
	movge r0, #0
	blt .L97
	b .L56
.L48:
	mov r1, #0
	mov r2, #-20
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r3, [r0]
	mov r1, #3
	mov r2, #-20
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	moveq r0, #1
	movne r0, #0
	beq .L60
	b .L65
.L51:
	ldr r0, =0
	b .L48
.L56:
	b .L48
.L57:
	ldr r0, =1
	b .L59
.L58:
	ldr r0, =0
	b .L59
.L59:
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L60:
	mov r1, #1
	mov r2, #-20
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r3, [r0]
	mov r1, #2
	mov r2, #-20
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L70
.L65:
	b .L58
.L70:
	b .L58
.L97:
	mov r0, r1
	b .L47

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L71:
	ldr r0, =1221
	bl palindrome
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L74
	b .L79
.L74:
	ldr r0, =1221
	bl putint
	b .L76
.L75:
	mov r0, #0
	bl putint
	ldr r0, =0
	b .L76
.L76:
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L79:
	b .L75

	.ident "ZWJM"
