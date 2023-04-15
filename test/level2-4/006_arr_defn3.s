	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #160
.L14:
	add r0, fp, #-32
	mov r1, #0
	mov r2, #32
	bl memset
	mov r1, #0
	mov r2, #-64
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	mov r1, #0
	mov r2, #-96
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	mov r1, #0
	mov r2, #-128
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	mov r1, #2
	mov r2, #-128
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	mov r2, #0
	mov r3, #-160
	mov r0, #8
	mul r2, r2, r0
	add r0, fp, r3
	add r3, r0, r2
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r3
	str r1, [r0]
	mov r2, #2
	mov r3, #-96
	mov r1, #8
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, #4
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	mov r1, #3
	mov r2, #-160
	mov r0, #8
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mov r2, #0
	mov r3, #-160
	mov r1, #8
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, r1
	mov r2, #0
	mov r3, #-160
	mov r1, #8
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	mov r2, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, r1
	mov r2, #2
	mov r3, #-32
	mov r1, #8
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, r1
	add sp, sp, #160
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.ident "ZWJM"
