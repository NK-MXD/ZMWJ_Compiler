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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L284:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L294
.L294:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L383
	b .L300
.L295:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L304
.L296:
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L300:
	b .L296
.L304:
	ldr r4, [fp, #-16]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L305
	b .L309
.L305:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L310
.L306:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L383
	b .L386
.L309:
	b .L306
.L310:
	ldr r4, [fp, #-20]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L311
	b .L315
.L311:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L316
.L312:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L305
	b .L375
.L315:
	b .L312
.L316:
	ldr r4, [fp, #-24]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L317
	b .L321
.L317:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L322
.L318:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L311
	b .L370
.L321:
	b .L318
.L322:
	ldr r4, [fp, #-28]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L323
	b .L327
.L323:
	ldr r4, =0
	str r4, [fp, #-32]
	b .L328
.L324:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L317
	b .L365
.L327:
	b .L324
.L328:
	ldr r4, [fp, #-32]
	cmp r4, #6
	movlt r4, #1
	movge r4, #0
	blt .L329
	b .L333
.L329:
	ldr r4, =0
	str r4, [fp, #-36]
	b .L334
.L330:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L323
	b .L360
.L333:
	b .L330
.L334:
	ldr r4, [fp, #-36]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L335
	b .L339
.L335:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	ldr r4, [fp, #-20]
	add r5, r6, r4
	ldr r4, [fp, #-24]
	add r6, r5, r4
	ldr r4, [fp, #-28]
	add r5, r6, r4
	ldr r4, [fp, #-32]
	add r6, r5, r4
	ldr r4, [fp, #-36]
	add r5, r6, r4
	ldr r4, [fp, #-4]
	add r6, r5, r4
	ldr r4, [fp, #-8]
	add r5, r6, r4
	ldr r4, [fp, #-12]
	ldr r6, addr_arr10
	ldr r7, =5760
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-16]
	ldr r7, =2880
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-20]
	ldr r7, =960
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-24]
	mov r7, #240
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-28]
	mov r7, #48
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-32]
	mov r7, #8
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-36]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-36]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r4, [fp, #-36]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L335
	b .L350
	b .F0
.LTORG
addr_arr10:
	.word arr1
addr_arr20:
	.word arr2
.F0:
.L336:
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	cmp r4, #6
	movlt r4, #1
	movge r4, #0
	blt .L329
	b .L355
.L339:
	b .L336
.L350:
	b .L336
.L355:
	b .L330
.L360:
	b .L324
.L365:
	b .L318
.L370:
	b .L312
.L375:
	b .L306
.L383:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L295
	b .L389
.L386:
	b .L296
.L389:
	b .L296

	.global loop2
	.type loop2 , %function
loop2:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L390:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L398
.L398:
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L399
	b .L403
.L399:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L404
.L400:
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L403:
	b .L400
.L404:
	ldr r4, [fp, #-8]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L409
.L405:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L410
.L406:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L399
	b .L480
.L409:
	b .L406
.L410:
	ldr r4, [fp, #-12]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L411
	b .L415
.L411:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L416
.L412:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L475
.L415:
	b .L412
.L416:
	ldr r4, [fp, #-16]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L417
	b .L421
.L417:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L422
.L418:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L411
	b .L470
.L421:
	b .L418
.L422:
	ldr r4, [fp, #-20]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L423
	b .L427
.L423:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L428
.L424:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L417
	b .L465
.L427:
	b .L424
.L428:
	ldr r4, [fp, #-24]
	cmp r4, #8
	movlt r4, #1
	movge r4, #0
	blt .L429
	b .L433
.L429:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L434
.L430:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L423
	b .L460
.L433:
	b .L430
.L434:
	ldr r4, [fp, #-28]
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L435
	b .L439
.L435:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-16]
	add r5, r6, r4
	ldr r4, [fp, #-28]
	add r6, r5, r4
	ldr r4, [fp, #-4]
	ldr r5, addr_arr21
	ldr r7, =10752
	mul r8, r4, r7
	add r4, r5, r8
	mov r5, r4
	ldr r4, [fp, #-8]
	ldr r7, =5376
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-12]
	ldr r7, =1792
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [fp, #-16]
	ldr r7, =896
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-20]
	mov r7, #224
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [fp, #-24]
	mov r7, #28
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-28]
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L435
	b .L450
	b .F1
.LTORG
addr_arr11:
	.word arr1
addr_arr21:
	.word arr2
.F1:
.L436:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #8
	movlt r4, #1
	movge r4, #0
	blt .L429
	b .L455
.L439:
	b .L436
.L450:
	b .L436
.L455:
	b .L430
.L460:
	b .L424
.L465:
	b .L418
.L470:
	b .L412
.L475:
	b .L406
.L480:
	b .L400

	.global loop3
	.type loop3 , %function
loop3:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L481:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #32]
	str r3, [fp, #-20]
	ldr r3, [fp, #36]
	str r3, [fp, #-24]
	ldr r3, [fp, #40]
	str r3, [fp, #-28]
	ldr r4, =0
	str r4, [fp, #-60]
	ldr r4, =0
	str r4, [fp, #-32]
	b .L497
.L497:
	ldr r4, [fp, #-32]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L498
	b .L502
.L498:
	ldr r4, =0
	str r4, [fp, #-36]
	b .L503
.L499:
	ldr r4, [fp, #-60]
	mov r0, r4
	add sp, sp, #64
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L502:
	b .L499
.L503:
	ldr r4, [fp, #-36]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L504
	b .L508
.L504:
	ldr r4, =0
	str r4, [fp, #-40]
	b .L509
.L505:
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L619
	b .L623
.L508:
	b .L505
.L509:
	ldr r4, [fp, #-40]
	ldr r5, =1000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L510
	b .L514
.L510:
	ldr r4, =0
	str r4, [fp, #-44]
	b .L515
.L511:
	ldr r4, [fp, #-36]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L608
	b .L612
.L514:
	b .L511
.L515:
	ldr r4, [fp, #-44]
	ldr r5, =10000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L516
	b .L520
.L516:
	ldr r4, =0
	str r4, [fp, #-48]
	b .L521
.L517:
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-40]
	ldr r4, [fp, #-40]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L597
	b .L601
.L520:
	b .L517
.L521:
	ldr r4, [fp, #-48]
	ldr r5, =100000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L522
	b .L526
.L522:
	ldr r4, =0
	str r4, [fp, #-52]
	b .L527
.L523:
	ldr r4, [fp, #-44]
	add r5, r4, #1
	str r5, [fp, #-44]
	ldr r4, [fp, #-44]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L586
	b .L590
.L526:
	b .L523
.L527:
	ldr r4, [fp, #-52]
	ldr r5, =1000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L528
	b .L532
.L528:
	ldr r4, =0
	str r4, [fp, #-56]
	b .L533
.L529:
	ldr r4, [fp, #-48]
	add r5, r4, #1
	str r5, [fp, #-48]
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L575
	b .L579
.L532:
	b .L529
.L533:
	ldr r4, [fp, #-56]
	ldr r5, =10000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L534
	b .L538
.L534:
	ldr r4, [fp, #-60]
	ldr r5, =817
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	ldr r4, [fp, #-32]
	ldr r6, addr_arr12
	ldr r7, =5760
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-36]
	ldr r7, =2880
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-40]
	ldr r7, =960
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-44]
	mov r7, #240
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-48]
	mov r7, #48
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [fp, #-52]
	mov r7, #8
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [fp, #-56]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-32]
	ldr r5, addr_arr22
	ldr r7, =10752
	mul r8, r4, r7
	add r4, r5, r8
	mov r5, r4
	ldr r4, [fp, #-36]
	ldr r7, =5376
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-40]
	ldr r7, =1792
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [fp, #-44]
	ldr r7, =896
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-48]
	mov r7, #224
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [fp, #-52]
	mov r7, #28
	mul r8, r4, r7
	add r4, r5, r8
	ldr r5, [fp, #-56]
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	str r5, [fp, #-60]
	ldr r4, [fp, #-56]
	add r5, r4, #1
	str r5, [fp, #-56]
	ldr r4, [fp, #-56]
	ldr r5, [fp, #-28]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L553
	b .L557
	b .F2
.LTORG
addr_arr12:
	.word arr1
addr_arr22:
	.word arr2
.F2:
.L535:
	ldr r4, [fp, #-52]
	add r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-24]
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L564
	b .L568
.L538:
	b .L535
.L553:
	b .L535
.L554:
	ldr r4, [fp, #-56]
	ldr r5, =10000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L534
	b .L563
.L557:
	b .L554
.L563:
	b .L535
.L564:
	b .L529
.L565:
	ldr r4, [fp, #-52]
	ldr r5, =1000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L528
	b .L574
.L568:
	b .L565
.L574:
	b .L529
.L575:
	b .L523
.L576:
	ldr r4, [fp, #-48]
	ldr r5, =100000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L522
	b .L585
.L579:
	b .L576
.L585:
	b .L523
.L586:
	b .L517
.L587:
	ldr r4, [fp, #-44]
	ldr r5, =10000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L516
	b .L596
.L590:
	b .L587
.L596:
	b .L517
.L597:
	b .L511
.L598:
	ldr r4, [fp, #-40]
	ldr r5, =1000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L510
	b .L607
.L601:
	b .L598
.L607:
	b .L511
.L608:
	b .L505
.L609:
	ldr r4, [fp, #-36]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L504
	b .L618
.L612:
	b .L609
.L618:
	b .L505
.L619:
	b .L499
.L620:
	ldr r4, [fp, #-32]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L498
	b .L629
.L623:
	b .L620
.L629:
	b .L499

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L630:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	str r4, [fp, #-16]
	bl getint
	mov r4, r0
	str r4, [fp, #-20]
	bl getint
	mov r4, r0
	str r4, [fp, #-24]
	bl getint
	mov r4, r0
	str r4, [fp, #-28]
	bl getint
	mov r4, r0
	str r4, [fp, #-32]
	bl getint
	mov r4, r0
	str r4, [fp, #-36]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r0, r4
	mov r1, r5
	bl loop1
	bl loop2
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-24]
	ldr r8, [fp, #-28]
	ldr r9, [fp, #-32]
	ldr r10, [fp, #-36]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r10}
	push {r9}
	push {r8}
	bl loop3
	add sp, sp, #12
	mov r4, r0
	mov r0, r4
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_arr13:
	.word arr1
addr_arr23:
	.word arr2
	.ident "ZWJM"
