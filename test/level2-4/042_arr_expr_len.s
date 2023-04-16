	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global arr
	.align 4
	.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
	.section .rodata
	.global N
	.align 4
	.size N, 4
N:
	.word -1
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L21:
	b .L24
.L24:
	ldr r0, =0
	ldr r1, =0
	mov r3, r1
	ldr r1, =0
	cmp r1, #6
	movlt r1, #1
	movge r1, #0
	blt .L25
	b .L29
.L25:
	ldr r2, addr_arr0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	add r2, r0, r1
	add r1, r3, #1
	cmp r1, #6
	movlt r0, #1
	movge r0, #0
	blt .L50
	b .L35
.L26:
	mov r0, r1
	pop {r3, r4, fp, lr}
	bx lr
.L29:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L26
.L35:
	mov r1, r2
	b .L26
.L50:
	mov r0, r2
	mov r3, r1
	b .L25

addr_N0:
	.word N
addr_arr0:
	.word arr
	.ident "ZWJM"
