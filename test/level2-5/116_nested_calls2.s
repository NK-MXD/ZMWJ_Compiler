	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global f
	.type f , %function
f:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L28:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global g
	.type g , %function
g:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L31:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global h
	.type h , %function
h:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L34:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl g
	mov r1, r0
	mov r0, #2
	bl f
	mov r4, r0
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl f
	mov r1, #4
	bl g
	mov r1, r0
	mov r0, r4
	bl f
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L37:
	mov r0, #11
	mov r1, #3
	bl h
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
