	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L11:
	mov r0, #2
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
