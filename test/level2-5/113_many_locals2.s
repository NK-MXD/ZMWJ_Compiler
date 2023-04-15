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
	sub sp, sp, #136
.L164:
	bl getint
	str r0, [fp, #-124]
	b .L196
.L196:
	ldr r0, [fp, #-124]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L197
	b .L201
.L197:
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L196
.L198:
	ldr r0, =0
	str r0, [fp, #-4]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-20]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-24]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-28]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-32]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-36]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-40]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-48]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-52]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-56]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-60]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-64]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-68]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-72]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-76]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-80]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-84]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-88]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-92]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-96]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-100]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-104]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-108]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-112]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-116]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-120]
	ldr r0, [fp, #-4]
	bl putint
	ldr r0, [fp, #-8]
	bl putint
	ldr r0, [fp, #-12]
	bl putint
	ldr r0, [fp, #-16]
	bl putint
	ldr r0, [fp, #-20]
	bl putint
	ldr r0, [fp, #-24]
	bl putint
	ldr r0, [fp, #-28]
	bl putint
	ldr r0, [fp, #-32]
	bl putint
	ldr r0, [fp, #-36]
	bl putint
	ldr r0, [fp, #-40]
	bl putint
	ldr r0, [fp, #-44]
	bl putint
	ldr r0, [fp, #-48]
	bl putint
	ldr r0, [fp, #-52]
	bl putint
	ldr r0, [fp, #-56]
	bl putint
	ldr r0, [fp, #-60]
	bl putint
	ldr r0, [fp, #-64]
	bl putint
	ldr r0, [fp, #-68]
	bl putint
	ldr r0, [fp, #-72]
	bl putint
	ldr r0, [fp, #-76]
	bl putint
	ldr r0, [fp, #-80]
	bl putint
	ldr r0, [fp, #-84]
	bl putint
	ldr r0, [fp, #-88]
	bl putint
	ldr r0, [fp, #-92]
	bl putint
	ldr r0, [fp, #-96]
	bl putint
	ldr r0, [fp, #-100]
	bl putint
	ldr r0, [fp, #-104]
	bl putint
	ldr r0, [fp, #-108]
	bl putint
	ldr r0, [fp, #-112]
	bl putint
	ldr r0, [fp, #-116]
	bl putint
	ldr r0, [fp, #-120]
	bl putint
	ldr r0, =10
	str r0, [fp, #-132]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-124]
	bl putint
	ldr r0, [fp, #-132]
	bl putch
	ldr r0, [fp, #-104]
	add sp, sp, #136
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L201:
	b .L198

addr_n1:
	.word n
	.ident "ZWJM"
