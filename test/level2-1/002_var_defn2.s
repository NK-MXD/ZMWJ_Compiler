	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 3
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L6:
	ldr r0, =5
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_b0
	ldr r0, [r0]
	add r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
	.ident "ZWJM"
