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
	ldr r0, =2863311531
	umull r0, r1, r2, r0
	mov r3, r1, ASR#1
	mov r0, r1, LSR#31
	add r3, r3, r0
	ldr r0, =3
	sdiv r3, r2, r0
	mov r0, r3
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
