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
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L140:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L143
.L143:
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L144
	b .L148
.L144:
	mov r4, #1
	ldr r5, addr_e0
	mov r6, #64
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	ldr r6, addr_dis0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	ldr r4, [fp, #-4]
	ldr r5, addr_book0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L144
	b .L156
.L145:
	mov r4, #1
	ldr r5, addr_book0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =1
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L157
.L148:
	b .L145
.L156:
	b .L145
.L157:
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L158
	b .L162
.L158:
	ldr r4, addr_INF0
	ldr r5, [r4]
	str r5, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-20]
	b .L166
.L159:
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L162:
	b .L159
.L166:
	ldr r4, [fp, #-20]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L167
	b .L171
.L167:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-20]
	ldr r6, addr_dis0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L174
	b .L178
.L168:
	ldr r4, [fp, #-16]
	ldr r5, addr_book0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =1
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-24]
	b .L191
.L171:
	b .L168
.L172:
	ldr r4, [fp, #-20]
	ldr r5, addr_dis0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	str r4, [fp, #-12]
	ldr r4, [fp, #-20]
	str r4, [fp, #-16]
	b .L173
.L173:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L167
	b .L189
.L174:
	ldr r4, [fp, #-20]
	ldr r5, addr_book0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L172
	b .L182
.L178:
	b .L173
.L182:
	b .L173
.L189:
	b .L168
.L191:
	ldr r4, [fp, #-24]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L192
	b .L196
.L192:
	ldr r4, [fp, #-16]
	ldr r5, addr_e0
	mov r6, #64
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, addr_INF0
	ldr r6, [r4]
	cmp r5, r6
	movlt r4, #1
	movge r4, #0
	blt .L197
	b .L203
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
.L193:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_n1
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L158
	b .L228
.L196:
	b .L193
.L197:
	ldr r4, [fp, #-24]
	ldr r5, addr_dis1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	ldr r6, addr_dis1
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	ldr r6, [fp, #-16]
	ldr r7, addr_e1
	mov r8, #64
	mul r9, r6, r8
	add r6, r7, r9
	mov r7, r6
	ldr r6, [fp, #-24]
	mov r8, #4
	mul r9, r6, r8
	add r6, r7, r9
	ldr r7, [r6]
	add r6, r5, r7
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L204
	b .L212
.L198:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L192
	b .L221
.L203:
	b .L198
.L204:
	ldr r4, [fp, #-16]
	ldr r5, addr_dis1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	ldr r6, addr_e1
	mov r7, #64
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-24]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-24]
	ldr r6, addr_dis1
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	b .L205
.L205:
	b .L198
.L212:
	b .L205
.L221:
	b .L193
.L228:
	b .L159

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L229:
	bl getint
	mov r4, r0
	ldr r5, addr_n1
	str r4, [r5]
	bl getint
	mov r4, r0
	ldr r5, addr_m1
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L231
.L231:
	ldr r4, [fp, #-4]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L232
	b .L236
.L232:
	ldr r4, =1
	str r4, [fp, #-8]
	b .L238
.L233:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L264
.L236:
	b .L233
.L238:
	ldr r4, [fp, #-8]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L239
	b .L243
.L239:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L244
	b .L249
.L240:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L232
	b .L263
.L243:
	b .L240
.L244:
	ldr r4, [fp, #-4]
	ldr r5, addr_e1
	mov r6, #64
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =0
	str r5, [r4]
	b .L246
.L245:
	ldr r4, addr_INF1
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	ldr r6, addr_e1
	mov r7, #64
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-8]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	b .L246
.L246:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L239
	b .L257
.L249:
	b .L245
.L257:
	b .L240
.L263:
	b .L233
.L264:
	ldr r4, [fp, #-4]
	ldr r5, addr_m1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L265
	b .L269
.L265:
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	str r4, [fp, #-16]
	bl getint
	mov r4, r0
	ldr r5, [fp, #-12]
	ldr r6, addr_e1
	mov r7, #64
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-16]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_m1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L265
	b .L278
.L266:
	bl Dijkstra
	ldr r4, =1
	str r4, [fp, #-4]
	b .L279
.L269:
	b .L266
.L278:
	b .L266
.L279:
	ldr r4, [fp, #-4]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L280
	b .L284
.L280:
	ldr r4, [fp, #-4]
	ldr r5, addr_dis1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L280
	b .L291
	b .F1
.LTORG
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
.F1:
.L281:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L284:
	b .L281
.L291:
	b .L281

addr_INF2:
	.word INF
addr_e2:
	.word e
addr_book2:
	.word book
addr_dis2:
	.word dis
addr_n2:
	.word n
addr_m2:
	.word m
addr_v12:
	.word v1
addr_v22:
	.word v2
addr_w2:
	.word w
	.ident "ZWJM"
