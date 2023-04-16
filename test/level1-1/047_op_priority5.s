	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 1
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global c
	.align 4
	.size c, 4
c:
	.word 1
	.global d
	.align 4
	.size d, 4
d:
	.word 2
	.global e
	.align 4
	.size e, 4
e:
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L42:
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	mul r1, r1, r0
	ldr r0, addr_c0
	ldr r0, [r0]
	sdiv r2, r1, r0
	ldr r0, addr_e0
	ldr r1, [r0]
	ldr r0, addr_d0
	ldr r0, [r0]
	add r0, r1, r0
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L47
	b .L50
.L44:
	ldr r0, =1
	mov r4, r0
	b .L45
.L45:
	mov r0, r4
	bl putint
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr
.L46:
	ldr r0, addr_a0
	ldr r2, [r0]
	ldr r0, addr_b0
	ldr r1, [r0]
	ldr r0, addr_c0
	ldr r0, [r0]
	mul r0, r1, r0
	sub r0, r2, r0
	ldr r1, addr_d0
	ldr r3, [r1]
	ldr r1, addr_a0
	ldr r2, [r1]
	ldr r1, addr_c0
	ldr r1, [r1]
	sdiv r1, r2, r1
	sub r1, r3, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L44
	b .L56
.L47:
	ldr r0, addr_a0
	ldr r2, [r0]
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	add r0, r1, r0
	mul r1, r2, r0
	ldr r0, addr_c0
	ldr r0, [r0]
	add r2, r1, r0
	ldr r0, addr_d0
	ldr r1, [r0]
	ldr r0, addr_e0
	ldr r0, [r0]
	add r0, r1, r0
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L44
	b .L53
.L50:
	b .L46
.L53:
	b .L46
.L56:
	ldr r0, =0
	mov r4, r0
	b .L45

addr_a0:
	.word a
addr_b0:
	.word b
addr_c0:
	.word c
addr_d0:
	.word d
addr_e0:
	.word e
	.ident "ZWJM"
