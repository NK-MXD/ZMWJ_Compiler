	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm a, 40, 4
	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
.L1:
	mov r0, #0
	pop {fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
