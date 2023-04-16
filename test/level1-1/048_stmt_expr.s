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
.L19:
	ldr r1, =1
	ldr r0, addr_k0
	str r1, [r0]
	b .L21
.L21:
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r2, r0, #1
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r2
	movle r0, #1
	movgt r0, #0
	ble .L22
	b .L26
.L22:
	add r0, r1, #1
	ldr r1, addr_k0
	ldr r1, [r1]
	add r1, r1, #1
	ldr r1, addr_k0
	ldr r2, [r1]
	ldr r1, addr_k0
	ldr r1, [r1]
	add r2, r2, r1
	ldr r1, addr_k0
	str r2, [r1]
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r1, r1, #1
	cmp r0, r1
	movle r1, #1
	movgt r1, #0
	ble .L41
	b .L33
.L23:
	ldr r0, addr_k0
	ldr r0, [r0]
	bl putint
	ldr r0, addr_k0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr
.L26:
	ldr r0, =0
	b .L23
.L33:
	b .L23
.L41:
	mov r1, r0
	b .L22

addr_k0:
	.word k
addr_n0:
	.word n
	.ident "ZWJM"
