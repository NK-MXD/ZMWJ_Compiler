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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #136
.L164:
	bl getint
	mov r4, r0
	str r4, [fp, #-124]
	b .L196
.L196:
	ldr r4, [fp, #-124]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L197
	b .L201
.L197:
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L197
	b .L206
.L198:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r4, [fp, #-36]
	add r5, r4, #1
	str r5, [fp, #-40]
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-44]
	ldr r4, [fp, #-44]
	add r5, r4, #1
	str r5, [fp, #-48]
	ldr r4, [fp, #-48]
	add r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	add r5, r4, #1
	str r5, [fp, #-56]
	ldr r4, [fp, #-56]
	add r5, r4, #1
	str r5, [fp, #-60]
	ldr r4, [fp, #-60]
	add r5, r4, #1
	str r5, [fp, #-64]
	ldr r4, [fp, #-64]
	add r5, r4, #1
	str r5, [fp, #-68]
	ldr r4, [fp, #-68]
	add r5, r4, #1
	str r5, [fp, #-72]
	ldr r4, [fp, #-72]
	add r5, r4, #1
	str r5, [fp, #-76]
	ldr r4, [fp, #-76]
	add r5, r4, #1
	str r5, [fp, #-80]
	ldr r4, [fp, #-80]
	add r5, r4, #1
	str r5, [fp, #-84]
	ldr r4, [fp, #-84]
	add r5, r4, #1
	str r5, [fp, #-88]
	ldr r4, [fp, #-88]
	add r5, r4, #1
	str r5, [fp, #-92]
	ldr r4, [fp, #-92]
	add r5, r4, #1
	str r5, [fp, #-96]
	ldr r4, [fp, #-96]
	add r5, r4, #1
	str r5, [fp, #-100]
	ldr r4, [fp, #-100]
	add r5, r4, #1
	str r5, [fp, #-104]
	ldr r4, [fp, #-104]
	add r5, r4, #1
	str r5, [fp, #-108]
	ldr r4, [fp, #-108]
	add r5, r4, #1
	str r5, [fp, #-112]
	ldr r4, [fp, #-112]
	add r5, r4, #1
	str r5, [fp, #-116]
	ldr r4, [fp, #-116]
	add r5, r4, #1
	str r5, [fp, #-120]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-12]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-16]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-24]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-28]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-32]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-36]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-40]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-44]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-48]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-56]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-60]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-64]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-68]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-72]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-76]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-80]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-84]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-88]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-92]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-96]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-100]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-104]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-108]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-112]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-116]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-120]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-132]
	ldr r4, [fp, #-132]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-124]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-132]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-104]
	mov r0, r4
	add sp, sp, #136
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L201:
	b .L198
.L206:
	b .L198

addr_n1:
	.word n
	.ident "ZWJM"
