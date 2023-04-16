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
	push {r3, r4, fp, lr}
	mov fp, sp
.L90:
	ldr r1, addr_sum0
	ldr r1, [r1]
	add r2, r1, #1
	ldr r1, addr_sum0
	str r2, [r1]
	b .L92
.L92:
	ldr r1, addr_n0
	ldr r2, [r1]
	ldr r1, =1
	mov r4, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L93
	b .L97
.L93:
	ldr r1, addr_ans0
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	bl putint
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	beq .L99
	b .L104
.L94:
	pop {r3, r4, fp, lr}
	bx lr
.L97:
	ldr r1, =1
	b .L94
.L99:
	mov r0, #10
	bl putch
	pop {r3, r4, fp, lr}
	bx lr
.L100:
	mov r0, #32
	bl putch
	b .L101
.L101:
	add r2, r4, #1
	ldr r1, addr_n0
	ldr r1, [r1]
	mov r4, r2
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L93
	b .L110
.L104:
	b .L100
.L110:
	b .L94

	.global f
	.type f , %function
f:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-4]
	b .L114
.L114:
	ldr r1, addr_n0
	ldr r2, [r1]
	ldr r1, =1
	mov r4, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L115
	b .L119
.L115:
	ldr r2, addr_row0
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	cmp r1, #1
	movne r1, #1
	moveq r1, #0
	bne .L123
	b .L127
.L116:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L119:
	ldr r1, =1
	b .L116
.L120:
	ldr r2, [fp, #-4]
	ldr r1, addr_ans0
	mov r0, #4
	mla r0, r2, r0, r1
	str r4, [r0]
	ldr r1, [fp, #-4]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L137
	b .L141
.L121:
	add r2, r4, #1
	ldr r1, addr_n0
	ldr r1, [r1]
	mov r4, r2
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L115
	b .L147
.L122:
	ldr r1, addr_n0
	ldr r2, [r1]
	ldr r1, [fp, #-4]
	add r1, r2, r1
	sub r1, r1, r4
	ldr r3, addr_line20
	mov r2, #4
	mla r1, r1, r2, r3
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L120
	b .L135
.L123:
	ldr r1, [fp, #-4]
	add r3, r1, r4
	ldr r2, addr_line10
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
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
	ldr r1, addr_row0
	mov r0, #4
	mla r1, r4, r0, r1
	ldr r0, =1
	str r0, [r1]
	ldr r0, [fp, #-4]
	add r2, r0, r4
	ldr r1, addr_line10
	mov r0, #4
	mla r6, r2, r0, r1
	ldr r0, =1
	str r0, [r6]
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	sub r2, r0, r4
	ldr r1, addr_line20
	mov r0, #4
	mla r5, r2, r0, r1
	ldr r0, =1
	str r0, [r5]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	bl f
	ldr r2, addr_row0
	mov r1, #4
	mla r2, r4, r1, r2
	ldr r1, =0
	str r1, [r2]
	ldr r1, [fp, #-4]
	ldr r1, =0
	str r1, [r6]
	ldr r1, addr_n0
	ldr r1, [r1]
	ldr r1, [fp, #-4]
	ldr r1, =0
	str r1, [r5]
	b .L121
.L141:
	b .L138
.L147:
	b .L116

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L148:
	bl getint
	b .L150
.L150:
	mov r4, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L151
	b .L155
.L151:
	bl getint
	mov r1, r0
	ldr r0, addr_n0
	str r1, [r0]
	mov r0, #1
	bl f
	sub r1, r4, #1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L184
	b .L160
.L152:
	ldr r0, addr_sum0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr
.L155:
	b .L152
.L160:
	b .L152
.L184:
	mov r4, r1
	b .L151

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
	.ident "ZWJM"
