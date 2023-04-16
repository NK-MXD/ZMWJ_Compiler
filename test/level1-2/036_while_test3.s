	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.global h
	.align 4
	.size h, 4
h:
	.word 0
	.global f
	.align 4
	.size f, 4
f:
	.word 0
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L93:
	b .L98
.L98:
	ldr r0, =10
	mov r2, r0
	ldr r0, =7
	mov r6, r0
	ldr r0, =6
	mov r5, r0
	ldr r0, =5
	mov r8, r0
	ldr r0, =5
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L103
.L99:
	add r3, r8, #3
	b .L104
.L100:
	add r2, r2, r0
	add r1, r1, r2
	add r1, r1, r4
	ldr r2, addr_e0
	ldr r2, [r2]
	add r2, r2, r0
	ldr r0, addr_g0
	ldr r0, [r0]
	sub r2, r2, r0
	ldr r0, addr_h0
	ldr r0, [r0]
	add r0, r2, r0
	sub r0, r1, r0
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L103:
	ldr r0, =10
	ldr r1, =7
	mov r4, r1
	ldr r1, =6
	mov r2, r1
	ldr r1, =5
	b .L100
.L104:
	mov r4, r2
	mov r1, r6
	mov r0, r5
	cmp r5, #10
	movlt r7, #1
	movge r7, #0
	blt .L105
	b .L109
.L105:
	add r2, r0, #1
	b .L110
.L106:
	sub r7, r0, #2
	mov r2, r4
	mov r6, r1
	mov r5, r7
	mov r8, r3
	cmp r3, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L185
.L109:
	mov r4, r2
	mov r1, r6
	mov r0, r5
	b .L106
.L110:
	mov r0, r4
	mov r6, r1
	cmp r1, #7
	moveq r5, #1
	movne r5, #0
	beq .L111
	b .L115
.L111:
	sub r1, r6, #1
	b .L116
.L112:
	add r7, r0, #1
	mov r4, r5
	mov r1, r7
	mov r0, r2
	cmp r2, #10
	movlt r6, #1
	movge r6, #0
	blt .L105
	b .L180
.L115:
	mov r5, r4
	mov r0, r1
	b .L112
.L116:
	mov r5, r0
	cmp r0, #20
	movlt r4, #1
	movge r4, #0
	blt .L117
	b .L121
.L117:
	add r0, r5, #3
	b .L122
.L118:
	sub r5, r0, #1
	mov r0, r5
	mov r6, r1
	cmp r1, #7
	moveq r4, #1
	movne r4, #0
	beq .L111
	b .L175
.L121:
	b .L118
.L122:
	ldr r4, addr_e0
	ldr r4, [r4]
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L123
	b .L127
.L123:
	ldr r4, addr_e0
	ldr r4, [r4]
	sub r5, r4, #1
	ldr r4, addr_e0
	str r5, [r4]
	b .L128
.L124:
	ldr r4, addr_e0
	ldr r4, [r4]
	add r5, r4, #1
	ldr r4, addr_e0
	str r5, [r4]
	mov r5, r0
	cmp r0, #20
	movlt r4, #1
	movge r4, #0
	blt .L117
	b .L170
.L127:
	b .L124
.L128:
	ldr r4, addr_f0
	ldr r4, [r4]
	cmp r4, #2
	movgt r4, #1
	movle r4, #0
	bgt .L129
	b .L133
.L129:
	ldr r4, addr_f0
	ldr r4, [r4]
	sub r5, r4, #2
	ldr r4, addr_f0
	str r5, [r4]
	b .L134
.L130:
	ldr r4, addr_f0
	ldr r4, [r4]
	add r5, r4, #1
	ldr r4, addr_f0
	str r5, [r4]
	ldr r4, addr_e0
	ldr r4, [r4]
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L123
	b .L165
.L133:
	b .L130
.L134:
	ldr r4, addr_g0
	ldr r4, [r4]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L135
	b .L139
.L135:
	ldr r4, addr_g0
	ldr r4, [r4]
	add r5, r4, #10
	ldr r4, addr_g0
	str r5, [r4]
	b .L140
	b .F0
.LTORG
addr_g0:
	.word g
addr_h0:
	.word h
addr_f0:
	.word f
addr_e0:
	.word e
.F0:
.L136:
	ldr r4, addr_g1
	ldr r4, [r4]
	sub r5, r4, #8
	ldr r4, addr_g1
	str r5, [r4]
	ldr r4, addr_f1
	ldr r4, [r4]
	cmp r4, #2
	movgt r4, #1
	movle r4, #0
	bgt .L129
	b .L160
.L139:
	b .L136
.L140:
	ldr r4, addr_h1
	ldr r4, [r4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L141
	b .L145
.L141:
	ldr r4, addr_h1
	ldr r4, [r4]
	add r5, r4, #8
	ldr r4, addr_h1
	str r5, [r4]
	ldr r4, addr_h1
	ldr r4, [r4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L141
	b .L150
.L142:
	ldr r4, addr_h1
	ldr r4, [r4]
	sub r5, r4, #1
	ldr r4, addr_h1
	str r5, [r4]
	ldr r4, addr_g1
	ldr r4, [r4]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L135
	b .L155
.L145:
	b .L142
.L150:
	b .L142
.L155:
	b .L136
.L160:
	b .L130
.L165:
	b .L124
.L170:
	b .L118
.L175:
	mov r0, r1
	b .L112
.L180:
	mov r4, r5
	mov r1, r7
	mov r0, r2
	b .L106
.L185:
	mov r0, r4
	mov r4, r1
	mov r2, r7
	mov r1, r3
	b .L100

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L186:
	ldr r1, =1
	ldr r0, addr_g1
	str r1, [r0]
	ldr r1, =2
	ldr r0, addr_h1
	str r1, [r0]
	ldr r1, =4
	ldr r0, addr_e1
	str r1, [r0]
	ldr r1, =6
	ldr r0, addr_f1
	str r1, [r0]
	bl EightWhile
	pop {r3, r4, fp, lr}
	bx lr

addr_g1:
	.word g
addr_h1:
	.word h
addr_f1:
	.word f
addr_e1:
	.word e
	.ident "ZWJM"
