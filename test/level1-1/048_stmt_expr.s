	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.section .rodata
	.global n
	.align 4
	.size n, 4
n:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r1, =1
	ldr r0, addr_k0
	str r1, [r0]
	b .L21
.L21:
	ldr r1, [fp, #-4]
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L22
	b .L26
.L22:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, addr_k0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r0, addr_k0
	ldr r1, [r0]
	ldr r0, addr_k0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_k0
	str r1, [r0]
	ldr r1, [fp, #-4]
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L22
	b .L33
.L23:
	ldr r0, addr_k0
	ldr r0, [r0]
	bl putint
	ldr r0, addr_k0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L26:
	b .L23
.L33:
	b .L23

addr_k0:
	.word k
addr_n0:
	.word n
	.ident "ZWJM"
