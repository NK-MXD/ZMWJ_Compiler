	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global s
	.align 4
	.size s, 4
s:
	.word 0
	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L190:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L195
	b .L199
.L195:
	ldr r0, =1
	b .L196
.L196:
	ldr r1, [fp, #-4]
	add r1, r1, r1
	str r1, [fp, #-4]
	mov r1, r1
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, addr_s0
	ldr r0, [r0]
	ldr r1, [fp, #-4]
	add r0, r0, r1
	ldr r1, addr_s0
	str r0, [r1]
	ldr r0, [fp, #-4]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L199:
	ldr r0, =0
	b .L196

	.global get_ans
	.type get_ans , %function
get_ans:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L200:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L205
	b .L209
.L205:
	ldr r0, =1
	mov r1, r0
	b .L206
.L206:
	ldr r0, [fp, #-4]
	add r0, r0, r0
	str r0, [fp, #-4]
	mov r0, r0
	add r0, r0, r1
	str r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L209:
	ldr r0, =0
	mov r1, r0
	b .L206

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L210:
	ldr r1, =0
	ldr r0, =-2147483648
	sub r4, r1, r0
	ldr r0, =-2147483648
	add r5, r0, #1
	ldr r0, =2147483647
	sub r8, r0, #1
	mov r0, #0
	mov r1, r4
	mov r2, #-2147483648
	bl get_ans
	mov r1, r0
	add r0, r4, #1
	str r0, [fp, #-8]
	mov r0, r1
	ldr r1, [fp, #-8]
	mov r2, r5
	bl get_ans
	ldr r2, =0
	ldr r1, =2147483647
	sub r1, r2, r1
	sub r7, r1, #1
	mov r1, r4
	mov r2, r7
	bl get_ans
	add r6, r8, #1
	mov r1, r4
	mov r2, r6
	bl get_ans
	mov r2, r0
	ldr r0, =-2147483648
	ldr r1, =2
	sdiv r9, r0, r1
	ldr r0, =2
	sdiv r0, r5, r0
	str r0, [fp, #-4]
	mov r0, r2
	mov r1, r9
	ldr r2, [fp, #-4]
	bl get_ans
	mov r1, #-2147483648
	mov r2, r7
	bl get_ans
	mov r1, #-2147483648
	mov r2, r6
	bl get_ans
	str r0, [fp, #-12]
	mov r0, #0
	mov r1, r5
	ldr r2, =2147483647
	bl get_ans
	mov r1, r5
	mov r2, r8
	bl get_ans
	ldr r1, =2147483647
	mov r2, r8
	bl get_ans
	mov r1, r0
	ldr r0, =2
	sdiv r10, r4, r0
	mov r0, r1
	mov r1, r10
	mov r2, r9
	bl get_ans
	str r0, [fp, #-16]
	mov r0, #0
	mov r1, r4
	mov r2, #-2147483648
	bl get_ans_se
	ldr r1, [fp, #-8]
	mov r2, r5
	bl get_ans_se
	mov r1, r4
	mov r2, r7
	bl get_ans_se
	mov r1, r4
	mov r2, r6
	bl get_ans_se
	mov r1, r9
	ldr r2, [fp, #-4]
	bl get_ans_se
	mov r1, #-2147483648
	mov r2, r7
	bl get_ans_se
	mov r1, #-2147483648
	mov r2, r6
	bl get_ans_se
	mov r4, r0
	mov r0, #0
	mov r1, r5
	ldr r2, =2147483647
	bl get_ans_se
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	ldr r1, =2147483647
	mov r2, r8
	bl get_ans_se
	mov r1, r10
	mov r2, r9
	bl get_ans_se
	mov r2, r0
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	add r0, r0, r4
	add r0, r0, r2
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_s0:
	.word s
	.ident "ZWJM"
