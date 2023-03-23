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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L3:
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
	.ident "ZWJM"
