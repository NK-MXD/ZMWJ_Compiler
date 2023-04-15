	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global intt
	.align 4
	.size intt, 4
intt:
	.word 0
	.global chat
	.align 4
	.size chat, 4
chat:
	.word 0
	.global i
	.align 4
	.size i, 4
i:
	.word 0
	.global ii
	.align 4
	.size ii, 4
ii:
	.word 1
	.global c
	.align 4
	.size c, 4
c:
	.word 0
	.comm ints, 40000, 4
	.comm chas, 40000, 4
	.comm get, 40000, 4
	.comm get2, 40000, 4
	.text
	.global isdigit
	.type isdigit , %function
isdigit:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L390:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #48
	movge r0, #1
	movlt r0, #0
	bge .L394
	b .L397
.L392:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L393:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L394:
	ldr r0, [fp, #-4]
	cmp r0, #57
	movle r0, #1
	movgt r0, #0
	ble .L392
	b .L400
.L397:
	b .L393
.L400:
	b .L393

	.global power
	.type power , %function
power:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L401:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =1
	str r0, [fp, #-12]
	b .L405
.L405:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L406
	b .L410
.L406:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	mul r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L406
	b .L415
.L407:
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L410:
	b .L407
.L415:
	b .L407

	.global getstr
	.type getstr , %function
getstr:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L416:
	str r0, [fp, #-4]
	bl getch
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L420
.L420:
	ldr r0, [fp, #-8]
	cmp r0, #13
	movne r0, #1
	moveq r0, #0
	bne .L436
	b .L426
.L421:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	bl getch
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #13
	movne r0, #1
	moveq r0, #0
	bne .L436
	b .L439
.L422:
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L426:
	b .L422
.L436:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movne r0, #1
	moveq r0, #0
	bne .L421
	b .L442
.L439:
	b .L422
.L442:
	b .L422

	.global intpush
	.type intpush , %function
intpush:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L443:
	str r0, [fp, #-4]
	ldr r1, addr_intt0
	ldr r1, [r1]
	add r2, r1, #1
	ldr r1, addr_intt0
	str r2, [r1]
	ldr r3, [fp, #-4]
	ldr r1, addr_intt0
	ldr r1, [r1]
	ldr r2, addr_ints0
	mov r4, #4
	mla r1, r1, r4, r2
	str r3, [r1]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global chapush
	.type chapush , %function
chapush:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L445:
	str r0, [fp, #-4]
	ldr r1, addr_chat0
	ldr r1, [r1]
	add r2, r1, #1
	ldr r1, addr_chat0
	str r2, [r1]
	ldr r4, [fp, #-4]
	ldr r1, addr_chat0
	ldr r3, [r1]
	ldr r2, addr_chas0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global intpop
	.type intpop , %function
intpop:
	push {r3, r4, fp, lr}
	mov fp, sp
.L447:
	ldr r0, addr_intt0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_intt0
	str r1, [r0]
	ldr r0, addr_intt0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r1, addr_ints0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr

	.global chapop
	.type chapop , %function
chapop:
	push {r3, r4, fp, lr}
	mov fp, sp
.L449:
	ldr r0, addr_chat0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_chat0
	str r1, [r0]
	ldr r0, addr_chat0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r1, addr_chas0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr

	.global intadd
	.type intadd , %function
intadd:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L451:
	str r0, [fp, #-4]
	ldr r1, addr_intt0
	ldr r3, [r1]
	ldr r2, addr_ints0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r1, =10
	mul r4, r2, r1
	ldr r1, addr_intt0
	ldr r3, [r1]
	ldr r2, addr_ints0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	ldr r1, addr_intt0
	ldr r3, [r1]
	ldr r2, addr_ints0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	ldr r1, [fp, #-4]
	add r4, r2, r1
	ldr r1, addr_intt0
	ldr r3, [r1]
	ldr r2, addr_ints0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global find
	.type find , %function
find:
	push {r3, r4, fp, lr}
	mov fp, sp
.L455:
	bl chapop
	mov r1, r0
	ldr r0, addr_c0
	str r1, [r0]
	ldr r0, addr_ii0
	ldr r2, [r0]
	ldr r1, addr_get20
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =32
	str r0, [r1]
	ldr r0, addr_c0
	ldr r3, [r0]
	ldr r0, addr_ii0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r1, addr_get20
	mov r0, #4
	mla r0, r2, r0, r1
	str r3, [r0]
	ldr r0, addr_ii0
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii0
	str r1, [r0]
	ldr r0, addr_chat0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L456
	b .L460
.L456:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L457:
	mov r0, #1
	pop {r3, r4, fp, lr}
	bx lr
.L460:
	b .L457

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L461:
	ldr r1, =0
	ldr r0, addr_intt0
	str r1, [r0]
	ldr r1, =0
	ldr r0, addr_chat0
	str r1, [r0]
	mov r2, #0
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	bl getstr
	str r0, [fp, #-4]
	b .L463
.L463:
	ldr r0, addr_i0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L464
	b .L468
.L464:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl isdigit
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L469
	b .L475
.L465:
	b .L908
.L468:
	b .L465
.L469:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r3, [r0]
	ldr r0, addr_ii0
	ldr r2, [r0]
	ldr r1, addr_get20
	mov r0, #4
	mla r0, r2, r0, r1
	str r3, [r0]
	ldr r0, addr_ii0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii0
	str r1, [r0]
	b .L471
.L470:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #40
	moveq r0, #1
	movne r0, #0
	beq .L477
	b .L482
.L471:
	ldr r0, addr_i0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_i0
	str r1, [r0]
	ldr r0, addr_i0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L464
	b .L907
.L475:
	b .L470
.L477:
	mov r0, #40
	bl chapush
	b .L478
.L478:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L483
	b .L488
.L482:
	b .L478
.L483:
	mov r0, #94
	bl chapush
	b .L484
.L484:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #41
	moveq r0, #1
	movne r0, #0
	beq .L489
	b .L494
.L488:
	b .L484
.L489:
	bl chapop
	mov r1, r0
	ldr r0, addr_c0
	str r1, [r0]
	b .L495
.L490:
	ldr r0, addr_i0
	ldr r2, [r0]
	ldr r1, addr_get0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L506
	b .L511
.L494:
	b .L490
.L495:
	ldr r0, addr_c0
	ldr r0, [r0]
	cmp r0, #40
	movne r0, #1
	moveq r0, #0
	bne .L496
	b .L500
.L496:
	ldr r0, addr_ii0
	ldr r2, [r0]
	ldr r1, addr_get20
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =32
	str r0, [r1]
	ldr r0, addr_c0
	ldr r0, [r0]
	ldr r1, addr_ii0
	ldr r1, [r1]
	add r3, r1, #1
	ldr r2, addr_get20
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	ldr r0, addr_ii0
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii0
	str r1, [r0]
	bl chapop
	mov r1, r0
	ldr r0, addr_c0
	str r1, [r0]
	ldr r0, addr_c0
	ldr r0, [r0]
	cmp r0, #40
	movne r0, #1
	moveq r0, #0
	bne .L496
	b .L505
	b .F0
.LTORG
addr_ints0:
	.word ints
addr_intt0:
	.word intt
addr_chas0:
	.word chas
addr_chat0:
	.word chat
addr_i0:
	.word i
addr_ii0:
	.word ii
addr_c0:
	.word c
addr_get0:
	.word get
addr_get20:
	.word get2
.F0:
.L497:
	b .L490
.L500:
	b .L497
.L505:
	b .L497
.L506:
	b .L512
.L507:
	ldr r0, addr_i1
	ldr r2, [r0]
	ldr r1, addr_get1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L602
	b .L607
.L511:
	b .L507
.L512:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L523
.L513:
	bl find
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L544
	b .L548
.L514:
	mov r0, #43
	bl chapush
	b .L507
.L523:
	b .L577
.L544:
	b .L514
.L545:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L581
.L548:
	b .L545
.L573:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L601
.L574:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L597
.L575:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L593
.L576:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L589
.L577:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L513
	b .L585
.L581:
	b .L577
.L585:
	b .L576
.L589:
	b .L575
.L593:
	b .L574
.L597:
	b .L573
.L601:
	b .L514
.L602:
	b .L608
.L603:
	ldr r0, addr_i1
	ldr r2, [r0]
	ldr r1, addr_get1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L698
	b .L703
.L607:
	b .L603
.L608:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L619
.L609:
	bl find
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L640
	b .L644
.L610:
	mov r0, #45
	bl chapush
	b .L603
.L619:
	b .L673
.L640:
	b .L610
.L641:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L677
.L644:
	b .L641
.L669:
	ldr r0, addr_chat1
	ldr r2, [r0]
	ldr r1, addr_chas1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L697
	b .F1
.LTORG
addr_ints1:
	.word ints
addr_intt1:
	.word intt
addr_chas1:
	.word chas
addr_chat1:
	.word chat
addr_i1:
	.word i
addr_ii1:
	.word ii
addr_c1:
	.word c
addr_get1:
	.word get
addr_get21:
	.word get2
.F1:
.L670:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L693
.L671:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L689
.L672:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L685
.L673:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L609
	b .L681
.L677:
	b .L673
.L681:
	b .L672
.L685:
	b .L671
.L689:
	b .L670
.L693:
	b .L669
.L697:
	b .L610
.L698:
	b .L704
.L699:
	ldr r0, addr_i2
	ldr r2, [r0]
	ldr r1, addr_get2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L766
	b .L771
.L703:
	b .L699
.L704:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L705
	b .L713
.L705:
	bl find
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L726
	b .L730
.L706:
	mov r0, #42
	bl chapush
	b .L699
.L713:
	b .L749
.L726:
	b .L706
.L727:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L705
	b .L753
.L730:
	b .L727
.L747:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L705
	b .L765
.L748:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L705
	b .L761
.L749:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L705
	b .L757
.L753:
	b .L749
.L757:
	b .L748
.L761:
	b .L747
.L765:
	b .L706
.L766:
	b .L772
.L767:
	ldr r0, addr_i2
	ldr r2, [r0]
	ldr r1, addr_get2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L834
	b .L839
.L771:
	b .L767
.L772:
	ldr r0, addr_chat2
	ldr r2, [r0]
	ldr r1, addr_chas2
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L773
	b .L781
.L773:
	bl find
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L794
	b .L798
	b .F2
.LTORG
addr_ints2:
	.word ints
addr_intt2:
	.word intt
addr_chas2:
	.word chas
addr_chat2:
	.word chat
addr_i2:
	.word i
addr_ii2:
	.word ii
addr_c2:
	.word c
addr_get2:
	.word get
addr_get22:
	.word get2
.F2:
.L774:
	mov r0, #47
	bl chapush
	b .L767
.L781:
	b .L817
.L794:
	b .L774
.L795:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L773
	b .L821
.L798:
	b .L795
.L815:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L773
	b .L833
.L816:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L773
	b .L829
.L817:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L773
	b .L825
.L821:
	b .L817
.L825:
	b .L816
.L829:
	b .L815
.L833:
	b .L774
.L834:
	b .L840
.L835:
	ldr r0, addr_ii3
	ldr r2, [r0]
	ldr r1, addr_get23
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =32
	str r0, [r1]
	ldr r0, addr_ii3
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii3
	str r1, [r0]
	b .L471
.L839:
	b .L835
.L840:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L841
	b .L849
.L841:
	bl find
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L862
	b .L866
.L842:
	mov r0, #37
	bl chapush
	b .L835
.L849:
	b .L885
.L862:
	b .L842
.L863:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L841
	b .L889
.L866:
	b .L863
.L883:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L841
	b .L901
.L884:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L841
	b .L897
.L885:
	ldr r0, addr_chat3
	ldr r2, [r0]
	ldr r1, addr_chas3
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L841
	b .L893
.L889:
	b .L885
.L893:
	b .L884
.L897:
	b .L883
.L901:
	b .L842
.L907:
	b .L465
.L908:
	ldr r0, addr_chat3
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L909
	b .L913
.L909:
	bl chapop
	str r0, [fp, #-8]
	ldr r0, addr_ii3
	ldr r2, [r0]
	ldr r1, addr_get23
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =32
	str r0, [r1]
	ldr r0, [fp, #-8]
	ldr r1, addr_ii3
	ldr r1, [r1]
	add r3, r1, #1
	ldr r2, addr_get23
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	ldr r0, addr_ii3
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii3
	str r1, [r0]
	ldr r0, addr_chat3
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L909
	b .L919
	b .F3
.LTORG
addr_ints3:
	.word ints
addr_intt3:
	.word intt
addr_chas3:
	.word chas
addr_chat3:
	.word chat
addr_i3:
	.word i
addr_ii3:
	.word ii
addr_c3:
	.word c
addr_get3:
	.word get
addr_get23:
	.word get2
.F3:
.L910:
	ldr r0, addr_ii4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =64
	str r0, [r1]
	ldr r1, =1
	ldr r0, addr_i4
	str r1, [r0]
	b .L920
.L913:
	b .L910
.L919:
	b .L910
.L920:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #64
	movne r0, #1
	moveq r0, #0
	bne .L921
	b .L926
.L921:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L938
.L922:
	mov r2, #1
	ldr r1, addr_ints4
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L926:
	b .L922
.L927:
	bl intpop
	str r0, [fp, #-12]
	bl intpop
	str r0, [fp, #-16]
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L962
	b .L967
.L928:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L998
	b .L1003
.L929:
	ldr r0, addr_i4
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_i4
	str r1, [r0]
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #64
	movne r0, #1
	moveq r0, #0
	bne .L921
	b .L1028
.L930:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L958
.L931:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L954
.L932:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L950
.L933:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L946
.L934:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L927
	b .L942
.L938:
	b .L934
.L942:
	b .L933
.L946:
	b .L932
.L950:
	b .L931
.L954:
	b .L930
.L958:
	b .L928
.L962:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	str r0, [fp, #-20]
	b .L963
.L963:
	ldr r0, addr_i4
	ldr r2, [r0]
	ldr r1, addr_get24
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L968
	b .L973
	b .F4
.LTORG
addr_ints4:
	.word ints
addr_intt4:
	.word intt
addr_chas4:
	.word chas
addr_chat4:
	.word chat
addr_i4:
	.word i
addr_ii4:
	.word ii
addr_c4:
	.word c
addr_get4:
	.word get
addr_get24:
	.word get2
.F4:
.L967:
	b .L963
.L968:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	str r0, [fp, #-20]
	b .L969
.L969:
	ldr r0, addr_i5
	ldr r2, [r0]
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L974
	b .L979
.L973:
	b .L969
.L974:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	mul r0, r1, r0
	str r0, [fp, #-20]
	b .L975
.L975:
	ldr r0, addr_i5
	ldr r2, [r0]
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L980
	b .L985
.L979:
	b .L975
.L980:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	sdiv r0, r1, r0
	str r0, [fp, #-20]
	b .L981
.L981:
	ldr r0, addr_i5
	ldr r2, [r0]
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L986
	b .L991
.L985:
	b .L981
.L986:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-20]
	b .L987
.L987:
	ldr r0, addr_i5
	ldr r2, [r0]
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L992
	b .L997
.L991:
	b .L987
.L992:
	ldr r0, [fp, #-16]
	ldr r1, [fp, #-12]
	bl power
	str r0, [fp, #-20]
	b .L993
.L993:
	ldr r0, [fp, #-20]
	bl intpush
	b .L929
.L997:
	b .L993
.L998:
	ldr r0, addr_i5
	ldr r2, [r0]
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	sub r0, r0, #48
	bl intpush
	ldr r1, =1
	ldr r0, addr_ii5
	str r1, [r0]
	b .L1005
.L999:
	b .L929
.L1003:
	b .L999
.L1005:
	ldr r0, addr_i5
	ldr r1, [r0]
	ldr r0, addr_ii5
	ldr r0, [r0]
	add r2, r1, r0
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L1006
	b .L1011
.L1006:
	ldr r0, addr_i5
	ldr r1, [r0]
	ldr r0, addr_ii5
	ldr r0, [r0]
	add r2, r1, r0
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	sub r0, r0, #48
	bl intadd
	ldr r0, addr_ii5
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii5
	str r1, [r0]
	ldr r0, addr_i5
	ldr r1, [r0]
	ldr r0, addr_ii5
	ldr r0, [r0]
	add r2, r1, r0
	ldr r1, addr_get25
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L1006
	b .L1021
.L1007:
	ldr r0, addr_i5
	ldr r1, [r0]
	ldr r0, addr_ii5
	ldr r0, [r0]
	add r0, r1, r0
	sub r1, r0, #1
	ldr r0, addr_i5
	str r1, [r0]
	b .L999
.L1011:
	b .L1007
.L1021:
	b .L1007
.L1028:
	b .L922

addr_ints5:
	.word ints
addr_intt5:
	.word intt
addr_chas5:
	.word chas
addr_chat5:
	.word chat
addr_i5:
	.word i
addr_ii5:
	.word ii
addr_c5:
	.word c
addr_get5:
	.word get
addr_get25:
	.word get2
	.ident "ZWJM"
