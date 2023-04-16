	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #160
.L18:
	mov r1, #0
	mov r2, #-32
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
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r4, r1, #4
	ldr r0, =7
	str r0, [r4]
	add r1, r4, #4
	ldr r0, =0
	str r0, [r1]
	add r0, fp, #-64
	mov r1, #0
	mov r2, #32
	bl memset
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
	add r3, r1, #4
	ldr r0, =6
	str r0, [r3]
	add r0, r3, #4
	ldr r1, =7
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =8
	str r1, [r0]
	mov r2, #0
	mov r1, #-128
	mov r0, #8
	mul r2, r2, r0
	add r0, fp, r1
	add r0, r0, r2
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r0
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
	add r5, r1, #4
	ldr r0, =0
	str r0, [r5]
	ldr r0, [r4]
	add r2, r5, #4
	str r0, [r2]
	add r1, r2, #4
	ldr r0, =8
	str r0, [r1]
	ldr r0, [r5]
	mov r4, #0
	mov r5, #-160
	mov r1, #8
	mul r4, r4, r1
	add r1, fp, r5
	add r5, r1, r4
	mov r4, #0
	mov r1, #4
	mla r5, r4, r1, r5
	mov r4, #0
	mov r1, #4
	mla r1, r4, r1, r5
	str r0, [r1]
	ldr r3, [r3]
	add r0, r1, #4
	str r3, [r0]
	add r4, r0, #4
	ldr r3, =3
	str r3, [r4]
	add r4, r4, #4
	ldr r3, =4
	str r3, [r4]
	add r4, r4, #4
	ldr r3, =5
	str r3, [r4]
	add r4, r4, #4
	ldr r3, =6
	str r3, [r4]
	add r4, r4, #4
	ldr r3, =7
	str r3, [r4]
	add r4, r4, #4
	ldr r3, =8
	str r3, [r4]
	mov r3, r3
	ldr r1, [r1]
	add r1, r3, r1
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [r2]
	add r0, r1, r0
	add sp, sp, #160
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
