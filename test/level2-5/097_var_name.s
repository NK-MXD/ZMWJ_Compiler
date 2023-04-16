	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L31:
	add r0, fp, #-80
	mov r1, #0
	mov r2, #80
	bl memset
	mov r4, #0
	mov r5, #-80
	mov r0, #4
	mul r4, r4, r0
	add r0, fp, r5
	add r4, r0, r4
	ldr r0, =1
	str r0, [r4]
	add r4, r4, #4
	ldr r0, =2
	str r0, [r4]
	b .L57
.L57:
	ldr r0, =0
	mov r8, r0
	ldr r0, =2
	mov r4, r0
	ldr r0, =2
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L58
	b .L62
.L58:
	mov r5, #-80
	mov r0, #4
	mul r0, r4, r0
	add r5, fp, r5
	add r0, r5, r0
	ldr r6, [r0]
	sub r0, r4, #1
	mov r7, #-80
	mov r5, #4
	mul r5, r0, r5
	add r0, fp, r7
	add r0, r0, r5
	ldr r0, [r0]
	add r6, r6, r0
	sub r0, r4, #2
	mov r7, #-80
	mov r5, #4
	mul r5, r0, r5
	add r0, fp, r7
	add r0, r0, r5
	ldr r0, [r0]
	add r6, r6, r0
	mov r7, #-80
	mov r0, #4
	mul r5, r4, r0
	add r0, fp, r7
	add r0, r0, r5
	str r6, [r0]
	mov r5, #-80
	mov r0, #4
	mul r0, r4, r0
	add r5, fp, r5
	add r0, r5, r0
	ldr r0, [r0]
	add r5, r8, r0
	mov r6, #-80
	mov r0, #4
	mul r0, r4, r0
	add r6, fp, r6
	add r0, r6, r0
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r4, r4, #1
	cmp r4, #20
	movlt r0, #1
	movge r0, #0
	blt .L89
	b .L73
.L59:
	mov r0, r1
	add sp, sp, #80
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L62:
	ldr r0, =0
	mov r1, r0
	ldr r0, =2
	b .L59
.L73:
	mov r1, r5
	b .L59
.L89:
	mov r8, r5
	b .L58

	.ident "ZWJM"
