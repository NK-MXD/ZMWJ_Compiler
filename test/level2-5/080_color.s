	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global maxn
	.align 4
	.size maxn, 4
maxn:
	.word 18
	.global mod
	.align 4
	.size mod, 4
mod:
	.word 1000000007
	.comm dp, 52907904, 4
	.comm list, 800, 4
	.comm cns, 80, 4
	.text
	.global equal
	.type equal , %function
equal:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L246:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L249
	b .L253
.L249:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L250:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L253:
	b .L250

	.global dfs
	.type dfs , %function
dfs:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L254:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #32]
	str r3, [fp, #-20]
	ldr r3, [fp, #36]
	str r3, [fp, #-24]
	ldr r1, [fp, #-4]
	ldr r2, addr_dp0
	ldr r0, =2939328
	mla r2, r1, r0, r2
	ldr r1, [fp, #-8]
	ldr r0, =163296
	mla r2, r1, r0, r2
	ldr r1, [fp, #-12]
	ldr r0, =9072
	mla r2, r1, r0, r2
	ldr r1, [fp, #-16]
	ldr r0, =504
	mla r1, r1, r0, r2
	ldr r0, [fp, #-20]
	mov r2, #28
	mla r1, r0, r2, r1
	ldr r0, [fp, #-24]
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L261
	b .L271
.L261:
	ldr r2, [fp, #-4]
	ldr r1, addr_dp0
	ldr r0, =2939328
	mla r2, r2, r0, r1
	ldr r1, [fp, #-8]
	ldr r0, =163296
	mla r2, r1, r0, r2
	ldr r1, [fp, #-12]
	ldr r0, =9072
	mla r2, r1, r0, r2
	ldr r1, [fp, #-16]
	ldr r0, =504
	mla r2, r1, r0, r2
	ldr r1, [fp, #-20]
	mov r0, #28
	mla r2, r1, r0, r2
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L262:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r0, r1, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L278
	b .L282
.L271:
	b .L262
.L278:
	mov r0, #1
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L279:
	ldr r0, =0
	str r0, [fp, #-28]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L284
	b .L287
.L282:
	b .L279
.L284:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r0, [fp, #-24]
	mov r1, #2
	bl equal
	sub r6, r4, r0
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	ldr r4, [fp, #-20]
	mov r5, #1
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	mla r2, r6, r0, r7
	ldr r0, addr_mod0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-28]
	b .L285
.L285:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L289
	b .L292
.L287:
	b .L285
.L289:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-8]
	ldr r0, [fp, #-24]
	mov r1, #3
	bl equal
	sub r6, r4, r0
	ldr r0, [fp, #-4]
	add r0, r0, #1
	ldr r1, [fp, #-8]
	sub r1, r1, #1
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	ldr r4, [fp, #-20]
	mov r5, #2
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	mla r2, r6, r0, r7
	ldr r0, addr_mod0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-28]
	b .L290
.L290:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L294
	b .L297
.L292:
	b .L290
.L294:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-12]
	ldr r0, [fp, #-24]
	mov r1, #4
	bl equal
	sub r6, r4, r0
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	add r1, r1, #1
	ldr r2, [fp, #-12]
	sub r2, r2, #1
	ldr r3, [fp, #-16]
	ldr r4, [fp, #-20]
	mov r5, #3
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	mla r2, r6, r0, r7
	ldr r0, addr_mod0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-28]
	b .L295
	b .F0
.LTORG
addr_maxn0:
	.word maxn
addr_mod0:
	.word mod
addr_dp0:
	.word dp
addr_list0:
	.word list
addr_cns0:
	.word cns
.F0:
.L295:
	ldr r0, [fp, #-16]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L299
	b .L302
.L297:
	b .L295
.L299:
	ldr r7, [fp, #-28]
	ldr r4, [fp, #-16]
	ldr r0, [fp, #-24]
	mov r1, #5
	bl equal
	sub r6, r4, r0
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	add r2, r2, #1
	ldr r3, [fp, #-16]
	sub r3, r3, #1
	ldr r4, [fp, #-20]
	mov r5, #4
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	mla r2, r6, r0, r7
	ldr r0, addr_mod1
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-28]
	b .L300
.L300:
	ldr r0, [fp, #-20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L304
	b .L307
.L302:
	b .L300
.L304:
	ldr r7, [fp, #-28]
	ldr r6, [fp, #-20]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	add r3, r3, #1
	ldr r4, [fp, #-20]
	sub r4, r4, #1
	mov r5, #5
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	mla r2, r6, r0, r7
	ldr r0, addr_mod1
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-28]
	b .L305
.L305:
	ldr r2, [fp, #-28]
	ldr r0, addr_mod1
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r3, [fp, #-4]
	ldr r2, addr_dp1
	ldr r1, =2939328
	mla r3, r3, r1, r2
	ldr r2, [fp, #-8]
	ldr r1, =163296
	mla r3, r2, r1, r3
	ldr r2, [fp, #-12]
	ldr r1, =9072
	mla r3, r2, r1, r3
	ldr r2, [fp, #-16]
	ldr r1, =504
	mla r3, r2, r1, r3
	ldr r2, [fp, #-20]
	mov r1, #28
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	ldr r2, [fp, #-4]
	ldr r1, addr_dp1
	ldr r0, =2939328
	mla r2, r2, r0, r1
	ldr r1, [fp, #-8]
	ldr r0, =163296
	mla r2, r1, r0, r2
	ldr r1, [fp, #-12]
	ldr r0, =9072
	mla r2, r1, r0, r2
	ldr r1, [fp, #-16]
	ldr r0, =504
	mla r2, r1, r0, r2
	ldr r1, [fp, #-20]
	mov r0, #28
	mla r2, r1, r0, r2
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L307:
	b .L305

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L320:
	bl getint
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L323
.L323:
	ldr r1, [fp, #-8]
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L324
	b .L328
.L324:
	ldr r0, =0
	str r0, [fp, #-12]
	b .L330
.L325:
	ldr r0, =0
	str r0, [fp, #-8]
	b .L404
.L328:
	b .L325
.L330:
	ldr r1, [fp, #-12]
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L331
	b .L335
.L331:
	ldr r0, =0
	str r0, [fp, #-16]
	b .L337
.L332:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L324
	b .L403
.L335:
	b .L332
.L337:
	ldr r1, [fp, #-16]
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L338
	b .L342
.L338:
	ldr r0, =0
	str r0, [fp, #-20]
	b .L344
.L339:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r1, r0
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L331
	b .L397
.L342:
	b .L339
.L344:
	ldr r1, [fp, #-20]
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L345
	b .L349
.L345:
	ldr r0, =0
	str r0, [fp, #-24]
	b .L351
.L346:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L338
	b .L391
.L349:
	b .L346
.L351:
	ldr r1, [fp, #-24]
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L352
	b .L356
.L352:
	ldr r0, =0
	str r0, [fp, #-28]
	b .L358
.L353:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	mov r1, r0
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L345
	b .L385
.L356:
	b .L353
.L358:
	ldr r0, [fp, #-28]
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L363
.L359:
	ldr r0, =0
	sub r0, r0, #1
	ldr r3, [fp, #-8]
	ldr r2, addr_dp1
	ldr r1, =2939328
	mla r3, r3, r1, r2
	ldr r2, [fp, #-12]
	ldr r1, =163296
	mla r3, r2, r1, r3
	ldr r2, [fp, #-16]
	ldr r1, =9072
	mla r3, r2, r1, r3
	ldr r2, [fp, #-20]
	ldr r1, =504
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #28
	mla r3, r2, r1, r3
	ldr r2, [fp, #-28]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	mov r0, r0
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L373
.L360:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	mov r1, r0
	ldr r0, addr_maxn1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L352
	b .L379
.L363:
	b .L360
	b .F1
.LTORG
addr_maxn1:
	.word maxn
addr_mod1:
	.word mod
addr_dp1:
	.word dp
addr_list1:
	.word list
addr_cns1:
	.word cns
.F1:
.L373:
	b .L360
.L379:
	b .L353
.L385:
	b .L346
.L391:
	b .L339
.L397:
	b .L332
.L403:
	b .L325
.L404:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L405
	b .L409
.L405:
	bl getint
	mov r3, r0
	ldr r2, [fp, #-8]
	ldr r1, addr_list2
	mov r0, #4
	mla r0, r2, r0, r1
	str r3, [r0]
	ldr r2, [fp, #-8]
	ldr r1, addr_list2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r2, [r0]
	ldr r1, addr_cns2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add r0, r0, #1
	ldr r3, [fp, #-8]
	ldr r2, addr_list2
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r3, [r1]
	ldr r2, addr_cns2
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L405
	b .L418
.L406:
	mov r2, #1
	ldr r1, addr_cns2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mov r3, #2
	ldr r2, addr_cns2
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	mov r4, #3
	ldr r3, addr_cns2
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r2, [r2]
	mov r5, #4
	ldr r4, addr_cns2
	mov r3, #4
	mla r3, r5, r3, r4
	ldr r3, [r3]
	mov r6, #5
	ldr r5, addr_cns2
	mov r4, #4
	mla r4, r6, r4, r5
	ldr r4, [r4]
	mov r5, #0
	push {r5}
	push {r4}
	bl dfs
	add sp, sp, #8
	str r0, [fp, #-32]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-32]
	add sp, sp, #32
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L409:
	b .L406
.L418:
	b .L406

addr_maxn2:
	.word maxn
addr_mod2:
	.word mod
addr_dp2:
	.word dp
addr_list2:
	.word list
addr_cns2:
	.word cns
	.ident "ZWJM"
