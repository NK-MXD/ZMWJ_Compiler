	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #96
.L31:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, =20
	str r4, [fp, #-8]
	add r0, fp, #-88
	mov r1, #0
	mov r2, #80
	bl memset
	mov r4, #0
	mov r5, #-88
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	ldr r4, =0
	str r4, [fp, #-92]
	b .L57
.L57:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L58
	b .L62
.L58:
	ldr r4, [fp, #-4]
	mov r5, #-88
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	mov r5, #-88
	mov r7, #4
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-4]
	sub r6, r4, #2
	mov r4, #-88
	mov r7, #4
	mul r8, r6, r7
	add r6, fp, r4
	add r4, r6, r8
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-4]
	mov r6, #-88
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-92]
	ldr r5, [fp, #-4]
	mov r6, #-88
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-92]
	ldr r4, [fp, #-4]
	mov r5, #-88
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L58
	b .L73
.L59:
	ldr r4, [fp, #-92]
	mov r0, r4
	add sp, sp, #96
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L62:
	b .L59
.L73:
	b .L59

	.ident "ZWJM"
