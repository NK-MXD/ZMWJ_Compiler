	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L32:
	mov r4, #0
	mov r5, #-100
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	ldr r4, =2
	str r4, [fp, #-104]
	ldr r4, =3
	str r4, [fp, #-108]
	ldr r4, =0
	str r4, [fp, #-116]
	b .L88
.L88:
	ldr r4, [fp, #-116]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L89
	b .L93
.L89:
	ldr r4, [fp, #-104]
	sub r5, r4, #1
	mov r4, #-100
	mov r6, #20
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [fp, #-116]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-112]
	ldr r4, [fp, #-108]
	sub r5, r4, #1
	mov r4, #-100
	mov r6, #20
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [fp, #-116]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-104]
	sub r6, r5, #1
	mov r5, #-100
	mov r7, #20
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	ldr r6, [fp, #-116]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-112]
	ldr r5, [fp, #-108]
	sub r6, r5, #1
	mov r5, #-100
	mov r7, #20
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	ldr r6, [fp, #-116]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-116]
	add r5, r4, #1
	str r5, [fp, #-116]
	ldr r4, [fp, #-116]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L89
	b .L104
.L90:
	mov r4, #2
	mov r5, #-100
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #120
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:
.L93:
	b .L90
.L104:
	b .L90

	.ident "ZWJM"
