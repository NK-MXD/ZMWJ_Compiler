	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L121:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_a0
	str r4, [r5]
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L123:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_b0
	str r4, [r5]
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L125:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_d0
	str r4, [r5]
	ldr r4, addr_d0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L127:
	ldr r4, =2
	ldr r5, addr_a0
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_b0
	str r4, [r5]
	mov r0, #0
	bl set_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L130
	b .L132
.L128:
	b .L129
.L129:
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, =2
	ldr r5, addr_a0
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_b0
	str r4, [r5]
	mov r0, #0
	bl set_a
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L139
	b .L141
.L130:
	mov r0, #1
	bl set_b
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L128
	b .L135
.L132:
	b .L129
.L135:
	b .L129
.L137:
	b .L138
.L138:
	ldr r4, addr_a0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_b0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, =2
	ldr r5, addr_d0
	str r4, [r5]
	ldr r4, [fp, #-4]
	cmp r4, #1
	movge r4, #1
	movlt r4, #0
	bge .L149
	b .L152
.L139:
	mov r0, #1
	bl set_b
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L137
	b .L144
.L141:
	b .L138
.L144:
	b .L138
.L147:
	b .L148
.L148:
	ldr r4, addr_d0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-4]
	cmp r4, #1
	movle r4, #1
	movgt r4, #0
	ble .L156
	b .L161
.L149:
	mov r0, #3
	bl set_d
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L147
	b .L154
.L152:
	b .L148
.L154:
	b .L148
.L156:
	b .L157
.L157:
	ldr r4, addr_d0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r4, =2
	add r5, r4, #1
	ldr r4, =3
	sub r6, r4, r5
	ldr r4, =16
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
	bge .L165
	b .L169
.L158:
	mov r0, #4
	bl set_d
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L156
	b .L163
.L161:
	b .L158
.L163:
	b .L157
.L165:
	mov r0, #65
	bl putch
	b .L166
.L166:
	ldr r4, =25
	sub r5, r4, #7
	ldr r4, =6
	ldr r6, =3
	mul r7, r4, r6
	ldr r4, =36
	sub r6, r4, r7
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L170
	b .L174
.L169:
	b .L166
.L170:
	mov r0, #66
	bl putch
	b .L171
.L171:
	ldr r4, =1
	cmp r4, #8
	movlt r4, #1
	movge r4, #0
	ldr r5, =7
	ldr r6, =2
	sdiv r7, r5, r6
	mul r8, r7, r6
	sub r6, r5, r8
	mov r5, r4
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L175
	b .L183
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
.F0:
.L174:
	b .L171
.L175:
	mov r0, #67
	bl putch
	b .L176
.L176:
	ldr r4, =3
	cmp r4, #4
	movgt r4, #1
	movle r4, #0
	mov r5, r4
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L184
	b .L192
.L183:
	b .L176
.L184:
	mov r0, #68
	bl putch
	b .L185
.L185:
	ldr r4, =102
	cmp r4, #63
	movle r4, #1
	movgt r4, #0
	mov r5, r4
	ldr r4, =1
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L193
	b .L201
.L192:
	b .L185
.L193:
	mov r0, #69
	bl putch
	b .L194
.L194:
	ldr r4, =5
	sub r5, r4, #6
	ldr r4, =0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	mov r6, r4
	ldr r4, =0
	sub r7, r4, r6
	cmp r5, r7
	moveq r4, #1
	movne r4, #0
	beq .L202
	b .L208
.L201:
	b .L194
.L202:
	mov r0, #70
	bl putch
	b .L203
.L203:
	mov r0, #10
	bl putch
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =2
	str r4, [fp, #-16]
	ldr r4, =3
	str r4, [fp, #-20]
	ldr r4, =4
	str r4, [fp, #-24]
	b .L214
.L208:
	b .L203
.L214:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L229
	b .L219
.L215:
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L229
	b .L231
.L216:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L236
	b .L240
.L219:
	b .L216
.L229:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L215
	b .L234
.L231:
	b .L216
.L234:
	b .L216
.L236:
	mov r0, #67
	bl putch
	b .L237
.L237:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L245
	b .L250
.L238:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L236
	b .L243
.L240:
	b .L238
.L243:
	b .L237
.L245:
	mov r0, #72
	bl putch
	b .L246
.L246:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L256
	b .L259
.L247:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L245
	b .L253
.L250:
	b .L247
.L253:
	b .L246
.L254:
	mov r0, #73
	bl putch
	b .L255
.L255:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r5, #0
	movne r5, #1
	moveq r5, #0
	moveq r5, #1
	movne r5, #0
	mov r6, r5
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L266
	b .L271
.L256:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L254
	b .L262
.L259:
	b .L255
.L262:
	b .L255
.L263:
	mov r0, #74
	bl putch
	b .L264
	b .F1
.LTORG
addr_a1:
	.word a
addr_b1:
	.word b
addr_d1:
	.word d
.F1:
.L264:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r5, #0
	movne r5, #1
	moveq r5, #0
	moveq r5, #1
	movne r5, #0
	mov r6, r5
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L278
	b .L285
.L265:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-24]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L263
	b .L277
.L266:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L263
	b .L274
.L271:
	b .L265
.L274:
	b .L265
.L277:
	b .L264
.L278:
	mov r0, #75
	bl putch
	b .L279
.L279:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L280:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L286
	b .L289
.L285:
	b .L280
.L286:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-24]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L278
	b .L292
.L289:
	b .L279
.L292:
	b .L279

addr_a2:
	.word a
addr_b2:
	.word b
addr_d2:
	.word d
	.ident "ZWJM"
