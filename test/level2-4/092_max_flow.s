	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global INF
	.align 4
	.size INF, 4
INF:
	.word 1879048192
	.comm size, 40, 4
	.comm to, 400, 4
	.comm cap, 400, 4
	.comm rev, 400, 4
	.comm used, 40, 4
	.text
	.global my_memset
	.type my_memset , %function
my_memset:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L194:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	b .L199
.L199:
	ldr r1, [fp, #-12]
	ldr r2, =0
	mov r4, r2
	ldr r2, =0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L200
	b .L204
.L200:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r4, r1, r2
	str r3, [r1]
	add r2, r4, #1
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L411
	b .L211
.L201:
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L204:
	ldr r1, =0
	b .L201
.L211:
	b .L201
.L411:
	mov r4, r2
	b .L200

	.global add_node
	.type add_node , %function
add_node:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L212:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r2, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r3, addr_to0
	mov r1, #40
	mla r1, r4, r1, r3
	ldr r5, [fp, #-4]
	ldr r4, addr_size0
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r4, [r3]
	mov r3, #4
	mla r1, r4, r3, r1
	str r2, [r1]
	ldr r2, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r3, addr_cap0
	mov r1, #40
	mla r1, r4, r1, r3
	ldr r5, [fp, #-4]
	ldr r4, addr_size0
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r4, [r3]
	mov r3, #4
	mla r1, r4, r3, r1
	str r2, [r1]
	ldr r3, [fp, #-8]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r4, [fp, #-4]
	ldr r3, addr_rev0
	mov r1, #40
	mla r1, r4, r1, r3
	ldr r5, [fp, #-4]
	ldr r4, addr_size0
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r4, [r3]
	mov r3, #4
	mla r1, r4, r3, r1
	str r2, [r1]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r4, addr_to0
	mov r3, #40
	mla r3, r1, r3, r4
	ldr r1, [fp, #-8]
	ldr r5, addr_size0
	mov r4, #4
	mla r1, r1, r4, r5
	ldr r4, [r1]
	mov r1, #4
	mla r1, r4, r1, r3
	str r2, [r1]
	ldr r1, [fp, #-8]
	ldr r2, addr_cap0
	mov r3, #40
	mla r4, r1, r3, r2
	ldr r3, [fp, #-8]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	mov r1, #4
	mla r2, r2, r1, r4
	ldr r1, =0
	str r1, [r2]
	ldr r3, [fp, #-4]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r4, [fp, #-8]
	ldr r3, addr_rev0
	mov r1, #40
	mla r1, r4, r1, r3
	ldr r5, [fp, #-8]
	ldr r4, addr_size0
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r4, [r3]
	mov r3, #4
	mla r1, r4, r3, r1
	str r2, [r1]
	ldr r3, [fp, #-4]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	add r4, r1, #1
	ldr r3, [fp, #-4]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	ldr r3, [fp, #-8]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	add r4, r1, #1
	ldr r3, [fp, #-8]
	ldr r2, addr_size0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.global dfs
	.type dfs , %function
dfs:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L232:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L236
	b .L240
.L236:
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L237:
	ldr r2, [fp, #-4]
	ldr r1, addr_used0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =1
	str r0, [r1]
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	ldr r1, =0
	b .L242
.L240:
	b .L237
.L242:
	ldr r5, [fp, #-4]
	ldr r4, addr_size0
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r3, [r3]
	mov r4, r1
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L243
	b .L248
.L243:
	ldr r5, [fp, #-4]
	ldr r3, addr_to0
	mov r1, #40
	mla r3, r5, r1, r3
	mov r1, #4
	mla r1, r4, r1, r3
	ldr r5, [r1]
	ldr r3, addr_used0
	mov r1, #4
	mla r1, r5, r1, r3
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L249
	b .L255
.L244:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L248:
	b .L244
.L249:
	add r1, r4, #1
	b .L242
.L250:
	ldr r5, [fp, #-4]
	ldr r3, addr_cap0
	mov r1, #40
	mla r3, r5, r1, r3
	mov r1, #4
	mla r1, r4, r1, r3
	ldr r1, [r1]
	cmp r1, #0
	movle r1, #1
	movgt r1, #0
	ble .L258
	b .L264
.L255:
	b .L250
.L258:
	add r1, r4, #1
	b .L242
.L259:
	ldr r0, [fp, #-12]
	ldr r3, [fp, #-4]
	ldr r2, addr_cap0
	mov r1, #40
	mla r2, r3, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L267
	b .L274
.L264:
	b .L259
.L267:
	ldr r0, [fp, #-12]
	mov r5, r0
	b .L269
.L268:
	ldr r2, [fp, #-4]
	ldr r1, addr_cap0
	mov r0, #40
	mla r1, r2, r0, r1
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	mov r5, r0
	b .L269
.L269:
	ldr r2, [fp, #-4]
	ldr r1, addr_to0
	mov r0, #40
	mla r1, r2, r0, r1
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	ldr r1, [fp, #-8]
	mov r2, r5
	bl dfs
	cmp r0, #0
	movgt r1, #1
	movle r1, #0
	bgt .L280
	b .L284
.L274:
	b .L268
.L280:
	ldr r3, [fp, #-4]
	ldr r2, addr_cap0
	mov r1, #40
	mla r2, r3, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	sub r1, r1, r0
	ldr r5, [fp, #-4]
	ldr r3, addr_cap0
	mov r2, #40
	mla r3, r5, r2, r3
	mov r2, #4
	mla r2, r4, r2, r3
	str r1, [r2]
	ldr r3, [fp, #-4]
	ldr r2, addr_to0
	mov r1, #40
	mla r2, r3, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r3, [r1]
	ldr r2, addr_cap0
	mov r1, #40
	mla r1, r3, r1, r2
	ldr r5, [fp, #-4]
	ldr r3, addr_rev0
	mov r2, #40
	mla r3, r5, r2, r3
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r3, [r2]
	mov r2, #4
	mla r1, r3, r2, r1
	ldr r1, [r1]
	add r2, r1, r0
	ldr r5, [fp, #-4]
	ldr r3, addr_to0
	mov r1, #40
	mla r3, r5, r1, r3
	mov r1, #4
	mla r1, r4, r1, r3
	ldr r5, [r1]
	ldr r3, addr_cap0
	mov r1, #40
	mla r1, r5, r1, r3
	ldr r6, [fp, #-4]
	ldr r5, addr_rev0
	mov r3, #40
	mla r5, r6, r3, r5
	mov r3, #4
	mla r3, r4, r3, r5
	ldr r4, [r3]
	mov r3, #4
	mla r1, r4, r3, r1
	str r2, [r1]
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	b .F0
.LTORG
addr_INF0:
	.word INF
addr_size0:
	.word size
addr_to0:
	.word to
addr_cap0:
	.word cap
addr_rev0:
	.word rev
addr_used0:
	.word used
.F0:
.L281:
	add r1, r4, #1
	ldr r4, [fp, #-4]
	ldr r3, addr_size1
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r3, [r2]
	mov r2, r0
	mov r0, r5
	mov r4, r1
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L243
	b .L306
.L284:
	b .L281
.L306:
	b .L244

	.global max_flow
	.type max_flow , %function
max_flow:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L307:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L311
.L311:
	ldr r0, =0
	ldr r0, =0
	mov r4, r0
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L312
	b .L315
.L312:
	mov r2, #0
	ldr r1, addr_used1
	mov r0, #4
	mla r0, r2, r0, r1
	mov r1, #0
	mov r2, #10
	bl my_memset
	ldr r3, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, addr_INF1
	ldr r2, [r0]
	mov r0, r3
	bl dfs
	mov r1, r0
	cmp r1, #0
	moveq r0, #1
	movne r0, #0
	beq .L318
	b .L322
.L313:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L315:
	ldr r0, =0
	ldr r0, =0
	b .L313
.L318:
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L319:
	add r0, r4, r1
	mov r4, r0
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L312
	b .L325
.L322:
	b .L319
.L325:
	b .L313

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L327:
	bl getint
	mov r7, r0
	bl getint
	mov r4, r0
	mov r2, #0
	ldr r1, addr_size1
	mov r0, #4
	mla r0, r2, r0, r1
	mov r1, #0
	mov r2, #10
	bl my_memset
	b .L330
.L330:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	mov r6, r4
	cmp r4, #0
	movgt r0, #1
	movle r0, #0
	bgt .L331
	b .L335
.L331:
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	bl getint
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl add_node
	sub r1, r6, #1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L431
	b .L343
.L332:
	mov r0, #1
	mov r1, r7
	bl max_flow
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L335:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L332
.L343:
	b .L332
.L431:
	mov r6, r1
	b .L331

addr_INF1:
	.word INF
addr_size1:
	.word size
addr_to1:
	.word to
addr_cap1:
	.word cap
addr_rev1:
	.word rev
addr_used1:
	.word used
	.ident "ZWJM"
