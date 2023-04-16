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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L121:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_a0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L123:
	str r0, [fp, #-4]
	mov r0, r0
	ldr r1, addr_b0
	str r0, [r1]
	ldr r0, addr_b0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L125:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_d0
	str r1, [r0]
	ldr r0, addr_d0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L127:
	ldr r1, =2
	ldr r0, addr_a0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_b0
	str r1, [r0]
	mov r0, #0
	bl set_a
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L130
	b .L132
.L128:
	b .L129
.L129:
	ldr r0, addr_a0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r1, =2
	ldr r0, addr_a0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_b0
	str r1, [r0]
	mov r0, #0
	bl set_a
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L139
	b .L141
.L130:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L128
	b .L135
.L132:
	b .L129
.L135:
	b .L129
.L137:
	b .L138
.L138:
	ldr r0, addr_a0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b0
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	ldr r1, =2
	ldr r0, addr_d0
	str r1, [r0]
	ldr r0, =1
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L149
	b .L152
.L139:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L137
	b .L144
.L141:
	b .L138
.L144:
	b .L138
.L147:
	b .L148
.L148:
	ldr r0, addr_d0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, =1
	cmp r0, #1
	movle r0, #1
	movgt r0, #0
	ble .L156
	b .L161
.L149:
	mov r0, #3
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L147
	b .L154
.L152:
	b .L148
.L154:
	b .L148
.L156:
	b .L157
.L157:
	ldr r0, addr_d0
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	ldr r0, =2
	add r1, r0, #1
	ldr r0, =3
	sub r1, r0, r1
	ldr r0, =16
	cmp r0, r1
	movge r0, #1
	movlt r0, #0
	bge .L165
	b .L169
.L158:
	mov r0, #4
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
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
	ldr r0, =25
	sub r2, r0, #7
	mov r1, #18
	ldr r0, =36
	sub r0, r0, r1
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	bne .L170
	b .L174
.L169:
	b .L166
.L170:
	mov r0, #66
	bl putch
	b .L171
.L171:
	ldr r0, =1
	cmp r0, #8
	movlt r1, #1
	movge r1, #0
	ldr r0, =7
	and r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L175
	b .L183
.L174:
	b .L171
.L175:
	mov r0, #67
	bl putch
	b .L176
.L176:
	ldr r0, =3
	cmp r0, #4
	movgt r0, #1
	movle r0, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L184
	b .L192
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
.F0:
.L183:
	b .L176
.L184:
	mov r0, #68
	bl putch
	b .L185
.L185:
	ldr r0, =102
	cmp r0, #63
	movle r1, #1
	movgt r1, #0
	ldr r0, =1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L193
	b .L201
.L192:
	b .L185
.L193:
	mov r0, #69
	bl putch
	b .L194
.L194:
	ldr r0, =5
	sub r2, r0, #6
	ldr r0, =0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r1, #1
	movne r1, #0
	ldr r0, =0
	sub r0, r0, r1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
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
	b .L214
.L208:
	b .L203
.L214:
	ldr r0, =0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L229
	b .L219
.L215:
	mov r0, #32
	bl putch
	ldr r0, =0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L229
	b .L231
.L216:
	ldr r0, =0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L236
	b .L240
.L219:
	b .L216
.L229:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
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
	ldr r0, =0
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L245
	b .L250
.L238:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
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
	ldr r0, =2
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L256
	b .L259
.L247:
	ldr r0, =1
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
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
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r1, #1
	movne r1, #0
	ldr r0, =0
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L266
	b .L271
.L256:
	ldr r0, =4
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
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
.L264:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r1, #1
	movne r1, #0
	ldr r0, =0
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L278
	b .L285
.L265:
	ldr r0, =4
	cmp r0, #4
	movge r0, #1
	movlt r0, #0
	bge .L263
	b .L277
.L266:
	ldr r0, =3
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
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
	pop {r3, r4, fp, lr}
	bx lr
	b .F1
.LTORG
addr_a1:
	.word a
addr_b1:
	.word b
addr_d1:
	.word d
.F1:
.L280:
	ldr r0, =3
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L286
	b .L289
.L285:
	b .L280
.L286:
	ldr r0, =4
	cmp r0, #4
	movge r0, #1
	movlt r0, #0
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
