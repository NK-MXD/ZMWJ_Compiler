	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L4:
	ldr r2, =10
	ldr r1, =3
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
