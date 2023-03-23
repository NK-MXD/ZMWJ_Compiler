	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global lengthOfLastWord
	.type lengthOfLastWord , %function
lengthOfLastWord:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L71
	b .L75
.L71:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L72:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-12]
	b .L77
.L75:
	b .L72
.L77:
	ldr r4, [fp, #-12]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L96
	b .L83
.L78:
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L96
	b .L99
.L79:
	ldr r4, [fp, #-12]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L105
	b .L109
.L83:
	b .L79
.L96:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L78
	b .L104
.L99:
	b .L79
.L104:
	b .L79
.L105:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L106:
	ldr r4, [fp, #-12]
	str r4, [fp, #-16]
	b .L111
.L109:
	b .L106
.L111:
	ldr r4, [fp, #-16]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L112
	b .L116
.L112:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L117
	b .L123
.L113:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L116:
	b .L113
.L117:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	sub r6, r4, r5
	sub r4, r6, #1
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	ldr r5, [fp, #-12]
	sub r7, r6, r5
	sub r5, r4, r7
	mov r0, r5
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L118:
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L112
	b .L129
.L123:
	b .L118
.L129:
	b .L113

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L130:
	ldr r4, =0
	sub r5, r4, #4
	mov r4, #0
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #1
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
	str r4, [r5]
	mov r4, #2
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =9
	str r4, [r5]
	ldr r4, =0
	sub r5, r4, #2
	mov r4, #3
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #4
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	mov r4, #5
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	ldr r4, =0
	sub r5, r4, #6
	mov r4, #6
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	mov r4, #7
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =5
	str r4, [r5]
	mov r4, #8
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #9
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	ldr r4, =10
	str r4, [fp, #-4]
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r4
	bl lengthOfLastWord
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #48
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
