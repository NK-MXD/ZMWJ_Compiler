	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L9:
	ldr r0, =2
	add r0, r0, #3
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
