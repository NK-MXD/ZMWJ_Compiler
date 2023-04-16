	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L45:
	b .L50
.L50:
	ldr r0, =10
	mov r2, r0
	ldr r0, =7
	mov r1, r0
	ldr r0, =6
	mov r6, r0
	ldr r0, =5
	ldr r3, =5
	cmp r3, #20
	movlt r3, #1
	movge r3, #0
	blt .L51
	b .L55
.L51:
	add r5, r0, #3
	b .L56
.L52:
	add r1, r1, r4
	add r0, r0, r1
	add r0, r0, r2
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L55:
	ldr r0, =10
	mov r4, r0
	ldr r0, =7
	mov r2, r0
	ldr r0, =6
	mov r1, r0
	ldr r0, =5
	b .L52
.L56:
	mov r4, r2
	mov r3, r1
	mov r0, r6
	cmp r6, #10
	movlt r7, #1
	movge r7, #0
	blt .L57
	b .L61
.L57:
	add r2, r0, #1
	b .L62
.L58:
	sub r8, r0, #2
	mov r2, r4
	mov r1, r3
	mov r6, r8
	mov r0, r5
	cmp r5, #20
	movlt r7, #1
	movge r7, #0
	blt .L51
	b .L93
.L61:
	mov r4, r2
	mov r3, r1
	mov r0, r6
	b .L58
.L62:
	mov r1, r4
	mov r6, r3
	cmp r3, #7
	moveq r0, #1
	movne r0, #0
	beq .L63
	b .L67
.L63:
	sub r0, r6, #1
	b .L68
.L64:
	add r7, r0, #1
	mov r4, r1
	mov r3, r7
	mov r0, r2
	cmp r2, #10
	movlt r6, #1
	movge r6, #0
	blt .L57
	b .L88
.L67:
	mov r1, r4
	mov r0, r3
	b .L64
.L68:
	mov r4, r1
	cmp r1, #20
	movlt r3, #1
	movge r3, #0
	blt .L69
	b .L73
.L69:
	add r3, r4, #3
	cmp r3, #20
	movlt r1, #1
	movge r1, #0
	blt .L165
	b .L78
.L70:
	sub r4, r1, #1
	mov r1, r4
	mov r6, r0
	cmp r0, #7
	moveq r3, #1
	movne r3, #0
	beq .L63
	b .L83
.L73:
	b .L70
.L78:
	mov r1, r3
	b .L70
.L83:
	mov r1, r4
	b .L64
.L88:
	mov r4, r1
	mov r3, r7
	mov r0, r2
	b .L58
.L93:
	mov r2, r3
	mov r1, r8
	mov r0, r5
	b .L52
.L165:
	mov r4, r3
	b .L69

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L94:
	bl FourWhile
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
