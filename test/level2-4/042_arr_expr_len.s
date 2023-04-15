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
	sub sp, sp, #8
.L21:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L24
.L24:
	ldr r0, [fp, #-4]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L25
	b .L29
.L25:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, addr_arr0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L25
	b .L35
.L26:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L29:
	b .L26
.L35:
	b .L26

addr_N0:
	.word N
addr_arr0:
	.word arr
	.ident "ZWJM"
