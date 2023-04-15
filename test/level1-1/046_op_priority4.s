	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global c
	.align 4
	.size c, 4
c:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L49:
	bl getint
	mov r1, r0
	ldr r0, addr_a0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_b0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_c0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_d0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_e0
	str r1, [r0]
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, addr_a0
	ldr r2, [r0]
	ldr r0, addr_b0
	ldr r1, [r0]
	ldr r0, addr_c0
	ldr r0, [r0]
	mul r0, r1, r0
	sub r3, r2, r0
	ldr r0, addr_d0
	ldr r2, [r0]
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, addr_c0
	ldr r0, [r0]
	sdiv r0, r1, r0
	sub r0, r2, r0
	cmp r3, r0
	movne r0, #1
	moveq r0, #0
	bne .L51
	b .L57
.L51:
	ldr r0, =1
	str r0, [fp, #-4]
	b .L52
.L52:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L53:
	ldr r0, addr_a0
	ldr r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_c0
	ldr r0, [r0]
	add r2, r1, r0
	ldr r0, addr_d0
	ldr r1, [r0]
	ldr r0, addr_e0
	ldr r0, [r0]
	add r0, r1, r0
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L51
	b .L63
.L54:
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
	beq .L51
	b .L60
.L57:
	b .L54
.L60:
	b .L53
.L63:
	b .L52

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
