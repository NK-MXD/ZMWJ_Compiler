	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
.L0:
	mov r0, #3
	pop {fp, lr}
	bx lr

	.ident "ZWJM"
