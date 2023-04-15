	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L76:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r0, =0
	str r0, [fp, #-40]
	b .L87
.L87:
	ldr r0, [fp, #-40]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L92
.L88:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, #236
	mla r2, r1, r0, r2
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	ldr r0, [fp, #-40]
	add r0, r0, #1
	str r0, [fp, #-40]
	b .L87
.L89:
	mov r0, #10
	bl putch
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	b .L98
.L92:
	b .L89
.L98:
	ldr r0, [fp, #-36]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L103
.L99:
	ldr r1, [fp, #-32]
	ldr r0, =128875
	mul r2, r1, r0
	ldr r1, =3724
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-36]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-36]
	add r0, r0, #1
	str r0, [fp, #-36]
	ldr r0, [fp, #-32]
	add r0, r0, #7
	str r0, [fp, #-32]
	b .L98
.L100:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-24]
	add r0, r1, r0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L103:
	b .L100

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =28864
	sub sp, sp, r4
.L105:
	ldr r0, =-16348
	add r0, fp, r0
	mov r1, #0
	ldr r2, =16348
	bl memset
	ldr r0, =-28856
	add r0, fp, r0
	mov r1, #0
	ldr r2, =12508
	bl memset
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =6
	str r0, [r1]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #3
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =7
	str r0, [r1]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #4
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =4
	str r0, [r1]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #7
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =9
	str r0, [r1]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #11
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =11
	str r0, [r1]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #2
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =2
	str r0, [r1]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #3
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =3
	str r0, [r1]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #9
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =9
	str r0, [r1]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	mov r1, #0
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r9, r0, r1
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #3
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r10, [r0]
	mov r1, #17
	ldr r2, =-16348
	ldr r0, =268
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =-28864
	str r1, [fp, r0]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #3
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r8, [r0]
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r0, r2, r1, r0
	ldr r7, [r0]
	mov r2, #6
	ldr r0, =-28856
	mov r1, #236
	mul r1, r2, r1
	add r0, fp, r0
	add r0, r0, r1
	mov r2, #0
	mov r1, #4
	mla r6, r2, r1, r0
	mov r1, #34
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #4
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r5, [r0]
	mov r1, #51
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r2, #18
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r4, [r0]
	mov r0, r3
	mov r1, r9
	mov r2, r10
	ldr r3, =-28864
	ldr r3, [fp, r3]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	bl func
	add sp, sp, #20
	mov r1, r0
	ldr r0, =3
	mul r1, r1, r0
	ldr r0, =-28860
	str r1, [fp, r0]
	b .L136
	b .F0
.LTORG
.F0:
.L136:
	ldr r0, =-28860
	ldr r0, [fp, r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L137
	b .L141
.L137:
	mov r1, #6
	ldr r2, =-28856
	mov r0, #236
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, =-28860
	ldr r1, [fp, r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, =-28860
	ldr r0, [fp, r0]
	sub r1, r0, #1
	ldr r0, =-28860
	str r1, [fp, r0]
	b .L136
.L138:
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =28864
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L141:
	b .L138

	.ident "ZWJM"
