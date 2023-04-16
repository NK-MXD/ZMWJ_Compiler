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
	ldr r0, =0
	sub r1, r0, #1
	ldr r0, =10
	add r0, r0, r1
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
