	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L20:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
