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
	ldr r0, =0
	sub r1, r0, #5
	ldr r0, =10
	sub r0, r0, r1
	add r0, r0, #30
	add r0, r0, r1
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
