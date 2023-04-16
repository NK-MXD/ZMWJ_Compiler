	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L58:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L61
	b .L65
.L61:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L62:
	ldr r0, [fp, #-8]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L66
	b .L70
.L65:
	b .L62
.L66:
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L67:
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r4, [r0]
	b .L78
.L70:
	b .L67
.L78:
	ldr r3, [fp, #-8]
	ldr r0, =1
	mov r1, r0
	mov r0, r4
	mov r5, r4
	ldr r2, =1
	cmp r2, r3
	movlt r2, #1
	movge r2, #0
	blt .L79
	b .L83
.L79:
	cmp r5, #0
	movlt r2, #1
	movge r2, #0
	blt .L84
	b .L88
.L80:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L83:
	ldr r0, =1
	mov r0, r4
	b .L80
.L84:
	ldr r2, =0
	mov r4, r2
	b .L85
.L85:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r2, [r2]
	add r5, r4, r2
	cmp r0, r5
	movlt r2, #1
	movge r2, #0
	blt .L91
	b .L95
.L88:
	mov r4, r5
	b .L85
.L91:
	mov r4, r5
	b .L92
.L92:
	add r3, r1, #1
	ldr r2, [fp, #-8]
	mov r1, r3
	mov r0, r4
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L79
	b .L101
.L95:
	mov r4, r0
	b .L92
.L101:
	mov r0, r4
	b .L80

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L102:
	ldr r0, =0
	sub r3, r0, #4
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	str r3, [r1]
	mov r2, #1
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =3
	str r0, [r2]
	mov r2, #2
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =9
	str r0, [r2]
	ldr r0, =0
	sub r0, r0, #2
	mov r3, #3
	mov r4, #-40
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	mov r2, #4
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =0
	str r0, [r2]
	mov r2, #5
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =1
	str r0, [r2]
	ldr r0, =0
	sub r0, r0, #6
	mov r3, #6
	mov r4, #-40
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	mov r2, #7
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r2, =5
	str r2, [r0]
	mov r0, #8
	mov r2, #-40
	mov r3, #4
	mul r3, r0, r3
	add r0, fp, r2
	add r2, r0, r3
	ldr r0, =7
	str r0, [r2]
	mov r2, #9
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =8
	str r0, [r2]
	mov r0, r1
	mov r1, #10
	bl maxSubArray
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
