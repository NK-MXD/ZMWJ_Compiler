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
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L246:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L249
	b .L253
.L249:
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L250:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L253:
	b .L250

	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L254:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #36]
	str r3, [fp, #-20]
	ldr r3, [fp, #40]
	str r3, [fp, #-24]
	ldr r4, [fp, #-4]
	ldr r5, addr_dp0
	ldr r6, =2939328
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	ldr r6, =163296
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	ldr r6, =9072
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =504
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-20]
	mov r6, #28
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L261
	b .L271
.L261:
	ldr r4, [fp, #-4]
	ldr r5, addr_dp0
	ldr r6, =2939328
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	ldr r6, =163296
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	ldr r6, =9072
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =504
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-20]
	mov r6, #28
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L262:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-12]
	add r5, r6, r4
	ldr r4, [fp, #-16]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	add r5, r6, r4
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L278
	b .L282
.L271:
	b .L262
.L278:
	mov r0, #1
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L279:
	ldr r4, =0
	str r4, [fp, #-28]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L284
	b .L287
.L282:
	b .L279
.L284:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-24]
	mov r0, r6
	mov r1, #2
	bl equal
	mov r6, r0
	sub r7, r5, r6
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	ldr r5, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-20]
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r9
	mov r5, #1
	push {r5}
	push {r10}
	bl dfs
	add sp, sp, #8
	mov r5, r0
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, addr_mod0
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r7, r4, r6
	sub r4, r5, r7
	str r4, [fp, #-28]
	b .L285
.L285:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L289
	b .L292
.L287:
	b .L285
.L289:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-24]
	mov r0, r6
	mov r1, #3
	bl equal
	mov r6, r0
	sub r7, r5, r6
	ldr r5, [fp, #-4]
	add r6, r5, #1
	ldr r5, [fp, #-8]
	sub r8, r5, #1
	ldr r5, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-20]
	mov r0, r6
	mov r1, r8
	mov r2, r5
	mov r3, r9
	mov r5, #2
	push {r5}
	push {r10}
	bl dfs
	add sp, sp, #8
	mov r5, r0
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, addr_mod0
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r7, r4, r6
	sub r4, r5, r7
	str r4, [fp, #-28]
	b .L290
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
.L290:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L294
	b .L297
.L292:
	b .L290
.L294:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-24]
	mov r0, r6
	mov r1, #4
	bl equal
	mov r6, r0
	sub r7, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	add r8, r6, #1
	ldr r6, [fp, #-12]
	sub r9, r6, #1
	ldr r6, [fp, #-16]
	ldr r10, [fp, #-20]
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r6
	mov r5, #3
	push {r5}
	push {r10}
	bl dfs
	add sp, sp, #8
	mov r5, r0
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, addr_mod1
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r7, r4, r6
	sub r4, r5, r7
	str r4, [fp, #-28]
	b .L295
.L295:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L299
	b .L302
.L297:
	b .L295
.L299:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-24]
	mov r0, r6
	mov r1, #5
	bl equal
	mov r6, r0
	sub r7, r5, r6
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r8, [fp, #-12]
	add r9, r8, #1
	ldr r8, [fp, #-16]
	sub r10, r8, #1
	ldr r8, [fp, #-20]
	mov r0, r5
	mov r1, r6
	mov r2, r9
	mov r3, r10
	mov r5, #4
	push {r5}
	push {r8}
	bl dfs
	add sp, sp, #8
	mov r5, r0
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, addr_mod1
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r7, r4, r6
	sub r4, r5, r7
	str r4, [fp, #-28]
	b .L300
.L300:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L304
	b .L307
.L302:
	b .L300
.L304:
	ldr r4, [fp, #-28]
	str r4, [fp, #-32]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-12]
	ldr r8, [fp, #-16]
	add r9, r8, #1
	ldr r8, [fp, #-20]
	sub r10, r8, #1
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, r9
	mov r5, #5
	push {r5}
	push {r10}
	bl dfs
	add sp, sp, #8
	mov r5, r0
	mul r6, r4, r5
	ldr r4, [fp, #-32]
	add r5, r4, r6
	ldr r4, addr_mod1
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r7, r4, r6
	sub r4, r5, r7
	str r4, [fp, #-28]
	b .L305
.L305:
	ldr r4, [fp, #-28]
	ldr r5, addr_mod1
	ldr r6, [r5]
	sdiv r5, r4, r6
	mul r7, r5, r6
	sub r5, r4, r7
	ldr r4, [fp, #-4]
	ldr r6, addr_dp1
	ldr r7, =2939328
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-8]
	ldr r7, =163296
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-12]
	ldr r7, =9072
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-16]
	ldr r7, =504
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-20]
	mov r7, #28
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-24]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-4]
	ldr r5, addr_dp1
	ldr r6, =2939328
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-8]
	ldr r6, =163296
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	ldr r6, =9072
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-16]
	ldr r6, =504
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-20]
	mov r6, #28
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
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
.L307:
	b .L305

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L320:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L323
.L323:
	ldr r4, [fp, #-8]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L324
	b .L328
.L324:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L330
.L325:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L404
.L328:
	b .L325
.L330:
	ldr r4, [fp, #-12]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L331
	b .L335
.L331:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L337
.L332:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L324
	b .L403
.L335:
	b .L332
.L337:
	ldr r4, [fp, #-16]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L338
	b .L342
.L338:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L344
.L339:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L331
	b .L397
.L342:
	b .L339
.L344:
	ldr r4, [fp, #-20]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L345
	b .L349
.L345:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L351
.L346:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L338
	b .L391
.L349:
	b .L346
.L351:
	ldr r4, [fp, #-24]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L352
	b .L356
.L352:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L358
.L353:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L345
	b .L385
.L356:
	b .L353
.L358:
	ldr r4, [fp, #-28]
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L359
	b .L363
.L359:
	ldr r4, =0
	sub r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_dp2
	ldr r7, =2939328
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-12]
	ldr r7, =163296
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-16]
	ldr r7, =9072
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-20]
	ldr r7, =504
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-24]
	mov r7, #28
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-28]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L359
	b .L373
.L360:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, addr_maxn2
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L352
	b .L379
	b .F2
.LTORG
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
.F2:
.L363:
	b .L360
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
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L409
.L405:
	bl getint
	mov r4, r0
	ldr r5, [fp, #-8]
	ldr r6, addr_list3
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-8]
	ldr r5, addr_list3
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, addr_cns3
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_list3
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [r6]
	ldr r6, addr_cns3
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L418
.L406:
	mov r4, #1
	ldr r5, addr_cns3
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r5, #2
	ldr r6, addr_cns3
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	mov r6, #3
	ldr r7, addr_cns3
	mov r8, #4
	mul r9, r6, r8
	add r6, r7, r9
	mov r7, r6
	ldr r6, [r7]
	mov r7, #4
	ldr r8, addr_cns3
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	mov r8, r7
	ldr r7, [r8]
	str r7, [fp, #-36]
	mov r7, #5
	ldr r8, addr_cns3
	mov r9, #4
	mul r10, r7, r9
	add r7, r8, r10
	mov r8, r7
	ldr r7, [r8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	ldr r4, [fp, #-36]
	mov r3, r4
	mov r4, #0
	push {r4}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	str r4, [fp, #-32]
	ldr r4, [fp, #-32]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-32]
	mov r0, r4
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L409:
	b .L406
.L418:
	b .L406

addr_maxn3:
	.word maxn
addr_mod3:
	.word mod
addr_dp3:
	.word dp
addr_list3:
	.word list
addr_cns3:
	.word cns
