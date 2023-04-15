	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L388:
	str r0, [fp, #-4]
	mov r4, #0
	mov r5, #0
	mov r5, #0
	str r5, [fp, #-12]
	b .L392
.L392:
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	ldr r6, [fp, #-12]
	cmp r6, r5
	movlt r5, #1
	movge r5, #0
	blt .L393
	b .L397
.L393:
	add r5, r4, #0
	mov r6, #0
	str r6, [fp, #-8]
	b .L398
.L394:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L397:
	b .L394
.L398:
	ldr r6, addr_n0
	ldr r7, [r6]
	ldr r6, [fp, #-12]
	sub r8, r7, r6
	sub r6, r8, #1
	ldr r7, [fp, #-8]
	cmp r7, r6
	movlt r6, #1
	movge r6, #0
	blt .L399
	b .L403
.L399:
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-8]
	mul r9, r8, r7
	add r7, r6, r9
	ldr r6, [r7]
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	add r9, r8, #1
	mov r8, #4
	mul r10, r9, r8
	add r8, r7, r10
	ldr r7, [r8]
	cmp r6, r7
	movgt r6, #1
	movle r6, #0
	bgt .L404
	b .L412
.L400:
	ldr r6, [fp, #-12]
	add r7, r6, #1
	add r4, r5, #0
	ldr r6, [fp, #-8]
	add r8, r6, #0
	add r6, r7, #0
	str r6, [fp, #-12]
	b .L392
.L403:
	b .L400
.L404:
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-8]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [r6]
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-8]
	mul r9, r8, r7
	add r7, r6, r9
	ldr r6, [r7]
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	add r9, r8, #1
	mov r8, #4
	mul r10, r9, r8
	add r8, r7, r10
	str r6, [r8]
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-8]
	mul r9, r8, r7
	add r7, r6, r9
	str r4, [r7]
	add r6, r4, #0
	b .L405
.L405:
	ldr r4, [fp, #-8]
	add r7, r4, #1
	add r5, r6, #0
	add r4, r7, #0
	str r4, [fp, #-8]
	b .L398
.L412:
	add r6, r5, #0
	b .L405

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L420:
	str r0, [fp, #-4]
	mov r4, #0
	mov r4, #0
	mov r4, #1
	b .L423
.L423:
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r5, #1
	movge r5, #0
	blt .L424
	b .L428
.L424:
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r6, r5, r7
	ldr r5, [r6]
	sub r6, r4, #1
	add r7, r6, #0
	str r7, [fp, #-8]
	b .L433
.L425:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L428:
	b .L425
.L433:
	ldr r6, =0
	sub r7, r6, #1
	ldr r6, [fp, #-8]
	cmp r6, r7
	movgt r6, #1
	movle r6, #0
	bgt .L436
	b .L439
.L434:
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-8]
	mul r9, r8, r7
	add r7, r6, r9
	ldr r6, [r7]
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	add r9, r8, #1
	mov r8, #4
	mul r10, r9, r8
	add r8, r7, r10
	str r6, [r8]
	ldr r6, [fp, #-8]
	sub r7, r6, #1
	add r6, r7, #0
	str r6, [fp, #-8]
	b .L433
.L435:
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-8]
	add r8, r7, #1
	mov r7, #4
	mul r9, r8, r7
	add r7, r6, r9
	str r5, [r7]
	add r6, r4, #1
	ldr r7, [fp, #-8]
	add r8, r7, #0
	add r7, r5, #0
	add r4, r6, #0
	b .L423
.L436:
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-8]
	mul r9, r8, r7
	add r7, r6, r9
	ldr r6, [r7]
	cmp r5, r6
	movlt r6, #1
	movge r6, #0
	blt .L434
	b .L444
.L439:
	b .L435
.L444:
	b .L435

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L449:
	str r0, [fp, #-4]
	cmp r1, r2
	movlt r4, #1
	movge r4, #0
	blt .L453
	b .L457
.L453:
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r6, r1, r5
	add r5, r4, r6
	ldr r4, [r5]
	str r4, [fp, #-8]
	add r4, r2, #0
	add r5, r1, #0
	b .L463
.L454:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L457:
	mov r6, #0
	mov r6, #0
	mov r6, #0
	mov r6, #0
	b .L454
.L463:
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L464
	b .L468
.L464:
	add r6, r4, #0
	b .L469
.L465:
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r5, r8
	add r8, r7, r9
	ldr r7, [fp, #-8]
	str r7, [r8]
	sub r7, r5, #1
	ldr r8, [fp, #-4]
	mov r0, r8
	mov r1, r1
	mov r2, r7
	bl QuickSort
	mov r7, r0
	add r7, r5, #1
	ldr r8, [fp, #-4]
	mov r0, r8
	mov r1, r7
	mov r2, r2
	bl QuickSort
	mov r7, r0
	add r8, r7, #0
	ldr r7, [fp, #-8]
	add r8, r7, #0
	add r7, r4, #0
	add r7, r5, #0
	b .L454
.L468:
	b .L465
.L469:
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L472
	b .L475
.L470:
	sub r7, r6, #1
	add r6, r7, #0
	b .L469
.L471:
	cmp r5, r6
	movlt r7, #1
	movge r7, #0
	blt .L481
	b .L485
.L472:
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r6, r8
	add r8, r7, r9
	ldr r7, [r8]
	ldr r8, [fp, #-8]
	sub r9, r8, #1
	cmp r7, r9
	movgt r7, #1
	movle r7, #0
	bgt .L470
	b .L480
.L475:
	b .L471
.L480:
	b .L471
.L481:
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r6, r8
	add r8, r7, r9
	ldr r7, [r8]
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r5, r9
	add r9, r8, r10
	str r7, [r9]
	add r7, r5, #1
	add r8, r7, #0
	b .L482
.L482:
	add r7, r8, #0
	str r7, [fp, #-12]
	b .L489
.L485:
	add r8, r5, #0
	b .L482
.L489:
	ldr r7, [fp, #-12]
	cmp r7, r6
	movlt r7, #1
	movge r7, #0
	blt .L492
	b .L495
.L490:
	ldr r7, [fp, #-12]
	add r8, r7, #1
	add r7, r8, #0
	str r7, [fp, #-12]
	b .L489
.L491:
	ldr r7, [fp, #-12]
	cmp r7, r6
	movlt r7, #1
	movge r7, #0
	blt .L501
	b .L505
.L492:
	ldr r7, [fp, #-4]
	mov r8, #4
	ldr r9, [fp, #-12]
	mul r10, r9, r8
	add r8, r7, r10
	ldr r7, [r8]
	ldr r8, [fp, #-8]
	cmp r7, r8
	movlt r7, #1
	movge r7, #0
	blt .L490
	b .L500
.L495:
	b .L491
.L500:
	b .L491
.L501:
	ldr r7, [fp, #-4]
	mov r8, #4
	ldr r9, [fp, #-12]
	mul r10, r9, r8
	add r8, r7, r10
	ldr r7, [r8]
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r6, r9
	add r9, r8, r10
	str r7, [r9]
	sub r7, r6, #1
	add r8, r7, #0
	b .L502
.L502:
	add r4, r8, #0
	ldr r7, [fp, #-12]
	add r5, r7, #0
	b .L463
.L505:
	add r8, r6, #0
	b .L502

	.global getMid
	.type getMid , %function
getMid:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L513:
	str r0, [fp, #-4]
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L516
	b .L521
.L516:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	sub r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L517:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L521:
	b .L517

	.global getMost
	.type getMost , %function
getMost:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =4016
	sub sp, sp, r4
.L528:
	str r0, [fp, #-4]
	mov r4, #0
	b .L532
.L532:
	ldr r5, =1000
	cmp r4, r5
	movlt r5, #1
	movge r5, #0
	blt .L533
	b .L537
.L533:
	ldr r5, =-4004
	mov r6, #4
	mul r7, r4, r6
	add r6, fp, r5
	add r5, r6, r7
	ldr r6, =0
	str r6, [r5]
	add r5, r4, #1
	add r4, r5, #0
	b .L532
.L534:
	mov r4, #0
	mov r4, #0
	mov r5, #0
	mov r6, #0
	ldr r7, =-4012
	str r6, [fp, r7]
	b .L540
.L537:
	b .L534
.L540:
	ldr r6, addr_n0
	ldr r7, [r6]
	ldr r6, =-4012
	ldr r8, [fp, r6]
	cmp r8, r7
	movlt r6, #1
	movge r6, #0
	blt .L541
	b .L545
.L541:
	ldr r6, [fp, #-4]
	mov r7, #4
	ldr r8, =-4012
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, =-4008
	str r6, [fp, r7]
	ldr r6, =-4004
	mov r7, #4
	ldr r8, =-4008
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r6
	add r6, r7, r8
	ldr r7, [r6]
	add r6, r7, #1
	ldr r7, =-4004
	mov r8, #4
	ldr r9, =-4008
	ldr r10, [fp, r9]
	mul r9, r10, r8
	add r8, fp, r7
	add r7, r8, r9
	str r6, [r7]
	ldr r6, =-4004
	mov r7, #4
	ldr r8, =-4008
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r6
	add r6, r7, r8
	ldr r7, [r6]
	cmp r7, r5
	movgt r6, #1
	movle r6, #0
	bgt .L550
	b .L555
.L542:
	mov r0, r4
	ldr r1, =4016
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L545:
	b .L542
.L550:
	ldr r6, =-4004
	mov r7, #4
	ldr r8, =-4008
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r6
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =-4008
	ldr r8, [fp, r6]
	add r6, r8, #0
	add r8, r7, #0
	b .L551
.L551:
	ldr r7, =-4012
	ldr r9, [fp, r7]
	add r7, r9, #1
	ldr r9, =-4008
	ldr r10, [fp, r9]
	add r9, r10, #0
	add r4, r6, #0
	add r5, r8, #0
	add r9, r7, #0
	ldr r7, =-4012
	str r9, [fp, r7]
	b .L540
.L555:
	add r6, r4, #0
	add r8, r5, #0
	b .L551

	.global revert
	.type revert , %function
revert:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L557:
	str r0, [fp, #-4]
	mov r4, #0
	mov r5, #0
	mov r6, #0
	b .L562
.L562:
	cmp r5, r4
	movlt r6, #1
	movge r6, #0
	blt .L563
	b .L567
.L563:
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r5, r7
	add r7, r6, r8
	ldr r6, [r7]
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r4, r8
	add r8, r7, r9
	ldr r7, [r8]
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r5, r9
	add r9, r8, r10
	str r7, [r9]
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r4, r8
	add r8, r7, r9
	str r6, [r8]
	add r7, r5, #1
	sub r8, r4, #1
	add r4, r8, #0
	add r5, r7, #0
	add r7, r6, #0
	b .L562
.L564:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L567:
	b .L564

	.global calSum
	.type calSum , %function
calSum:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L574:
	str r0, [fp, #-4]
	mov r4, #0
	mov r5, #0
	b .L579
.L579:
	ldr r6, addr_n0
	ldr r7, [r6]
	cmp r4, r7
	movlt r6, #1
	movge r6, #0
	blt .L580
	b .L584
.L580:
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r4, r7
	add r7, r6, r8
	ldr r6, [r7]
	add r7, r5, r6
	sdiv r6, r4, r1
	mul r8, r6, r1
	sub r6, r4, r8
	sub r8, r1, #1
	cmp r6, r8
	movne r6, #1
	moveq r6, #0
	bne .L587
	b .L592
.L581:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L584:
	b .L581
.L587:
	ldr r6, [fp, #-4]
	mov r8, #4
	mul r9, r4, r8
	add r8, r6, r9
	ldr r6, =0
	str r6, [r8]
	add r6, r7, #0
	b .L589
.L588:
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r4, r9
	add r9, r8, r10
	str r7, [r9]
	mov r6, #0
	b .L589
.L589:
	add r8, r4, #1
	add r4, r8, #0
	add r5, r6, #0
	b .L579
.L592:
	b .L588

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L595:
	str r0, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L601
.L601:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L602
	b .L606
.L602:
	sub r4, r1, #1
	ldr r5, [fp, #-16]
	cmp r5, r4
	movlt r4, #1
	movge r4, #0
	blt .L607
	b .L612
.L603:
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, r1
	add r5, r4, #1
	add r4, r5, #0
	str r4, [fp, #-8]
	b .L629
.L606:
	b .L603
.L607:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r6, [fp, #-16]
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	add r5, r4, #0
	str r5, [fp, #-28]
	add r4, r6, #0
	str r4, [fp, #-24]
	b .L609
.L608:
	sub r4, r1, #1
	ldr r5, [fp, #-16]
	cmp r5, r4
	moveq r4, #1
	movne r4, #0
	beq .L615
	b .L620
.L609:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	ldr r4, [fp, #-28]
	add r6, r4, #0
	str r6, [fp, #-20]
	add r4, r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-24]
	add r5, r4, #0
	str r5, [fp, #-12]
	b .L601
.L612:
	b .L608
.L615:
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	sdiv r6, r5, r1
	ldr r5, [fp, #-4]
	mov r7, #0
	mov r8, #4
	mul r9, r7, r8
	add r7, r5, r9
	str r6, [r7]
	add r5, r4, #0
	str r5, [fp, #-36]
	ldr r4, [fp, #-12]
	add r5, r4, #0
	str r5, [fp, #-32]
	b .L617
.L616:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r6, [fp, #-16]
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	sub r5, r6, r4
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-16]
	sub r7, r6, r1
	add r6, r7, #1
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [r6]
	sdiv r6, r5, r1
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-16]
	sub r9, r8, r1
	add r8, r9, #1
	mov r9, #4
	mul r10, r8, r9
	add r8, r7, r10
	str r6, [r8]
	add r6, r4, #0
	str r6, [fp, #-36]
	add r4, r5, #0
	str r4, [fp, #-32]
	b .L617
.L617:
	ldr r4, [fp, #-36]
	add r5, r4, #0
	str r5, [fp, #-28]
	ldr r4, [fp, #-32]
	add r5, r4, #0
	str r5, [fp, #-24]
	b .L609
.L620:
	b .L616
.L629:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L630
	b .L634
.L630:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r6, [fp, #-8]
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	add r4, r5, #0
	str r4, [fp, #-8]
	b .L629
.L631:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L634:
	b .L631

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =256
	sub sp, sp, r4
.L636:
	ldr r4, =32
	ldr r5, addr_n0
	str r4, [r5]
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #1
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =23
	str r4, [r5]
	mov r4, #2
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =89
	str r4, [r5]
	mov r4, #3
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =26
	str r4, [r5]
	mov r4, #4
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =282
	str r4, [r5]
	mov r4, #5
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =254
	str r4, [r5]
	mov r4, #6
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =27
	str r4, [r5]
	mov r4, #7
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =5
	str r4, [r5]
	mov r4, #8
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =83
	str r4, [r5]
	mov r4, #9
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =273
	str r4, [r5]
	mov r4, #10
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =574
	str r4, [r5]
	mov r4, #11
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =905
	str r4, [r5]
	mov r4, #12
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =354
	str r4, [r5]
	mov r4, #13
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =657
	str r4, [r5]
	mov r4, #14
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =935
	str r4, [r5]
	mov r4, #15
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =264
	str r4, [r5]
	mov r4, #16
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =639
	str r4, [r5]
	mov r4, #17
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =459
	str r4, [r5]
	mov r4, #18
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =29
	str r4, [r5]
	mov r4, #19
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =68
	str r4, [r5]
	mov r4, #20
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =929
	str r4, [r5]
	mov r4, #21
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =756
	str r4, [r5]
	mov r4, #22
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =452
	str r4, [r5]
	mov r4, #23
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =279
	str r4, [r5]
	mov r4, #24
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =58
	str r4, [r5]
	mov r4, #25
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =87
	str r4, [r5]
	mov r4, #26
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =96
	str r4, [r5]
	mov r4, #27
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =36
	str r4, [r5]
	mov r4, #28
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =39
	str r4, [r5]
	mov r4, #29
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =28
	str r4, [r5]
	mov r4, #30
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	mov r4, #31
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =290
	str r4, [r5]
	mov r0, #0
	ldr r1, =256
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .F0
.LTORG
addr_n0:
	.word n
.F0:

addr_n1:
	.word n
	.ident "ZWJM"
