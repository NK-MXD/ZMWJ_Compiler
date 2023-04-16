	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #104
.L32:
	mov r1, #0
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r0, r1, #4
	ldr r1, =4
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	b .L88
.L88:
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	ldr r0, =0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L89
	b .L93
.L89:
	ldr r0, =2
	sub r1, r0, #1
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r0, #4
	mla r0, r3, r0, r2
	ldr r1, [r0]
	ldr r0, =3
	sub r4, r0, #1
	mov r5, #-100
	mov r0, #20
	mul r4, r4, r0
	add r0, fp, r5
	add r0, r0, r4
	mov r4, #4
	mla r4, r3, r4, r0
	ldr r5, [r4]
	mov r4, #4
	mla r2, r3, r4, r2
	str r5, [r2]
	mov r2, #4
	mla r0, r3, r2, r0
	str r1, [r0]
	add r1, r3, #1
	cmp r1, #5
	movlt r0, #1
	movge r0, #0
	blt .L122
	b .L104
.L90:
	mov r1, #2
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #104
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L93:
	ldr r0, =0
	ldr r0, =0
	b .L90
.L104:
	b .L90
.L122:
	mov r3, r1
	b .L89

	.ident "ZWJM"
