	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L58:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L61
	b .L65
.L61:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L62:
	ldr r4, [fp, #-8]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L66
	b .L70
.L65:
	b .L62
.L66:
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L67:
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-20]
	b .L78
.L70:
	b .L67
.L78:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L79
	b .L83
.L79:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L84
	b .L88
.L80:
	ldr r4, [fp, #-16]
	mov r0, r4
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L83:
	b .L80
.L84:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L85
.L85:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-20]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L91
	b .L95
.L88:
	b .L85
.L91:
	ldr r4, [fp, #-12]
	str r4, [fp, #-16]
	b .L92
.L92:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L79
	b .L101
.L95:
	b .L92
.L101:
	b .L80

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L102:
	ldr r4, =0
	sub r5, r4, #4
	mov r4, #0
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #1
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
	str r4, [r5]
	mov r4, #2
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =9
	str r4, [r5]
	ldr r4, =0
	sub r5, r4, #2
	mov r4, #3
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #4
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	mov r4, #5
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	ldr r4, =0
	sub r5, r4, #6
	mov r4, #6
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #7
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =5
	str r4, [r5]
	mov r4, #8
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #9
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	ldr r4, =10
	str r4, [fp, #-4]
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r4
	bl maxSubArray
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #48
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
