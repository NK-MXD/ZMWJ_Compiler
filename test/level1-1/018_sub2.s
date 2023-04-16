	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 4
a:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L6:
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, =2
	sub r0, r0, r1
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
