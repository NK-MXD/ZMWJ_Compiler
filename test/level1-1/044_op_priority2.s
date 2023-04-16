	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L15:
	ldr r0, =2
	add r1, r0, #10
	ldr r0, =4
	sub r0, r0, #2
	mul r0, r1, r0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
