	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #168
.L18:
	mov r4, #0
	mov r5, #-32
	mov r6, #8
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
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	ldr r4, =3
	str r4, [fp, #-36]
	add r0, fp, #-68
	mov r1, #0
	mov r2, #32
	bl memset
	mov r4, #0
	mov r5, #-100
	mov r6, #8
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
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =6
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	mov r4, #0
	mov r5, #-132
	mov r6, #8
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
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	mov r4, #3
	mov r6, #-32
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [r4]
	add r4, r5, #4
	str r6, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	mov r4, #2
	mov r5, #-132
	mov r6, #8
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #0
	mov r6, #-164
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	mov r4, #2
	mov r5, #-100
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	mov r4, #1
	mov r7, #4
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [r4]
	add r4, r6, #4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	mov r4, #3
	mov r5, #-164
	mov r6, #8
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #0
	mov r6, #-164
	mov r7, #8
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	mov r4, #0
	mov r5, #-164
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	mov r4, #1
	mov r7, #4
	mul r8, r4, r7
	add r4, r5, r8
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	mov r4, #3
	mov r6, #-132
	mov r7, #8
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [r4]
	add r4, r5, r6
	mov r0, r4
	add sp, sp, #168
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.ident "ZWJM"
