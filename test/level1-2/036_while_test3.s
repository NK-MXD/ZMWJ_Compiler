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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L93:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =6
	str r0, [fp, #-8]
	ldr r0, =7
	str r0, [fp, #-12]
	ldr r0, =10
	str r0, [fp, #-16]
	b .L98
.L98:
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L103
.L99:
	ldr r0, [fp, #-4]
	add r0, r0, #3
	str r0, [fp, #-4]
	b .L104
.L100:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-12]
	add r0, r1, r0
	ldr r1, addr_e0
	ldr r2, [r1]
	ldr r1, [fp, #-16]
	add r2, r2, r1
	ldr r1, addr_g0
	ldr r1, [r1]
	sub r2, r2, r1
	ldr r1, addr_h0
	ldr r1, [r1]
	add r1, r2, r1
	sub r0, r0, r1
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L103:
	b .L100
.L104:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L105
	b .L109
.L105:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L110
.L106:
	ldr r0, [fp, #-8]
	sub r0, r0, #2
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L185
.L109:
	b .L106
.L110:
	ldr r0, [fp, #-12]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L111
	b .L115
.L111:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L116
.L112:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L105
	b .L180
.L115:
	b .L112
.L116:
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L117
	b .L121
.L117:
	ldr r0, [fp, #-16]
	add r0, r0, #3
	str r0, [fp, #-16]
	b .L122
.L118:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L111
	b .L175
.L121:
	b .L118
.L122:
	ldr r0, addr_e0
	ldr r0, [r0]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L123
	b .L127
.L123:
	ldr r0, addr_e0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_e0
	str r1, [r0]
	b .L128
.L124:
	ldr r0, addr_e0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_e0
	str r1, [r0]
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L117
	b .L170
.L127:
	b .L124
.L128:
	ldr r0, addr_f0
	ldr r0, [r0]
	cmp r0, #2
	movgt r0, #1
	movle r0, #0
	bgt .L129
	b .L133
.L129:
	ldr r0, addr_f0
	ldr r0, [r0]
	sub r1, r0, #2
	ldr r0, addr_f0
	str r1, [r0]
	b .L134
.L130:
	ldr r0, addr_f0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_f0
	str r1, [r0]
	ldr r0, addr_e0
	ldr r0, [r0]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L123
	b .L165
.L133:
	b .L130
.L134:
	ldr r0, addr_g0
	ldr r0, [r0]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L135
	b .L139
.L135:
	ldr r0, addr_g0
	ldr r0, [r0]
	add r1, r0, #10
	ldr r0, addr_g0
	str r1, [r0]
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
	ldr r0, addr_g1
	ldr r0, [r0]
	sub r1, r0, #8
	ldr r0, addr_g1
	str r1, [r0]
	ldr r0, addr_f1
	ldr r0, [r0]
	cmp r0, #2
	movgt r0, #1
	movle r0, #0
	bgt .L129
	b .L160
.L139:
	b .L136
.L140:
	ldr r0, addr_h1
	ldr r0, [r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L141
	b .L145
.L141:
	ldr r0, addr_h1
	ldr r0, [r0]
	add r1, r0, #8
	ldr r0, addr_h1
	str r1, [r0]
	ldr r0, addr_h1
	ldr r0, [r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L141
	b .L150
.L142:
	ldr r0, addr_h1
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_h1
	str r1, [r0]
	ldr r0, addr_g1
	ldr r0, [r0]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
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
	b .L112
.L180:
	b .L106
.L185:
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
