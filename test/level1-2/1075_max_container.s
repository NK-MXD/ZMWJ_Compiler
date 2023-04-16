	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxArea
	.type maxArea , %function
maxArea:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L71:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	sub r5, r0, #1
	ldr r0, =0
	sub r4, r0, #1
	b .L77
.L77:
	ldr r0, =0
	mov r3, r4
	mov r2, r5
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r5
	movlt r0, #1
	movge r0, #0
	blt .L78
	b .L82
.L78:
	ldr r5, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r5
	ldr r4, [r0]
	mov r0, #4
	mla r0, r2, r0, r5
	ldr r0, [r0]
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L84
	b .L93
.L79:
	mov r0, r1
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L82:
	ldr r0, =0
	mov r1, r4
	ldr r0, =0
	b .L79
.L84:
	sub r5, r2, r1
	ldr r4, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r4
	ldr r0, [r0]
	mul r0, r5, r0
	mov r4, r0
	b .L86
.L85:
	sub r5, r2, r1
	ldr r4, [fp, #-4]
	mov r0, #4
	mla r0, r2, r0, r4
	ldr r0, [r0]
	mul r0, r5, r0
	mov r4, r0
	b .L86
.L86:
	cmp r4, r3
	movgt r0, #1
	movle r0, #0
	bgt .L98
	b .L102
.L93:
	b .L85
.L98:
	mov r0, r4
	b .L99
.L99:
	ldr r5, [fp, #-4]
	mov r3, #4
	mla r3, r1, r3, r5
	ldr r4, [r3]
	mov r3, #4
	mla r3, r2, r3, r5
	ldr r3, [r3]
	cmp r4, r3
	movgt r3, #1
	movle r3, #0
	bgt .L103
	b .L112
.L102:
	mov r0, r3
	b .L99
.L103:
	sub r2, r2, #1
	mov r5, r2
	mov r4, r1
	b .L105
.L104:
	add r1, r1, #1
	mov r5, r2
	mov r4, r1
	b .L105
.L105:
	mov r3, r0
	mov r2, r5
	mov r1, r4
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L78
	b .L118
.L112:
	b .L104
.L118:
	mov r1, r0
	b .L79

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L119:
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =3
	str r1, [r0]
	mov r2, #1
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =3
	str r1, [r2]
	mov r2, #2
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =9
	str r1, [r2]
	mov r2, #3
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r2, #4
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r3, #5
	mov r2, #-40
	mov r1, #4
	mul r1, r3, r1
	add r2, fp, r2
	add r1, r2, r1
	ldr r2, =1
	str r2, [r1]
	mov r2, #6
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #7
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =5
	str r1, [r2]
	mov r2, #8
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =7
	str r1, [r2]
	mov r2, #9
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =8
	str r1, [r2]
	mov r1, #10
	bl maxArea
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
