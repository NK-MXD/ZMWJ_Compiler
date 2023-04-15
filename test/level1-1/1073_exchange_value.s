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
	str r0, [fp, #-4]
	bl getint
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	str r0, [fp, #-4]
	ldr r0, [fp, #-12]
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	bl putint
	ldr r0, =10
	str r0, [fp, #-12]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	bl putint
	ldr r0, =10
	str r0, [fp, #-12]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
