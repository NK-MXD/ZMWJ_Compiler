	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L9:
	ldr r0, =1
	str r0, [fp, #-4]
	ldr r0, =2
	str r0, [fp, #-8]
	ldr r0, =3
	str r0, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	add r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
