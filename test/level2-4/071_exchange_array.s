	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #120
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
	add r1, r1, #4
	ldr r0, =4
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
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	ldr r0, =2
	str r0, [fp, #-104]
	ldr r0, =3
	str r0, [fp, #-108]
	ldr r0, =0
	str r0, [fp, #-116]
	b .L88
.L88:
	ldr r0, [fp, #-116]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L89
	b .L93
.L89:
	ldr r0, [fp, #-104]
	sub r1, r0, #1
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r1, [fp, #-116]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	str r0, [fp, #-112]
	ldr r0, [fp, #-108]
	sub r1, r0, #1
	mov r2, #-100
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r1, [fp, #-116]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r1, [fp, #-104]
	sub r2, r1, #1
	mov r3, #-100
	mov r1, #20
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r2, [fp, #-116]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	ldr r0, [fp, #-112]
	ldr r1, [fp, #-108]
	sub r2, r1, #1
	mov r3, #-100
	mov r1, #20
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r2, [fp, #-116]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	ldr r0, [fp, #-116]
	add r0, r0, #1
	str r0, [fp, #-116]
	mov r0, r0
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L89
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
	add sp, sp, #120
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L93:
	b .L90
.L104:
	b .L90

	.ident "ZWJM"
