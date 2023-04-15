	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm arr1, 57600, 4
	.comm arr2, 107520, 4
	.text
	.global loop1
	.type loop1 , %function
loop1:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L284:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, =0
	str r1, [fp, #-12]
	b .L294
.L294:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-4]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L297
	b .L300
.L295:
	ldr r1, =0
	str r1, [fp, #-16]
	b .L304
.L296:
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L297:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L295
	b .L303
.L300:
	b .L296
.L303:
	b .L296
.L304:
	ldr r1, [fp, #-16]
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L305
	b .L309
.L305:
	ldr r1, =0
	str r1, [fp, #-20]
	b .L310
.L306:
	ldr r1, [fp, #-12]
	add r1, r1, #1
	str r1, [fp, #-12]
	b .L294
.L309:
	b .L306
.L310:
	ldr r1, [fp, #-20]
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L311
	b .L315
.L311:
	ldr r1, =0
	str r1, [fp, #-24]
	b .L316
.L312:
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	b .L304
.L315:
	b .L312
.L316:
	ldr r1, [fp, #-24]
	cmp r1, #4
	movlt r1, #1
	movge r1, #0
	blt .L317
	b .L321
.L317:
	ldr r1, =0
	str r1, [fp, #-28]
	b .L322
.L318:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	b .L310
.L321:
	b .L318
.L322:
	ldr r1, [fp, #-28]
	cmp r1, #5
	movlt r1, #1
	movge r1, #0
	blt .L323
	b .L327
.L323:
	ldr r1, =0
	str r1, [fp, #-32]
	b .L328
.L324:
	ldr r1, [fp, #-24]
	add r1, r1, #1
	str r1, [fp, #-24]
	b .L316
.L327:
	b .L324
.L328:
	ldr r1, [fp, #-32]
	cmp r1, #6
	movlt r1, #1
	movge r1, #0
	blt .L329
	b .L333
.L329:
	ldr r1, =0
	str r1, [fp, #-36]
	b .L334
.L330:
	ldr r1, [fp, #-28]
	add r1, r1, #1
	str r1, [fp, #-28]
	b .L322
.L333:
	b .L330
.L334:
	ldr r1, [fp, #-36]
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L335
	b .L339
.L335:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	add r2, r2, r1
	ldr r1, [fp, #-20]
	add r2, r2, r1
	ldr r1, [fp, #-24]
	add r2, r2, r1
	ldr r1, [fp, #-28]
	add r2, r2, r1
	ldr r1, [fp, #-32]
	add r2, r2, r1
	ldr r1, [fp, #-36]
	add r2, r2, r1
	ldr r1, [fp, #-4]
	add r2, r2, r1
	ldr r1, [fp, #-8]
	add r1, r2, r1
	ldr r4, [fp, #-12]
	ldr r3, addr_arr10
	ldr r2, =5760
	mla r4, r4, r2, r3
	ldr r3, [fp, #-16]
	ldr r2, =2880
	mla r4, r3, r2, r4
	ldr r3, [fp, #-20]
	ldr r2, =960
	mla r4, r3, r2, r4
	ldr r3, [fp, #-24]
	mov r2, #240
	mla r4, r3, r2, r4
	ldr r3, [fp, #-28]
	mov r2, #48
	mla r4, r3, r2, r4
	ldr r3, [fp, #-32]
	mov r2, #8
	mla r4, r3, r2, r4
	ldr r3, [fp, #-36]
	mov r2, #4
	mla r2, r3, r2, r4
	str r1, [r2]
	ldr r1, [fp, #-36]
	add r1, r1, #1
	str r1, [fp, #-36]
	b .L334
.L336:
	ldr r1, [fp, #-32]
	add r1, r1, #1
	str r1, [fp, #-32]
	b .L328
.L339:
	b .L336

	.global loop2
	.type loop2 , %function
loop2:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L346:
	ldr r1, =0
	str r1, [fp, #-4]
	b .L354
.L354:
	ldr r1, [fp, #-4]
	cmp r1, #10
	movlt r1, #1
	movge r1, #0
	blt .L355
	b .L359
.L355:
	ldr r1, =0
	str r1, [fp, #-8]
	b .L360
.L356:
	add sp, sp, #32
	pop {r3, r4, fp, lr}
	bx lr
.L359:
	b .L356
.L360:
	ldr r1, [fp, #-8]
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L361
	b .L365
.L361:
	ldr r1, =0
	str r1, [fp, #-12]
	b .L366
.L362:
	ldr r1, [fp, #-4]
	add r1, r1, #1
	str r1, [fp, #-4]
	b .L354
.L365:
	b .L362
.L366:
	ldr r1, [fp, #-12]
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L367
	b .L371
.L367:
	ldr r1, =0
	str r1, [fp, #-16]
	b .L372
.L368:
	ldr r1, [fp, #-8]
	add r1, r1, #1
	str r1, [fp, #-8]
	b .L360
.L371:
	b .L368
.L372:
	ldr r1, [fp, #-16]
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L373
	b .L377
.L373:
	ldr r1, =0
	str r1, [fp, #-20]
	b .L378
.L374:
	ldr r1, [fp, #-12]
	add r1, r1, #1
	str r1, [fp, #-12]
	b .L366
.L377:
	b .L374
.L378:
	ldr r1, [fp, #-20]
	cmp r1, #4
	movlt r1, #1
	movge r1, #0
	blt .L379
	b .L383
.L379:
	ldr r1, =0
	str r1, [fp, #-24]
	b .L384
.L380:
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	b .L372
.L383:
	b .L380
.L384:
	ldr r1, [fp, #-24]
	cmp r1, #8
	movlt r1, #1
	movge r1, #0
	blt .L385
	b .L389
.L385:
	ldr r1, =0
	str r1, [fp, #-28]
	b .L390
.L386:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	b .L378
.L389:
	b .L386
.L390:
	ldr r1, [fp, #-28]
	cmp r1, #7
	movlt r1, #1
	movge r1, #0
	blt .L391
	b .L395
.L391:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	add r2, r2, r1
	ldr r1, [fp, #-16]
	add r2, r2, r1
	ldr r1, [fp, #-28]
	add r1, r2, r1
	ldr r4, [fp, #-4]
	ldr r3, addr_arr20
	ldr r2, =10752
	mla r4, r4, r2, r3
	ldr r3, [fp, #-8]
	ldr r2, =5376
	mla r4, r3, r2, r4
	ldr r3, [fp, #-12]
	ldr r2, =1792
	mla r4, r3, r2, r4
	ldr r3, [fp, #-16]
	ldr r2, =896
	mla r4, r3, r2, r4
	ldr r3, [fp, #-20]
	mov r2, #224
	mla r4, r3, r2, r4
	ldr r3, [fp, #-24]
	mov r2, #28
	mla r4, r3, r2, r4
	ldr r3, [fp, #-28]
	mov r2, #4
	mla r2, r3, r2, r4
	str r1, [r2]
	ldr r1, [fp, #-28]
	add r1, r1, #1
	str r1, [fp, #-28]
	b .L390
.L392:
	ldr r1, [fp, #-24]
	add r1, r1, #1
	str r1, [fp, #-24]
	b .L384
.L395:
	b .L392

	.global loop3
	.type loop3 , %function
loop3:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L402:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r0, =0
	str r0, [fp, #-60]
	ldr r0, =0
	str r0, [fp, #-32]
	b .L418
.L418:
	ldr r0, [fp, #-32]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L419
	b .L423
.L419:
	ldr r0, =0
	str r0, [fp, #-36]
	b .L424
.L420:
	ldr r0, [fp, #-60]
	add sp, sp, #64
	pop {r3, r4, fp, lr}
	bx lr
.L423:
	b .L420
.L424:
	ldr r0, [fp, #-36]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L425
	b .L429
.L425:
	ldr r0, =0
	str r0, [fp, #-40]
	b .L430
.L426:
	ldr r0, [fp, #-32]
	add r0, r0, #1
	str r0, [fp, #-32]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L510
	b .L514
.L429:
	b .L426
.L430:
	ldr r1, [fp, #-40]
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L431
	b .L435
.L431:
	ldr r0, =0
	str r0, [fp, #-44]
	b .L436
.L432:
	ldr r0, [fp, #-36]
	add r0, r0, #1
	str r0, [fp, #-36]
	mov r1, r0
	ldr r0, [fp, #-8]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L504
	b .L508
.L435:
	b .L432
.L436:
	ldr r1, [fp, #-44]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L437
	b .L441
.L437:
	ldr r0, =0
	str r0, [fp, #-48]
	b .L442
.L438:
	ldr r0, [fp, #-40]
	add r0, r0, #1
	str r0, [fp, #-40]
	mov r1, r0
	ldr r0, [fp, #-12]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L498
	b .L502
.L441:
	b .L438
.L442:
	ldr r1, [fp, #-48]
	ldr r0, =100000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L443
	b .L447
.L443:
	ldr r0, =0
	str r0, [fp, #-52]
	b .L448
.L444:
	ldr r0, [fp, #-44]
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r1, r0
	ldr r0, [fp, #-16]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L492
	b .L496
.L447:
	b .L444
.L448:
	ldr r1, [fp, #-52]
	ldr r0, =1000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L449
	b .L453
.L449:
	ldr r0, =0
	str r0, [fp, #-56]
	b .L454
.L450:
	ldr r0, [fp, #-48]
	add r0, r0, #1
	str r0, [fp, #-48]
	mov r1, r0
	ldr r0, [fp, #-20]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L486
	b .L490
.L453:
	b .L450
.L454:
	ldr r1, [fp, #-56]
	ldr r0, =10000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L455
	b .L459
.L455:
	ldr r2, [fp, #-60]
	ldr r1, =817
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	ldr r3, [fp, #-32]
	ldr r2, addr_arr10
	ldr r1, =5760
	mla r3, r3, r1, r2
	ldr r2, [fp, #-36]
	ldr r1, =2880
	mla r3, r2, r1, r3
	ldr r2, [fp, #-40]
	ldr r1, =960
	mla r3, r2, r1, r3
	ldr r2, [fp, #-44]
	mov r1, #240
	mla r3, r2, r1, r3
	ldr r2, [fp, #-48]
	mov r1, #48
	mla r3, r2, r1, r3
	ldr r2, [fp, #-52]
	mov r1, #8
	mla r3, r2, r1, r3
	ldr r2, [fp, #-56]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, r1
	ldr r3, [fp, #-32]
	ldr r2, addr_arr20
	ldr r1, =10752
	mla r3, r3, r1, r2
	ldr r2, [fp, #-36]
	ldr r1, =5376
	mla r3, r2, r1, r3
	ldr r2, [fp, #-40]
	ldr r1, =1792
	mla r3, r2, r1, r3
	ldr r2, [fp, #-44]
	ldr r1, =896
	mla r3, r2, r1, r3
	ldr r2, [fp, #-48]
	mov r1, #224
	mla r3, r2, r1, r3
	ldr r2, [fp, #-52]
	mov r1, #28
	mla r3, r2, r1, r3
	ldr r2, [fp, #-56]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [fp, #-60]
	ldr r0, [fp, #-56]
	add r0, r0, #1
	str r0, [fp, #-56]
	mov r1, r0
	ldr r0, [fp, #-28]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L474
	b .L478
	b .F0
.LTORG
addr_arr10:
	.word arr1
addr_arr20:
	.word arr2
.F0:
.L456:
	ldr r0, [fp, #-52]
	add r0, r0, #1
	str r0, [fp, #-52]
	mov r1, r0
	ldr r0, [fp, #-24]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L480
	b .L484
.L459:
	b .L456
.L474:
	b .L456
.L475:
	b .L454
.L478:
	b .L475
.L480:
	b .L450
.L481:
	b .L448
.L484:
	b .L481
.L486:
	b .L444
.L487:
	b .L442
.L490:
	b .L487
.L492:
	b .L438
.L493:
	b .L436
.L496:
	b .L493
.L498:
	b .L432
.L499:
	b .L430
.L502:
	b .L499
.L504:
	b .L426
.L505:
	b .L424
.L508:
	b .L505
.L510:
	b .L420
.L511:
	b .L418
.L514:
	b .L511

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L516:
	bl getint
	str r0, [fp, #-4]
	bl getint
	str r0, [fp, #-8]
	bl getint
	str r0, [fp, #-12]
	bl getint
	str r0, [fp, #-16]
	bl getint
	str r0, [fp, #-20]
	bl getint
	str r0, [fp, #-24]
	bl getint
	str r0, [fp, #-28]
	bl getint
	str r0, [fp, #-32]
	bl getint
	str r0, [fp, #-36]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl loop1
	bl loop2
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r2, [fp, #-20]
	ldr r3, [fp, #-24]
	ldr r6, [fp, #-28]
	ldr r5, [fp, #-32]
	ldr r4, [fp, #-36]
	push {r4}
	push {r5}
	push {r6}
	bl loop3
	add sp, sp, #12
	add sp, sp, #40
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_arr11:
	.word arr1
addr_arr21:
	.word arr2
	.ident "ZWJM"
