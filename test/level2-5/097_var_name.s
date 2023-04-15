	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #96
.L31:
	ldr r0, =2
	str r0, [fp, #-4]
	ldr r0, =20
	str r0, [fp, #-8]
	add r0, fp, #-88
	mov r1, #0
	mov r2, #80
	bl memset
	mov r4, #0
	mov r5, #-88
	mov r0, #4
	mul r4, r4, r0
	add r0, fp, r5
	add r4, r0, r4
	ldr r0, =1
	str r0, [r4]
	add r4, r4, #4
	ldr r0, =2
	str r0, [r4]
	ldr r0, =0
	str r0, [fp, #-92]
	b .L57
.L57:
	ldr r4, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L58
	b .L62
.L58:
	ldr r4, [fp, #-4]
	mov r5, #-88
	mov r0, #4
	mul r4, r4, r0
	add r0, fp, r5
	add r0, r0, r4
	ldr r0, [r0]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	mov r6, #-88
	mov r4, #4
	mul r5, r5, r4
	add r4, fp, r6
	add r4, r4, r5
	ldr r4, [r4]
	add r0, r0, r4
	ldr r4, [fp, #-4]
	sub r5, r4, #2
	mov r6, #-88
	mov r4, #4
	mul r5, r5, r4
	add r4, fp, r6
	add r4, r4, r5
	ldr r4, [r4]
	add r0, r0, r4
	ldr r5, [fp, #-4]
	mov r6, #-88
	mov r4, #4
	mul r5, r5, r4
	add r4, fp, r6
	add r4, r4, r5
	str r0, [r4]
	ldr r0, [fp, #-92]
	ldr r5, [fp, #-4]
	mov r6, #-88
	mov r4, #4
	mul r5, r5, r4
	add r4, fp, r6
	add r4, r4, r5
	ldr r4, [r4]
	add r0, r0, r4
	str r0, [fp, #-92]
	ldr r4, [fp, #-4]
	mov r5, #-88
	mov r0, #4
	mul r4, r4, r0
	add r0, fp, r5
	add r0, r0, r4
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r4, r0
	ldr r0, [fp, #-8]
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L58
	b .L73
.L59:
	ldr r0, [fp, #-92]
	add sp, sp, #96
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L62:
	b .L59
.L73:
	b .L59

	.ident "ZWJM"
