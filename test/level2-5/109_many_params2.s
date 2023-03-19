	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L76:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #28]
	str r3, [fp, #-20]
	ldr r3, [fp, #32]
	str r3, [fp, #-24]
	ldr r3, [fp, #36]
	str r3, [fp, #-28]
	ldr r3, [fp, #40]
	str r3, [fp, #-32]
	ldr r3, [fp, #44]
	str r3, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-40]
	b .L87
.L87:
	ldr r4, [fp, #-40]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L88
	b .L92
.L88:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r6, #236
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-40]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	bl putint
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-40]
	ldr r4, [fp, #-40]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L88
	b .L100
.L89:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L103
.L92:
	b .L89
.L100:
	b .L89
.L103:
	ldr r4, [fp, #-36]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L104
	b .L108
.L104:
	ldr r4, [fp, #-32]
	ldr r5, =128875
	mul r6, r4, r5
	ldr r4, =3724
	sdiv r5, r6, r4
	mul r7, r5, r4
	sub r4, r6, r7
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-36]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-36]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r4, [fp, #-32]
	add r5, r4, #7
	str r5, [fp, #-32]
	ldr r4, [fp, #-36]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L104
	b .L114
.L105:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-24]
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L108:
	b .L105
.L114:
	b .L105

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =28880
	sub sp, sp, r4
.L115:
	ldr r4, =-16348
	add r0, fp, r4
	mov r1, #0
	ldr r4, =16348
	mov r2, r4
	bl memset
	ldr r4, =-28856
	add r0, fp, r4
	mov r1, #0
	ldr r4, =12508
	mov r2, r4
	bl memset
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =6
	str r5, [r4]
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #3
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =7
	str r5, [r4]
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #4
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =4
	str r5, [r4]
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #7
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =9
	str r5, [r4]
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #11
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =11
	str r5, [r4]
	mov r4, #6
	ldr r5, =-28856
	mov r6, #236
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	mov r4, #6
	ldr r5, =-28856
	mov r6, #236
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #2
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =2
	str r5, [r4]
	mov r4, #6
	ldr r5, =-28856
	mov r6, #236
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #3
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =3
	str r5, [r4]
	mov r4, #6
	ldr r5, =-28856
	mov r6, #236
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #9
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =9
	str r5, [r4]
	mov r4, #17
	ldr r5, =-16348
	ldr r6, =268
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #0
	ldr r6, =-28856
	mov r7, #236
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #17
	ldr r7, =-16348
	ldr r8, =268
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r4, #3
	mov r8, #4
	mul r9, r4, r8
	add r4, r7, r9
	ldr r7, [r4]
	mov r4, #17
	ldr r8, =-16348
	ldr r9, =268
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #0
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, =-28864
	str r4, [fp, r8]
	mov r4, #6
	ldr r8, =-28856
	mov r9, #236
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #3
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, [r4]
	ldr r4, =-28868
	str r8, [fp, r4]
	mov r4, #6
	ldr r8, =-28856
	mov r9, #236
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #0
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, [r4]
	ldr r4, =-28872
	str r8, [fp, r4]
	mov r4, #6
	ldr r8, =-28856
	mov r9, #236
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #0
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, =-28876
	str r4, [fp, r8]
	mov r4, #34
	ldr r8, =-28856
	mov r9, #236
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #4
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, [r4]
	ldr r4, =-28880
	str r8, [fp, r4]
	mov r4, #51
	ldr r8, =-28856
	mov r9, #236
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r4, #18
	mov r9, #4
	mul r10, r4, r9
	add r4, r8, r10
	ldr r8, [r4]
	mov r0, r5
	mov r1, r6
	mov r2, r7
	ldr r4, =-28864
	ldr r5, [fp, r4]
	mov r3, r5
	push {r8}
	ldr r4, =-28880
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-28876
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-28872
	ldr r5, [fp, r4]
	push {r5}
	ldr r4, =-28868
	ldr r5, [fp, r4]
	push {r5}
	bl func
	add sp, sp, #20
	mov r4, r0
	ldr r5, =3
	mul r6, r4, r5
	ldr r4, =-28860
	str r6, [fp, r4]
	b .L14574
	b .F0
.LTORG
.F0:
.L14574:
	ldr r5, =-28860
	ldr r4, [fp, r5]
	cmp r4, #0
	movge r4, #1
	movlt r4, #0
	bge .L14575
	b .L14579
.L14575:
	mov r4, #6
	ldr r5, =-28856
	mov r6, #236
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r6, =-28860
	ldr r4, [fp, r6]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r5, =-28860
	ldr r4, [fp, r5]
	sub r5, r4, #1
	ldr r4, =-28860
	str r5, [fp, r4]
	ldr r4, =-28860
	ldr r5, [fp, r4]
	cmp r5, #0
	movge r4, #1
	movlt r4, #0
	bge .L14575
	b .L14586
.L14576:
	mov r0, #10
	bl putch
	mov r0, #0
	ldr r1, =28880
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L14579:
	b .L14576
.L14586:
	b .L14576

