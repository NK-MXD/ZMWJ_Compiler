	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L20:
	bl getint
	mov r4, r0
	bl getint
	bl putint
	mov r0, #10
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

addr_n0:
	.word n
	.ident "ZWJM"
