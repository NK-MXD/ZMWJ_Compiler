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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L194:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L199
.L199:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L200
	b .L204
.L200:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L200
	b .L211
.L201:
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L204:
	b .L201
.L211:
	b .L201

	.global add_node
	.type add_node , %function
add_node:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L212:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, addr_to0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-4]
	ldr r7, addr_size0
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, addr_cap0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-4]
	ldr r7, addr_size0
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-8]
	ldr r5, addr_size0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, addr_rev0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-4]
	ldr r7, addr_size0
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r6, addr_to0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-8]
	ldr r7, addr_size0
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-8]
	ldr r5, addr_cap0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	ldr r6, addr_size0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [r6]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =0
	str r5, [r4]
	ldr r4, [fp, #-4]
	ldr r5, addr_size0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, addr_rev0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-8]
	ldr r7, addr_size0
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-4]
	ldr r5, addr_size0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-4]
	ldr r6, addr_size0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	ldr r4, [fp, #-8]
	ldr r5, addr_size0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_size0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global dfs
	.type dfs , %function
dfs:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L232:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L236
	b .L240
.L236:
	ldr r4, [fp, #-12]
	mov r0, r4
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L237:
	ldr r4, [fp, #-4]
	ldr r5, addr_used0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =1
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L242
.L240:
	b .L237
.L242:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, addr_size0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L243
	b .L248
.L243:
	ldr r4, [fp, #-4]
	ldr r5, addr_to0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, addr_used0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L249
	b .L255
.L244:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L248:
	b .L244
.L249:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L242
.L250:
	ldr r4, [fp, #-4]
	ldr r5, addr_cap0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	cmp r5, #0
	movle r4, #1
	movgt r4, #0
	ble .L258
	b .L264
.L255:
	b .L250
.L258:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L242
.L259:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, addr_cap0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-16]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L267
	b .L274
.L264:
	b .L259
.L267:
	ldr r4, [fp, #-12]
	str r4, [fp, #-20]
	b .L269
.L268:
	ldr r4, [fp, #-4]
	ldr r5, addr_cap0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	str r5, [fp, #-20]
	b .L269
.L269:
	ldr r4, [fp, #-4]
	ldr r5, addr_to0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-20]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl dfs
	mov r4, r0
	str r4, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L280
	b .L284
.L274:
	b .L268
.L280:
	ldr r4, [fp, #-4]
	ldr r5, addr_cap0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	sub r6, r5, r4
	ldr r4, [fp, #-4]
	ldr r5, addr_cap0
	mov r7, #40
	mul r8, r4, r7
	add r4, r5, r8
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r7, #4
	mul r8, r4, r7
	add r4, r5, r8
	str r6, [r4]
	ldr r4, [fp, #-4]
	ldr r5, addr_to0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, addr_cap0
	mov r6, #40
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [fp, #-4]
	ldr r6, addr_rev0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-16]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [r5]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	add r6, r4, r5
	ldr r4, [fp, #-4]
	ldr r5, addr_to0
	mov r7, #40
	mul r8, r4, r7
	add r4, r5, r8
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r7, #4
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [r4]
	ldr r4, addr_cap0
	mov r7, #40
	mul r8, r5, r7
	add r5, r4, r8
	mov r4, r5
	ldr r5, [fp, #-4]
	ldr r7, addr_rev0
	mov r8, #40
	mul r9, r5, r8
	add r5, r7, r9
	mov r7, r5
	ldr r5, [fp, #-16]
	mov r8, #4
	mul r9, r5, r8
	add r5, r7, r9
	ldr r7, [r5]
	mov r5, #4
	mul r8, r7, r5
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-24]
	mov r0, r4
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, addr_size1
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L243
	b .L306
.L284:
	b .L281
.L306:
	b .L244

	.global max_flow
	.type max_flow , %function
max_flow:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L307:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L311
.L311:
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L312
	b .L315
.L312:
	mov r4, #0
	ldr r5, addr_used1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r0, r5
	mov r1, #0
	mov r2, #10
	bl my_memset
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r6, addr_INF1
	ldr r7, [r6]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl dfs
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L318
	b .L322
.L313:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L315:
	b .L313
.L318:
	ldr r4, [fp, #-12]
	mov r0, r4
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L319:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
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
	sub sp, sp, #24
.L327:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	mov r4, #0
	ldr r5, addr_size1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r0, r5
	mov r1, #0
	mov r2, #10
	bl my_memset
	b .L330
.L330:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L331
	b .L335
.L331:
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	str r4, [fp, #-16]
	bl getint
	mov r4, r0
	str r4, [fp, #-20]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl add_node
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L331
	b .L343
.L332:
	ldr r4, [fp, #-4]
	mov r0, #1
	mov r1, r4
	bl max_flow
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L335:
	b .L332
.L343:
	b .L332

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
