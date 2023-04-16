	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L31:
	ldr r0, =3389
	ldr r1, addr_k0
	str r0, [r1]
	ldr r0, addr_k0
	ldr r1, [r0]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L32
	b .L36
.L32:
	ldr r0, addr_k0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_k0
	str r1, [r0]
	b .L38
.L33:
	ldr r0, addr_k0
	ldr r0, [r0]
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L36:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L33
.L38:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	mov r3, r0
	ldr r0, =112
	mov r1, r0
	ldr r0, =112
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L39
	b .L43
.L39:
	sub r0, r1, #88
	ldr r1, =1000
	cmp r0, r1
	movlt r1, #1
	movge r1, #0
	blt .L44
	b .L48
.L40:
	bl putint
	b .L33
.L43:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =112
	b .L40
.L44:
	sub r0, r0, #10
	add r0, r0, #11
	add r4, r0, #11
	ldr r0, =11
	mov r2, r0
	ldr r0, =11
	mov r1, r0
	ldr r0, =10
	mov r3, r0
	mov r0, r4
	b .L45
.L45:
	mov r4, r1
	mov r1, r0
	cmp r0, #10
	movgt r5, #1
	movle r5, #0
	bgt .L39
	b .L56
.L48:
	mov r1, r4
	b .L45
.L56:
	b .L40

addr_k0:
	.word k
	.ident "ZWJM"
