	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L42:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =0
	sub r5, r4, #2
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-8]
	sub r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	add r6, r5, #3
	ldr r5, =0
	sub r7, r5, r6
	ldr r5, =2
	sdiv r6, r7, r5
	mul r8, r6, r5
	sub r5, r7, r8
	sub r6, r4, r5
	str r6, [fp, #-20]
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-16]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	add r4, r5, #67
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	sub r7, r5, r6
	ldr r5, =0
	sub r6, r5, r7
	add r5, r4, r6
	ldr r4, [fp, #-12]
	add r6, r4, #2
	ldr r4, =2
	sdiv r7, r6, r4
	mul r8, r7, r4
	sub r4, r6, r8
	ldr r6, =0
	sub r7, r6, r4
	sub r4, r5, r7
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	add r5, r4, #3
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
