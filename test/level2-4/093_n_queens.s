	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global sum
	.align 4
	.size sum, 4
sum:
	.word 0
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.comm ans, 200, 4
	.comm row, 200, 4
	.comm line1, 200, 4
	.comm line2, 400, 4
	.text
	.global printans
	.type printans , %function
printans:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L90:
	ldr r4, addr_sum0
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_sum0
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L92
.L92:
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L93
	b .L97
.L93:
	ldr r4, [fp, #-4]
	ldr r5, addr_ans0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L99
	b .L104
.L94:
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L97:
	b .L94
.L99:
	mov r0, #10
	bl putch
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L100:
	mov r0, #32
	bl putch
	b .L101
.L101:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L93
	b .L110
.L104:
	b .L100
.L110:
	b .L94

	.global f
	.type f , %function
f:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-4]
	ldr r4, =1
	str r4, [fp, #-8]
	b .L114
.L114:
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L115
	b .L119
.L115:
	ldr r4, [fp, #-8]
	ldr r5, addr_row0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	cmp r4, #1
	movne r4, #1
	moveq r4, #0
	bne .L123
	b .L127
.L116:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L119:
	b .L116
.L120:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, addr_ans0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L137
	b .L141
.L121:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L115
	b .L147
.L122:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	sub r5, r6, r4
	ldr r4, addr_line20
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L120
	b .L135
.L123:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, addr_line10
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L122
	b .L131
.L127:
	b .L121
.L131:
	b .L121
.L135:
	b .L121
.L137:
	bl printans
	b .L138
.L138:
	ldr r4, [fp, #-8]
	ldr r5, addr_row0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =1
	str r4, [r5]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, addr_line10
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	mov r4, r5
	ldr r5, =1
	str r5, [r4]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	sub r5, r6, r4
	ldr r4, addr_line20
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, =1
	str r5, [r4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	mov r0, r5
	bl f
	ldr r4, [fp, #-8]
	ldr r5, addr_row0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, addr_line10
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	mov r4, r5
	ldr r5, =0
	str r5, [r4]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	sub r5, r6, r4
	ldr r4, addr_line20
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, =0
	str r5, [r4]
	b .L121
	b .F0
.LTORG
addr_ans0:
	.word ans
addr_sum0:
	.word sum
addr_n0:
	.word n
addr_row0:
	.word row
addr_line10:
	.word line1
addr_line20:
	.word line2
.F0:
.L141:
	b .L138
.L147:
	b .L116

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L148:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L150
.L150:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L151
	b .L155
.L151:
	bl getint
	mov r4, r0
	ldr r5, addr_n1
	str r4, [r5]
	mov r0, #1
	bl f
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L151
	b .L160
.L152:
	ldr r4, addr_sum1
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L155:
	b .L152
.L160:
	b .L152

addr_ans1:
	.word ans
addr_sum1:
	.word sum
addr_n1:
	.word n
addr_row1:
	.word row
addr_line11:
	.word line1
addr_line21:
	.word line2
