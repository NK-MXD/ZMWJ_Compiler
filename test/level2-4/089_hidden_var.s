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
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #220
.L36:
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, =2
	str r4, [fp, #-8]
	ldr r4, =3
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L39
.L39:
	ldr r4, [fp, #-4]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L40
	b .L44
.L40:
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L46
	b .L49
.L41:
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #2
	ldr r5, addr_c0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =1
	str r4, [r5]
	add r0, fp, #-76
	mov r1, #0
	mov r2, #64
	bl memset
	mov r4, #0
	mov r5, #-76
	mov r6, #32
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #28
	ldr r4, =8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	ldr r4, =2
	str r4, [fp, #-80]
	mov r4, #2
	ldr r5, addr_c0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L92
	b .L96
.L44:
	b .L41
.L46:
	b .L41
.L47:
	ldr r4, [fp, #-4]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
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
	mov r4, #2
	mov r5, #-220
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #20
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =8
	str r4, [r5]
	ldr r4, [fp, #-80]
	mov r5, #-220
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #20
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-80]
	mov r5, #-220
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #20
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-80]
	mov r5, #-220
	mov r6, #20
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #20
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L93
	b .F0
.LTORG
addr_b0:
	.word b
addr_c0:
	.word c
.F0:
.L93:
	mov r0, #10
	bl putch
	ldr r4, addr_b1
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r4, #0
	ldr r5, addr_c1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r4, #1
	ldr r5, addr_c1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r4, #2
	ldr r5, addr_c1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r4, #3
	ldr r5, addr_c1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #220
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L96:
	b .L93

addr_b1:
	.word b
addr_c1:
	.word c
