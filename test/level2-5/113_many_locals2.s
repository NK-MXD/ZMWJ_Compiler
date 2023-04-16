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
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #96
.L164:
	bl getint
	mov r2, r0
	b .L196
.L196:
	mov r1, r2
	cmp r2, #5
	moveq r0, #1
	movne r0, #0
	beq .L197
	b .L201
.L197:
	add r0, r1, #1
	cmp r0, #5
	moveq r1, #1
	movne r1, #0
	beq .L247
	b .L206
.L198:
	ldr r0, =0
	add r4, r0, #1
	add r5, r4, #1
	add r6, r5, #1
	add r7, r6, #1
	add r8, r7, #1
	add r9, r8, #1
	add r10, r9, #1
	add r0, r10, #1
	str r0, [fp, #-24]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-68]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-72]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-48]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-76]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-40]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-36]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-32]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-28]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-20]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-12]
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
	str r0, [fp, #-80]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-84]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-88]
	mov r0, #0
	bl putint
	mov r0, r4
	bl putint
	mov r0, r5
	bl putint
	mov r0, r6
	bl putint
	mov r0, r7
	bl putint
	mov r0, r8
	bl putint
	mov r0, r9
	bl putint
	mov r0, r10
	bl putint
	ldr r0, [fp, #-24]
	bl putint
	ldr r0, [fp, #-16]
	bl putint
	ldr r0, [fp, #-8]
	bl putint
	ldr r0, [fp, #-4]
	bl putint
	ldr r0, [fp, #-68]
	bl putint
	ldr r0, [fp, #-72]
	bl putint
	ldr r0, [fp, #-48]
	bl putint
	ldr r0, [fp, #-76]
	bl putint
	ldr r0, [fp, #-44]
	bl putint
	ldr r0, [fp, #-40]
	bl putint
	ldr r0, [fp, #-36]
	bl putint
	ldr r0, [fp, #-32]
	bl putint
	ldr r0, [fp, #-28]
	bl putint
	ldr r0, [fp, #-20]
	bl putint
	ldr r0, [fp, #-12]
	bl putint
	ldr r0, [fp, #-52]
	bl putint
	ldr r0, [fp, #-56]
	bl putint
	ldr r0, [fp, #-60]
	bl putint
	ldr r0, [fp, #-64]
	bl putint
	ldr r0, [fp, #-80]
	bl putint
	ldr r0, [fp, #-84]
	bl putint
	ldr r0, [fp, #-88]
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-92]
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-60]
	add sp, sp, #96
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L201:
	str r2, [fp, #-92]
	b .L198
.L206:
	str r0, [fp, #-92]
	b .L198
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L247:
	mov r1, r0
	b .L197

addr_n1:
	.word n
	.ident "ZWJM"
