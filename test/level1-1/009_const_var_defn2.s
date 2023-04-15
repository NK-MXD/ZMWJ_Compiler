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
.L3:
	ldr r0, addr_b0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
	.ident "ZWJM"
