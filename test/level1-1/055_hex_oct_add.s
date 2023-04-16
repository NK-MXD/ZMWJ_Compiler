	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L8:
	ldr r0, =15
	add r0, r0, #12
	add r0, r0, #61
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
