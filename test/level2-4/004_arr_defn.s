	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm a, 40, 4
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L1:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
