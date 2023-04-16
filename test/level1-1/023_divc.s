	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 4
a:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L3:
	ldr r0, addr_a0
	ldr r3, [r0]
	ldr r0, =3435973837
	umull r0, r1, r3, r0
	mov r2, r1, ASR#2
	mov r0, r1, LSR#31
	add r2, r2, r0
	ldr r0, =5
	sdiv r2, r3, r0
	mov r0, r2
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
