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
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L284:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L294
.L294:
	ldr r1, [fp, #-4]
	ldr r2, =0
	str r2, [fp, #-20]
	ldr r2, =0
	mov r10, r2
	ldr r2, =0
	mov r7, r2
	ldr r2, =0
	mov r6, r2
	ldr r2, =0
	mov r5, r2
	ldr r2, =0
	ldr r2, =0
	mov r9, r2
	ldr r2, =0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L383
	b .L300
.L295:
	b .L304
.L296:
	add sp, sp, #48
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L300:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L296
.L304:
	ldr r1, [fp, #-20]
	str r1, [fp, #-12]
	mov r1, r10
	str r1, [fp, #-16]
	mov r4, r7
	mov r3, r6
	mov r1, r5
	ldr r1, =0
	mov r8, r1
	ldr r1, =0
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L305
	b .L309
.L305:
	b .L310
.L306:
	add r1, r9, #1
	ldr r2, [fp, #-4]
	ldr r5, [fp, #-24]
	str r5, [fp, #-20]
	mov r10, r8
	mov r6, r4
	mov r5, r3
	mov r9, r1
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L383
	b .L386
.L309:
	ldr r1, [fp, #-20]
	str r1, [fp, #-24]
	mov r8, r10
	mov r4, r6
	mov r3, r5
	ldr r1, =0
	b .L306
.L310:
	ldr r1, [fp, #-12]
	mov r5, r1
	ldr r1, [fp, #-16]
	str r1, [fp, #-40]
	mov r10, r4
	mov r1, r3
	ldr r1, =0
	mov r7, r1
	ldr r1, =0
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L311
	b .L315
.L311:
	b .L316
.L312:
	add r1, r8, #1
	mov r3, r10
	str r3, [fp, #-12]
	mov r3, r7
	str r3, [fp, #-16]
	mov r4, r6
	mov r3, r5
	mov r8, r2
	mov r8, r1
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L305
	b .L375
.L315:
	ldr r1, [fp, #-12]
	mov r10, r1
	ldr r1, [fp, #-16]
	mov r7, r1
	mov r6, r4
	mov r5, r3
	ldr r1, =0
	mov r2, r1
	b .L312
.L316:
	mov r3, r5
	ldr r1, [fp, #-40]
	mov r4, r1
	mov r1, r10
	ldr r1, =0
	mov r6, r1
	ldr r1, =0
	cmp r1, #4
	movlt r1, #1
	movge r1, #0
	blt .L317
	b .L321
.L317:
	b .L322
.L318:
	add r1, r7, #1
	ldr r2, [fp, #-32]
	mov r5, r2
	mov r2, r6
	str r2, [fp, #-40]
	mov r10, r4
	mov r2, r3
	mov r7, r1
	cmp r1, #3
	movlt r2, #1
	movge r2, #0
	str r2, [fp, #-28]
	blt .L311
	b .L370
.L321:
	str r5, [fp, #-32]
	ldr r1, [fp, #-40]
	mov r6, r1
	mov r4, r10
	ldr r1, =0
	mov r3, r1
	b .L318
.L322:
	mov r2, r3
	mov r1, r4
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r1, #5
	movlt r1, #1
	movge r1, #0
	blt .L323
	b .L327
.L323:
	b .L328
.L324:
	add r1, r6, #1
	ldr r2, [fp, #-44]
	mov r3, r2
	mov r4, r10
	mov r2, r5
	mov r6, r1
	cmp r1, #4
	movlt r2, #1
	movge r2, #0
	str r2, [fp, #-36]
	blt .L317
	b .L365
	b .F0
.LTORG
addr_arr10:
	.word arr1
addr_arr20:
	.word arr2
.F0:
.L327:
	str r3, [fp, #-44]
	mov r10, r4
	ldr r1, =0
	mov r5, r1
	b .L324
.L328:
	mov r1, r2
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	cmp r1, #6
	movlt r1, #1
	movge r1, #0
	blt .L329
	b .L333
.L329:
	b .L334
.L330:
	add r1, r5, #1
	mov r2, r3
	mov r5, r4
	mov r5, r1
	cmp r1, #5
	movlt r10, #1
	movge r10, #0
	blt .L323
	b .L360
.L333:
	mov r3, r2
	ldr r1, =0
	mov r4, r1
	b .L330
.L334:
	ldr r1, =0
	mov r3, r1
	ldr r1, =0
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L335
	b .L339
.L335:
	add r1, r9, r8
	add r1, r1, r7
	add r1, r1, r6
	add r1, r1, r5
	add r1, r1, r4
	add r2, r1, r3
	ldr r1, [fp, #-4]
	add r2, r2, r1
	ldr r1, [fp, #-8]
	add r10, r2, r1
	ldr r2, addr_arr11
	ldr r1, =5760
	mla r2, r9, r1, r2
	ldr r1, =2880
	mla r2, r8, r1, r2
	ldr r1, =960
	mla r2, r7, r1, r2
	mov r1, #240
	mla r2, r6, r1, r2
	mov r1, #48
	mla r2, r5, r1, r2
	mov r1, #8
	mla r2, r4, r1, r2
	mov r1, #4
	mla r1, r3, r1, r2
	str r10, [r1]
	add r2, r3, #1
	cmp r2, #2
	movlt r1, #1
	movge r1, #0
	blt .L1105
	b .L350
.L336:
	add r1, r4, #1
	mov r3, r2
	mov r4, r1
	cmp r1, #6
	movlt r3, #1
	movge r3, #0
	blt .L329
	b .L355
.L339:
	ldr r1, =0
	mov r2, r1
	b .L336
.L350:
	b .L336
.L355:
	mov r3, r2
	mov r4, r1
	b .L330
.L360:
	str r3, [fp, #-44]
	mov r10, r4
	mov r5, r1
	b .L324
.L365:
	ldr r2, [fp, #-44]
	str r2, [fp, #-32]
	mov r6, r10
	mov r4, r5
	mov r3, r1
	b .L318
.L370:
	ldr r2, [fp, #-32]
	mov r10, r2
	mov r7, r6
	mov r6, r4
	mov r5, r3
	mov r2, r1
	b .L312
.L375:
	str r10, [fp, #-24]
	mov r8, r7
	mov r7, r6
	mov r4, r5
	mov r3, r2
	b .L306
.L383:
	ldr r1, [fp, #-8]
	cmp r9, r1
	movlt r1, #1
	movge r1, #0
	blt .L295
	b .L389
.L386:
	b .L296
.L389:
	b .L296
.L1105:
	mov r3, r2
	b .L335

	.global loop2
	.type loop2 , %function
loop2:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L390:
	b .L398
.L398:
	ldr r1, =0
	mov r10, r1
	ldr r1, =0
	mov r9, r1
	ldr r1, =0
	mov r8, r1
	ldr r1, =0
	mov r7, r1
	ldr r1, =0
	mov r2, r1
	ldr r1, =0
	ldr r1, =0
	mov r6, r1
	ldr r1, =0
	cmp r1, #10
	movlt r1, #1
	movge r1, #0
	blt .L399
	b .L403
.L399:
	b .L404
.L400:
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L403:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L400
.L404:
	mov r1, r10
	str r1, [fp, #-4]
	mov r1, r9
	str r1, [fp, #-8]
	mov r4, r8
	mov r3, r7
	mov r1, r2
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L405
	b .L409
.L405:
	b .L410
.L406:
	add r1, r6, #1
	mov r9, r5
	mov r8, r4
	mov r7, r3
	mov r6, r1
	cmp r1, #10
	movlt r1, #1
	movge r1, #0
	blt .L399
	b .L480
.L409:
	mov r5, r9
	mov r4, r8
	mov r3, r7
	ldr r1, =0
	b .L406
.L410:
	ldr r1, [fp, #-4]
	mov r8, r1
	ldr r1, [fp, #-8]
	str r1, [fp, #-24]
	mov r9, r4
	mov r1, r3
	ldr r1, =0
	mov r10, r1
	ldr r1, =0
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L411
	b .L415
.L411:
	b .L416
.L412:
	add r1, r5, #1
	mov r3, r10
	str r3, [fp, #-4]
	mov r3, r9
	str r3, [fp, #-8]
	mov r4, r8
	mov r3, r7
	mov r5, r2
	mov r5, r1
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L405
	b .L475
.L415:
	ldr r1, [fp, #-4]
	mov r10, r1
	ldr r1, [fp, #-8]
	mov r9, r1
	mov r8, r4
	mov r7, r3
	ldr r1, =0
	mov r2, r1
	b .L412
.L416:
	mov r3, r8
	ldr r1, [fp, #-24]
	mov r7, r1
	mov r1, r9
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	cmp r1, #2
	movlt r1, #1
	movge r1, #0
	blt .L417
	b .L421
.L417:
	b .L422
.L418:
	add r1, r10, #1
	ldr r2, [fp, #-16]
	mov r8, r2
	mov r2, r7
	str r2, [fp, #-24]
	mov r9, r4
	mov r2, r3
	mov r10, r1
	cmp r1, #3
	movlt r2, #1
	movge r2, #0
	str r2, [fp, #-12]
	blt .L411
	b .L470
.L421:
	str r8, [fp, #-16]
	ldr r1, [fp, #-24]
	mov r7, r1
	mov r4, r9
	ldr r1, =0
	mov r3, r1
	b .L418
.L422:
	mov r2, r3
	mov r1, r7
	ldr r1, =0
	mov r9, r1
	ldr r1, =0
	cmp r1, #4
	movlt r1, #1
	movge r1, #0
	blt .L423
	b .L427
.L423:
	b .L428
.L424:
	add r1, r4, #1
	ldr r2, [fp, #-28]
	mov r3, r2
	mov r7, r9
	mov r2, r8
	mov r4, r1
	cmp r1, #2
	movlt r2, #1
	movge r2, #0
	str r2, [fp, #-20]
	blt .L417
	b .L465
.L427:
	str r3, [fp, #-28]
	mov r9, r7
	ldr r1, =0
	mov r8, r1
	b .L424
	b .F1
.LTORG
addr_arr11:
	.word arr1
addr_arr21:
	.word arr2
.F1:
.L428:
	mov r1, r2
	ldr r1, =0
	mov r8, r1
	ldr r1, =0
	cmp r1, #8
	movlt r1, #1
	movge r1, #0
	blt .L429
	b .L433
.L429:
	b .L434
.L430:
	add r1, r9, #1
	mov r2, r3
	mov r8, r7
	mov r9, r1
	cmp r1, #4
	movlt r8, #1
	movge r8, #0
	blt .L423
	b .L460
.L433:
	mov r3, r2
	ldr r1, =0
	mov r7, r1
	b .L430
.L434:
	ldr r1, =0
	mov r3, r1
	ldr r1, =0
	cmp r1, #7
	movlt r1, #1
	movge r1, #0
	blt .L435
	b .L439
.L435:
	add r1, r6, r5
	add r1, r1, r4
	add r7, r1, r3
	ldr r2, addr_arr22
	ldr r1, =10752
	mla r2, r6, r1, r2
	ldr r1, =5376
	mla r2, r5, r1, r2
	ldr r1, =1792
	mla r2, r10, r1, r2
	ldr r1, =896
	mla r2, r4, r1, r2
	mov r1, #224
	mla r2, r9, r1, r2
	mov r1, #28
	mla r2, r8, r1, r2
	mov r1, #4
	mla r1, r3, r1, r2
	str r7, [r1]
	add r2, r3, #1
	cmp r2, #7
	movlt r1, #1
	movge r1, #0
	blt .L1169
	b .L450
.L436:
	add r1, r8, #1
	mov r3, r2
	mov r8, r1
	cmp r1, #8
	movlt r3, #1
	movge r3, #0
	blt .L429
	b .L455
.L439:
	ldr r1, =0
	mov r2, r1
	b .L436
.L450:
	b .L436
.L455:
	mov r3, r2
	mov r7, r1
	b .L430
.L460:
	str r3, [fp, #-28]
	mov r9, r7
	mov r8, r1
	b .L424
.L465:
	ldr r2, [fp, #-28]
	str r2, [fp, #-16]
	mov r7, r9
	mov r4, r8
	mov r3, r1
	b .L418
.L470:
	ldr r2, [fp, #-16]
	mov r10, r2
	mov r9, r7
	mov r8, r4
	mov r7, r3
	mov r2, r1
	b .L412
.L475:
	mov r5, r9
	mov r4, r8
	mov r3, r7
	b .L406
.L480:
	b .L400
.L1169:
	mov r3, r2
	b .L435

	.global loop3
	.type loop3 , %function
loop3:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L481:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #40]
	str r3, [fp, #-20]
	ldr r3, [fp, #44]
	str r3, [fp, #-24]
	ldr r3, [fp, #48]
	str r3, [fp, #-28]
	b .L497
.L497:
	ldr r0, =0
	str r0, [fp, #-32]
	ldr r0, =0
	mov r9, r0
	ldr r0, =0
	mov r6, r0
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	ldr r0, =0
	mov r8, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L498
	b .L502
.L498:
	b .L503
.L499:
	mov r0, r1
	add sp, sp, #80
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L502:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L499
.L503:
	ldr r0, [fp, #-32]
	str r0, [fp, #-36]
	mov r0, r9
	str r0, [fp, #-40]
	mov r0, r6
	str r0, [fp, #-44]
	mov r3, r5
	mov r2, r4
	mov r0, r1
	ldr r0, =0
	mov r7, r0
	ldr r0, =0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L504
	b .L508
.L504:
	b .L509
.L505:
	add r0, r8, #1
	ldr r4, [fp, #-4]
	cmp r0, r4
	movge r4, #1
	movlt r4, #0
	bge .L619
	b .L623
.L508:
	ldr r0, [fp, #-32]
	mov r10, r0
	mov r7, r9
	mov r3, r5
	mov r2, r4
	ldr r0, =0
	b .L505
.L509:
	ldr r0, [fp, #-36]
	str r0, [fp, #-48]
	ldr r0, [fp, #-40]
	str r0, [fp, #-52]
	ldr r0, [fp, #-44]
	str r0, [fp, #-56]
	mov r0, r3
	str r0, [fp, #-60]
	mov r0, r2
	ldr r0, =0
	mov r6, r0
	ldr r1, =0
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L510
	b .L514
.L510:
	b .L515
.L511:
	add r0, r7, #1
	ldr r2, [fp, #-8]
	cmp r0, r2
	movge r2, #1
	movlt r2, #0
	bge .L608
	b .L612
.L514:
	ldr r0, [fp, #-36]
	mov r10, r0
	ldr r0, [fp, #-40]
	mov r9, r0
	ldr r0, [fp, #-44]
	mov r6, r0
	mov r5, r3
	mov r4, r2
	ldr r0, =0
	mov r1, r0
	b .L511
.L515:
	ldr r0, [fp, #-48]
	str r0, [fp, #-64]
	ldr r0, [fp, #-52]
	str r0, [fp, #-68]
	ldr r0, [fp, #-56]
	mov r2, r0
	ldr r0, [fp, #-60]
	ldr r0, =0
	mov r5, r0
	ldr r1, =0
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L516
	b .L520
.L516:
	b .L521
.L517:
	add r0, r6, #1
	ldr r4, [fp, #-12]
	cmp r0, r4
	movge r4, #1
	movlt r4, #0
	bge .L597
	b .L601
.L520:
	ldr r0, [fp, #-48]
	mov r10, r0
	ldr r0, [fp, #-52]
	mov r5, r0
	ldr r0, [fp, #-56]
	mov r3, r0
	ldr r0, [fp, #-60]
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	b .L517
.L521:
	ldr r0, [fp, #-64]
	str r0, [fp, #-72]
	ldr r0, [fp, #-68]
	str r0, [fp, #-76]
	mov r0, r2
	ldr r0, =0
	mov r4, r0
	ldr r1, =0
	ldr r0, =100000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L522
	b .L526
	b .F2
.LTORG
addr_arr12:
	.word arr1
addr_arr22:
	.word arr2
.F2:
.L522:
	b .L527
.L523:
	add r0, r5, #1
	ldr r2, [fp, #-16]
	cmp r0, r2
	movge r2, #1
	movlt r2, #0
	bge .L586
	b .L590
.L526:
	ldr r0, [fp, #-64]
	mov r10, r0
	ldr r0, [fp, #-68]
	mov r9, r0
	mov r4, r2
	ldr r0, =0
	mov r1, r0
	b .L523
.L527:
	ldr r0, [fp, #-72]
	mov r10, r0
	ldr r0, [fp, #-76]
	ldr r0, =0
	mov r3, r0
	ldr r1, =0
	ldr r0, =1000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L528
	b .L532
.L528:
	b .L533
.L529:
	add r0, r4, #1
	ldr r4, [fp, #-20]
	cmp r0, r4
	movge r4, #1
	movlt r4, #0
	bge .L575
	b .L579
.L532:
	ldr r0, [fp, #-72]
	mov r3, r0
	ldr r0, [fp, #-76]
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	b .L529
.L533:
	mov r2, r10
	ldr r0, =0
	mov r1, r0
	ldr r9, =0
	ldr r0, =10000000
	cmp r9, r0
	movlt r0, #1
	movge r0, #0
	blt .L534
	b .L538
.L534:
	ldr r9, =817
	sdiv r0, r2, r9
	mul r0, r0, r9
	sub r0, r2, r0
	ldr r2, addr_arr13
	ldr r9, =5760
	mla r2, r8, r9, r2
	ldr r9, =2880
	mla r2, r7, r9, r2
	ldr r9, =960
	mla r2, r6, r9, r2
	mov r9, #240
	mla r2, r5, r9, r2
	mov r9, #48
	mla r2, r4, r9, r2
	mov r9, #8
	mla r2, r3, r9, r2
	mov r9, #4
	mla r2, r1, r9, r2
	ldr r2, [r2]
	add r0, r0, r2
	ldr r2, addr_arr23
	ldr r9, =10752
	mla r2, r8, r9, r2
	ldr r9, =5376
	mla r2, r7, r9, r2
	ldr r9, =1792
	mla r2, r6, r9, r2
	ldr r9, =896
	mla r2, r5, r9, r2
	mov r9, #224
	mla r2, r4, r9, r2
	mov r9, #28
	mla r2, r3, r9, r2
	mov r9, #4
	mla r2, r1, r9, r2
	ldr r2, [r2]
	add r10, r0, r2
	add r0, r1, #1
	ldr r1, [fp, #-28]
	cmp r0, r1
	movge r1, #1
	movlt r1, #0
	bge .L553
	b .L557
.L535:
	add r0, r3, #1
	ldr r2, [fp, #-24]
	cmp r0, r2
	movge r2, #1
	movlt r2, #0
	bge .L564
	b .L568
.L538:
	mov r9, r10
	ldr r0, =0
	mov r1, r0
	b .L535
.L553:
	mov r9, r10
	mov r1, r0
	b .L535
.L554:
	mov r2, r10
	mov r1, r0
	ldr r9, =10000000
	cmp r0, r9
	movlt r9, #1
	movge r9, #0
	blt .L534
	b .L563
.L557:
	b .L554
.L563:
	mov r9, r10
	mov r1, r0
	b .L535
.L564:
	mov r3, r9
	mov r2, r1
	mov r1, r0
	b .L529
.L565:
	mov r10, r9
	mov r2, r1
	mov r3, r0
	ldr r2, =1000000
	cmp r0, r2
	movlt r2, #1
	movge r2, #0
	blt .L528
	b .L574
.L568:
	b .L565
.L574:
	mov r3, r9
	mov r2, r1
	mov r1, r0
	b .L529
.L575:
	mov r10, r3
	mov r9, r2
	mov r4, r1
	mov r1, r0
	b .L523
.L576:
	mov r4, r3
	str r4, [fp, #-72]
	mov r4, r2
	str r4, [fp, #-76]
	mov r4, r1
	mov r4, r0
	ldr r9, =100000
	cmp r0, r9
	movlt r9, #1
	movge r9, #0
	blt .L522
	b .L585
.L579:
	b .L576
.L585:
	mov r10, r3
	mov r9, r2
	mov r4, r1
	mov r1, r0
	b .L523
	b .F3
.LTORG
addr_arr13:
	.word arr1
addr_arr23:
	.word arr2
.F3:
.L586:
	mov r5, r9
	mov r3, r4
	mov r2, r1
	mov r1, r0
	b .L517
.L587:
	mov r2, r10
	str r2, [fp, #-64]
	mov r2, r9
	str r2, [fp, #-68]
	mov r2, r4
	mov r3, r1
	mov r5, r0
	ldr r3, =10000
	cmp r0, r3
	movlt r3, #1
	movge r3, #0
	blt .L516
	b .L596
.L590:
	b .L587
.L596:
	mov r5, r9
	mov r3, r4
	mov r2, r1
	mov r1, r0
	b .L517
.L597:
	mov r9, r5
	mov r6, r3
	mov r5, r2
	mov r4, r1
	mov r1, r0
	b .L511
.L598:
	mov r4, r10
	str r4, [fp, #-48]
	mov r4, r5
	str r4, [fp, #-52]
	mov r4, r3
	str r4, [fp, #-56]
	mov r4, r2
	str r4, [fp, #-60]
	mov r4, r1
	mov r6, r0
	ldr r4, =1000
	cmp r0, r4
	movlt r4, #1
	movge r4, #0
	blt .L510
	b .L607
.L601:
	b .L598
.L607:
	mov r9, r5
	mov r6, r3
	mov r5, r2
	mov r4, r1
	mov r1, r0
	b .L511
.L608:
	mov r7, r9
	mov r3, r5
	mov r2, r4
	b .L505
.L609:
	mov r2, r10
	str r2, [fp, #-36]
	mov r2, r9
	str r2, [fp, #-40]
	mov r2, r6
	str r2, [fp, #-44]
	mov r3, r5
	mov r2, r4
	mov r7, r1
	mov r7, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L504
	b .L618
.L612:
	b .L609
.L618:
	mov r7, r9
	mov r3, r5
	mov r2, r4
	b .L505
.L619:
	mov r1, r10
	b .L499
.L620:
	mov r4, r10
	str r4, [fp, #-32]
	mov r9, r7
	mov r5, r3
	mov r4, r2
	mov r8, r0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L498
	b .L629
.L623:
	b .L620
.L629:
	mov r1, r10
	b .L499

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L630:
	bl getint
	str r0, [fp, #-4]
	bl getint
	mov r9, r0
	bl getint
	str r0, [fp, #-8]
	bl getint
	mov r10, r0
	bl getint
	mov r8, r0
	bl getint
	mov r7, r0
	bl getint
	mov r6, r0
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	ldr r0, [fp, #-4]
	mov r1, r9
	bl loop1
	bl loop2
	ldr r0, [fp, #-8]
	mov r1, r10
	mov r2, r8
	mov r3, r7
	push {r4}
	push {r5}
	push {r6}
	bl loop3
	add sp, sp, #12
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_arr14:
	.word arr1
addr_arr24:
	.word arr2
	.ident "ZWJM"
