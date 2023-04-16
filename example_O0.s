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
.L14:
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, =5
	str r0, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	add r2, r0, #2
	ldr r1, [fp, #-4]
	ldr r0, =2
	sdiv r0, r1, r0
	sub r3, r2, r0
	ldr r2, [fp, #-8]
	ldr r1, =3
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	add r0, r3, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
