	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.global c
	.align 4
	.size c, 16
c:
	.word 6
	.word 7
	.word 8
	.word 9
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #224
.L36:
	ldr r0, =1
	str r0, [fp, #-4]
	ldr r0, =2
	str r0, [fp, #-8]
	ldr r0, =3
	str r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	bl putint
	ldr r0, [fp, #-4]
	bl putint
	mov r0, #10
	bl putch
	b .L39
.L39:
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L44
.L40:
	ldr r0, =0
	str r0, [fp, #-12]
	mov r0, r0
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L46
	b .L49
.L41:
	ldr r0, [fp, #-4]
	bl putint
	mov r0, #10
	bl putch
	mov r2, #2
	ldr r1, addr_c0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =1
	str r0, [r1]
	add r0, fp, #-76
	mov r1, #0
	mov r2, #64
	bl memset
	mov r1, #0
	mov r2, #-76
	mov r0, #32
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #28
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	ldr r0, =2
	str r0, [fp, #-80]
	mov r2, #2
	ldr r1, addr_c0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L92
	b .L96
.L44:
	b .L41
.L46:
	b .L41
.L47:
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L56
.L49:
	b .L47
.L56:
	b .L41
.L92:
	add r0, fp, #-220
	mov r1, #0
	mov r2, #140
	bl memset
	mov r1, #2
	mov r2, #-220
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	ldr r1, [fp, #-80]
	mov r2, #-220
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	ldr r1, [fp, #-80]
	mov r2, #-220
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	ldr r1, [fp, #-80]
	mov r2, #-220
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #20
	mla r2, r1, r0, r2
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	b .L93
.L93:
	mov r0, #10
	bl putch
	ldr r0, addr_b0
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	mov r2, #0
	ldr r1, addr_c0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r2, #1
	ldr r1, addr_c0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r2, #2
	ldr r1, addr_c0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r2, #3
	ldr r1, addr_c0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #224
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
addr_b0:
	.word b
addr_c0:
	.word c
.F0:
.L96:
	b .L93

addr_b1:
	.word b
addr_c1:
	.word c
	.ident "ZWJM"
