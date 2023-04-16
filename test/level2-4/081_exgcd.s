	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global exgcd
	.type exgcd , %function
exgcd:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L52:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r0, [fp, #-8]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L62
.L57:
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	ldr r2, [fp, #-16]
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =0
	str r0, [r1]
	ldr r0, [fp, #-4]
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L58:
	ldr r0, [fp, #-8]
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r1, r3, r1
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	bl exgcd
	mov r3, r0
	ldr r2, [fp, #-12]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, [fp, #-16]
	mov r5, #0
	mov r4, #4
	mla r4, r5, r4, r0
	ldr r6, [r4]
	mov r5, #0
	mov r4, #4
	mla r2, r5, r4, r2
	str r6, [r2]
	ldr r4, [fp, #-4]
	ldr r2, [fp, #-8]
	sdiv r5, r4, r2
	mov r4, #0
	mov r2, #4
	mla r2, r4, r2, r0
	ldr r0, [r2]
	mul r0, r5, r0
	sub r0, r1, r0
	str r0, [r2]
	mov r0, r3
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L62:
	b .L58

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L77:
	mov r1, #0
	mov r2, #-4
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	ldr r0, =1
	str r0, [r4]
	mov r1, #0
	mov r2, #-8
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	ldr r0, =1
	str r0, [r3]
	mov r0, #7
	mov r1, #15
	mov r2, r4
	bl exgcd
	ldr r2, [r4]
	ldr r1, =15
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	add r2, r0, #15
	ldr r1, =15
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [r4]
	mov r0, r0
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
