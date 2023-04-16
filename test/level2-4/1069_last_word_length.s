	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global lengthOfLastWord
	.type lengthOfLastWord , %function
lengthOfLastWord:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L68:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L71
	b .L75
.L71:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L72:
	ldr r0, [fp, #-8]
	sub r2, r0, #1
	b .L77
.L75:
	b .L72
.L77:
	ldr r0, =0
	sub r1, r0, #1
	mov r0, r2
	cmp r2, r1
	movgt r1, #1
	movle r1, #0
	bgt .L96
	b .L83
.L78:
	sub r2, r0, #1
	ldr r0, =0
	sub r1, r0, #1
	mov r0, r2
	cmp r2, r1
	movgt r1, #1
	movle r1, #0
	bgt .L96
	b .L99
.L79:
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L105
	b .L109
.L83:
	mov r1, r2
	b .L79
.L96:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	ldr r1, [r1]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	beq .L78
	b .L104
.L99:
	mov r1, r2
	b .L79
.L104:
	mov r1, r0
	b .L79
.L105:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L106:
	b .L111
.L109:
	b .L106
.L111:
	ldr r0, =0
	sub r2, r0, #1
	mov r0, r1
	cmp r1, r2
	movgt r2, #1
	movle r2, #0
	bgt .L112
	b .L116
.L112:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r0, r2, r3
	ldr r2, [r2]
	cmp r2, #0
	moveq r2, #1
	movne r2, #0
	beq .L117
	b .L123
.L113:
	sub r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L116:
	mov r0, r1
	b .L113
.L117:
	ldr r2, [fp, #-8]
	sub r0, r2, r0
	sub r2, r0, #1
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	sub r0, r0, r1
	sub r0, r2, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L118:
	sub r3, r0, #1
	ldr r0, =0
	sub r2, r0, #1
	mov r0, r3
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L112
	b .L129
.L123:
	b .L118
.L129:
	mov r0, r3
	b .L113

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L130:
	ldr r0, =0
	sub r3, r0, #4
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	str r3, [r1]
	mov r2, #1
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =3
	str r0, [r2]
	mov r2, #2
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =9
	str r0, [r2]
	ldr r0, =0
	sub r0, r0, #2
	mov r3, #3
	mov r4, #-40
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	mov r2, #4
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =0
	str r0, [r2]
	mov r2, #5
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =1
	str r0, [r2]
	ldr r0, =0
	sub r2, r0, #6
	mov r3, #6
	mov r4, #-40
	mov r0, #4
	mul r0, r3, r0
	add r3, fp, r4
	add r0, r3, r0
	str r2, [r0]
	mov r2, #7
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =5
	str r0, [r2]
	mov r2, #8
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =7
	str r0, [r2]
	mov r2, #9
	mov r3, #-40
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =8
	str r0, [r2]
	mov r0, r1
	mov r1, #10
	bl lengthOfLastWord
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
