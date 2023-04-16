	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.global m
	.align 4
	.size m, 4
m:
	.word 0
	.global v1
	.align 4
	.size v1, 4
v1:
	.word 0
	.global v2
	.align 4
	.size v2, 4
v2:
	.word 0
	.global w
	.align 4
	.size w, 4
w:
	.word 0
	.section .rodata
	.global INF
	.align 4
	.size INF, 4
INF:
	.word 65535
	.comm e, 1024, 4
	.comm book, 64, 4
	.comm dis, 64, 4
	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L140:
	b .L143
.L143:
	ldr r1, addr_n0
	ldr r3, [r1]
	ldr r1, =1
	ldr r2, =1
	cmp r2, r3
	movle r2, #1
	movgt r2, #0
	ble .L144
	b .L148
.L144:
	mov r4, #1
	ldr r3, addr_e0
	mov r2, #64
	mla r3, r4, r2, r3
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r4, [r2]
	ldr r3, addr_dis0
	mov r2, #4
	mla r2, r1, r2, r3
	str r4, [r2]
	ldr r3, addr_book0
	mov r2, #4
	mla r3, r1, r2, r3
	ldr r2, =0
	str r2, [r3]
	add r2, r1, #1
	ldr r1, addr_n0
	ldr r1, [r1]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L387
	b .L156
.L145:
	mov r3, #1
	ldr r2, addr_book0
	mov r1, #4
	mla r2, r3, r1, r2
	ldr r1, =1
	str r1, [r2]
	b .L157
.L148:
	ldr r1, =1
	b .L145
.L156:
	b .L145
.L157:
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r2, r1, #1
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =1
	mov r5, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L158
	b .L162
.L158:
	ldr r1, addr_INF0
	ldr r4, [r1]
	b .L166
.L159:
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L162:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =1
	b .L159
.L166:
	ldr r1, addr_n0
	ldr r6, [r1]
	ldr r1, =1
	mov r3, r1
	ldr r1, =0
	mov r2, r1
	mov r1, r4
	ldr r4, =1
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L167
	b .L171
.L167:
	ldr r6, addr_dis0
	mov r4, #4
	mla r4, r3, r4, r6
	ldr r4, [r4]
	cmp r1, r4
	movgt r4, #1
	movle r4, #0
	bgt .L174
	b .L178
.L168:
	ldr r2, addr_book0
	mov r1, #4
	mla r2, r4, r1, r2
	ldr r1, =1
	str r1, [r2]
	b .L191
.L171:
	ldr r1, =1
	ldr r1, =0
	mov r4, r1
	b .L168
.L172:
	ldr r2, addr_dis0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	mov r4, r3
	mov r8, r1
	b .L173
.L173:
	add r7, r3, #1
	ldr r1, addr_n0
	ldr r6, [r1]
	mov r3, r7
	mov r2, r4
	mov r1, r8
	cmp r7, r6
	movle r6, #1
	movgt r6, #0
	ble .L167
	b .L189
.L174:
	ldr r6, addr_book0
	mov r4, #4
	mla r4, r3, r4, r6
	ldr r4, [r4]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L172
	b .L182
.L178:
	mov r4, r2
	mov r8, r1
	b .L173
.L182:
	mov r4, r2
	mov r8, r1
	b .L173
.L189:
	b .L168
.L191:
	ldr r1, addr_n0
	ldr r2, [r1]
	ldr r1, =1
	mov r3, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L192
	b .L196
.L192:
	ldr r2, addr_e0
	mov r1, #64
	mla r2, r4, r1, r2
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r1, addr_INF0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L197
	b .L203
.L193:
	add r2, r5, #1
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r1, r1, #1
	mov r5, r2
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L158
	b .L228
	b .F0
.LTORG
addr_INF0:
	.word INF
addr_e0:
	.word e
addr_book0:
	.word book
addr_dis0:
	.word dis
addr_n0:
	.word n
addr_m0:
	.word m
addr_v10:
	.word v1
addr_v20:
	.word v2
addr_w0:
	.word w
.F0:
.L196:
	ldr r1, =1
	b .L193
.L197:
	ldr r2, addr_dis1
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r6, addr_dis1
	mov r1, #4
	mla r1, r4, r1, r6
	ldr r1, [r1]
	ldr r7, addr_e1
	mov r6, #64
	mla r7, r4, r6, r7
	mov r6, #4
	mla r6, r3, r6, r7
	ldr r6, [r6]
	add r1, r1, r6
	cmp r2, r1
	movgt r1, #1
	movle r1, #0
	bgt .L204
	b .L212
.L198:
	add r2, r3, #1
	ldr r1, addr_n1
	ldr r1, [r1]
	mov r3, r2
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L192
	b .L221
.L203:
	b .L198
.L204:
	ldr r2, addr_dis1
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	ldr r6, addr_e1
	mov r2, #64
	mla r6, r4, r2, r6
	mov r2, #4
	mla r2, r3, r2, r6
	ldr r2, [r2]
	add r6, r1, r2
	ldr r2, addr_dis1
	mov r1, #4
	mla r1, r3, r1, r2
	str r6, [r1]
	b .L205
.L205:
	b .L198
.L212:
	b .L205
.L221:
	b .L193
.L228:
	b .L159
.L387:
	mov r1, r2
	b .L144

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L229:
	bl getint
	mov r1, r0
	ldr r0, addr_n1
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_m1
	str r1, [r0]
	b .L231
.L231:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =0
	ldr r0, =1
	mov r2, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L232
	b .L236
.L232:
	b .L238
.L233:
	b .L264
.L236:
	ldr r0, =0
	ldr r0, =1
	b .L233
.L238:
	ldr r0, addr_n1
	ldr r3, [r0]
	ldr r0, =1
	mov r1, r0
	ldr r0, =1
	cmp r0, r3
	movle r0, #1
	movgt r0, #0
	ble .L239
	b .L243
.L239:
	cmp r2, r1
	moveq r0, #1
	movne r0, #0
	beq .L244
	b .L249
.L240:
	add r1, r2, #1
	ldr r0, addr_n1
	ldr r0, [r0]
	mov r2, r1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L232
	b .L263
.L243:
	ldr r0, =1
	b .L240
.L244:
	ldr r3, addr_e1
	mov r0, #64
	mla r3, r2, r0, r3
	mov r0, #4
	mla r3, r1, r0, r3
	ldr r0, =0
	str r0, [r3]
	b .L246
.L245:
	ldr r0, addr_INF1
	ldr r0, [r0]
	ldr r4, addr_e1
	mov r3, #64
	mla r4, r2, r3, r4
	mov r3, #4
	mla r3, r1, r3, r4
	str r0, [r3]
	b .L246
.L246:
	add r3, r1, #1
	ldr r0, addr_n1
	ldr r0, [r0]
	mov r1, r3
	cmp r3, r0
	movle r0, #1
	movgt r0, #0
	ble .L239
	b .L257
.L249:
	b .L245
.L257:
	b .L240
.L263:
	b .L233
.L264:
	ldr r0, addr_m1
	ldr r1, [r0]
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	mov r6, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L265
	b .L269
.L265:
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	bl getint
	ldr r2, addr_e1
	mov r1, #64
	mla r2, r5, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	str r0, [r1]
	add r1, r6, #1
	ldr r0, addr_m1
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L418
	b .L278
.L266:
	bl Dijkstra
	b .L279
.L269:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	b .L266
.L278:
	b .L266
.L279:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =1
	mov r4, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L280
	b .L284
.L280:
	ldr r1, addr_dis1
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	add r1, r4, #1
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L423
	b .L291
.L281:
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L284:
	ldr r0, =1
	b .L281
.L291:
	b .L281
.L418:
	mov r6, r1
	b .L265
.L423:
	mov r4, r1
	b .L280

addr_INF1:
	.word INF
addr_e1:
	.word e
addr_book1:
	.word book
addr_dis1:
	.word dis
addr_n1:
	.word n
addr_m1:
	.word m
addr_v11:
	.word v1
addr_v21:
	.word v2
addr_w1:
	.word w
	.ident "ZWJM"
