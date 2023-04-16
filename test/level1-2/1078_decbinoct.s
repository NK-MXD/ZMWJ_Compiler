	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L37:
	str r0, [fp, #-4]
	mov r3, r0
	b .L43
.L43:
	mov r0, r3
	ldr r1, =0
	ldr r1, =1
	mov r4, r1
	ldr r1, =0
	mov r2, r1
	cmp r3, #0
	movne r1, #1
	moveq r1, #0
	bne .L44
	b .L48
.L44:
	and r1, r0, #1
	mla r3, r4, r1, r2
	ldr r1, =10
	mul r2, r4, r1
	ldr r1, =2
	sdiv r1, r0, r1
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L87
	b .L53
.L45:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L48:
	ldr r0, =0
	ldr r0, =1
	ldr r0, =0
	b .L45
.L53:
	mov r0, r3
	b .L45
.L87:
	mov r0, r1
	mov r4, r2
	mov r2, r3
	b .L44

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L54:
	ldr r0, =400
	bl dec2bin
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
