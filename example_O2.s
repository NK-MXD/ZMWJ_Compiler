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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L531:
	str r0, [fp, #-4]
	b .L535
	count = 2
.L535:
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r3, r0, #1
	ldr r0, =0
	ldr r1, =0
	ldr r1, =0
	mov r2, r1
	ldr r1, =0
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L536
	b .L540
	count = 15
.L536:
	b .L541
	count = 16
.L537:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	count = 19
.L540:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L537
	count = 23
.L541:
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r1, r1, r2
	sub r3, r1, #1
	mov r5, r0
	ldr r1, =0
	ldr r4, =0
	cmp r4, r3
	movlt r3, #1
	movge r3, #0
	blt .L542
	b .L546
	count = 35
.L542:
	ldr r3, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r6, [r0]
	add r0, r1, #1
	mov r4, #4
	mla r0, r0, r4, r3
	ldr r0, [r0]
	cmp r6, r0
	movgt r0, #1
	movle r0, #0
	bgt .L547
	b .L555
	count = 48
.L543:
	add r3, r2, #1
	ldr r1, addr_n0
	ldr r1, [r1]
	sub r1, r1, #1
	mov r2, r3
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L536
	b .L578
	count = 58
.L546:
	ldr r1, =0
	b .L543
	count = 60
.L547:
	ldr r0, [fp, #-4]
	add r5, r1, #1
	mov r3, #4
	mla r3, r5, r3, r0
	ldr r3, [r3]
	mov r4, #4
	mla r4, r1, r4, r0
	ldr r6, [r4]
	mov r4, #4
	mla r4, r5, r4, r0
	str r6, [r4]
	mov r4, #4
	mla r0, r1, r4, r0
	str r3, [r0]
	mov r4, r3
	b .L548
	count = 76
.L548:
	add r3, r1, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, r2
	sub r0, r0, #1
	mov r5, r4
	mov r1, r3
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
	blt .L542
	b .L571
	count = 88
.L555:
	mov r4, r5
	b .L548
	count = 90
.L571:
	mov r0, r4
	b .L543
	count = 92
.L578:
	b .L537
	count = 93

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L579:
	str r0, [fp, #-4]
	b .L582
	count = 2
.L582:
	ldr r0, addr_n0
	ldr r2, [r0]
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	ldr r1, =1
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L583
	b .L587
	count = 13
.L583:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	ldr r3, [r1]
	sub r1, r0, #1
	b .L592
	count = 19
.L584:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	count = 22
.L587:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	b .L584
	count = 26
.L592:
	ldr r2, =0
	sub r4, r2, #1
	mov r2, r1
	cmp r1, r4
	movgt r4, #1
	movle r4, #0
	bgt .L615
	b .L598
	count = 34
.L593:
	ldr r1, [fp, #-4]
	mov r4, #4
	mla r4, r2, r4, r1
	ldr r6, [r4]
	add r5, r2, #1
	mov r4, #4
	mla r1, r5, r4, r1
	str r6, [r1]
	sub r4, r2, #1
	ldr r1, =0
	sub r1, r1, #1
	mov r2, r4
	cmp r4, r1
	movgt r1, #1
	movle r1, #0
	bgt .L615
	b .L618
	count = 51
.L594:
	ldr r4, [fp, #-4]
	add r2, r1, #1
	mov r1, #4
	mla r1, r2, r1, r4
	str r3, [r1]
	add r2, r0, #1
	ldr r0, addr_n0
	ldr r1, [r0]
	mov r0, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L583
	b .L630
	count = 65
.L598:
	b .L594
	count = 66
.L615:
	ldr r4, [fp, #-4]
	mov r1, #4
	mla r1, r2, r1, r4
	ldr r1, [r1]
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L593
	b .L623
	count = 75
.L618:
	mov r1, r4
	b .L594
	count = 77
.L623:
	mov r1, r2
	b .L594
	count = 79
.L630:
	b .L584
	count = 80

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L631:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L635
	b .L639
	count = 10
.L635:
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-12]
	ldr r0, [fp, #-4]
	ldr r2, [fp, #-8]
	mov r1, #4
	mla r0, r2, r1, r0
	ldr r1, [r0]
	b .L645
	count = 18
.L636:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	count = 21
.L639:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L636
	count = 26
.L645:
	mov r2, r3
	mov r5, r4
	cmp r4, r3
	movlt r0, #1
	movge r0, #0
	blt .L646
	b .L650
	count = 33
.L646:
	b .L651
	count = 34
.L647:
	ldr r2, [fp, #-4]
	mov r0, #4
	mla r0, r4, r0, r2
	str r1, [r0]
	sub r2, r4, #1
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl QuickSort
	add r1, r4, #1
	ldr r0, [fp, #-4]
	ldr r2, [fp, #-12]
	bl QuickSort
	b .L636
	count = 47
.L650:
	b .L647
	count = 48
.L651:
	mov r0, r2
	cmp r5, r2
	movlt r3, #1
	movge r3, #0
	blt .L672
	b .L657
	count = 54
.L652:
	sub r3, r0, #1
	mov r0, r3
	cmp r5, r3
	movlt r2, #1
	movge r2, #0
	blt .L672
	b .L675
	count = 61
.L653:
	cmp r5, r0
	movlt r2, #1
	movge r2, #0
	blt .L681
	b .L685
	count = 66
.L657:
	mov r0, r2
	b .L653
	count = 68
.L672:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r0, r2, r3
	ldr r3, [r2]
	sub r2, r1, #1
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L652
	b .L680
	count = 78
.L675:
	mov r0, r3
	b .L653
	count = 80
.L680:
	b .L653
	count = 81
.L681:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r0, r2, r3
	ldr r2, [r2]
	mov r4, #4
	mla r3, r5, r4, r3
	str r2, [r3]
	add r2, r5, #1
	mov r4, r2
	b .L682
	count = 91
.L682:
	b .L689
	count = 92
.L685:
	mov r4, r5
	b .L682
	count = 94
.L689:
	mov r2, r4
	cmp r4, r0
	movlt r3, #1
	movge r3, #0
	blt .L709
	b .L695
	count = 100
.L690:
	add r4, r2, #1
	mov r2, r4
	cmp r4, r0
	movlt r3, #1
	movge r3, #0
	blt .L709
	b .L712
	count = 107
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L691:
	cmp r4, r0
	movlt r2, #1
	movge r2, #0
	blt .L718
	b .L722
	count = 5
.L695:
	b .L691
	count = 6
.L709:
	ldr r4, [fp, #-4]
	mov r3, #4
	mla r3, r2, r3, r4
	ldr r3, [r3]
	cmp r3, r1
	movlt r3, #1
	movge r3, #0
	blt .L690
	b .L717
	count = 15
.L712:
	b .L691
	count = 16
.L717:
	mov r4, r2
	b .L691
	count = 18
.L718:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r2, [r2]
	mov r5, #4
	mla r3, r0, r5, r3
	str r2, [r3]
	sub r0, r0, #1
	b .L719
	count = 27
.L719:
	mov r2, r0
	mov r5, r4
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L646
	b .L731
	count = 34
.L722:
	b .L719
	count = 35
.L731:
	b .L647
	count = 36

	.global getMid
	.type getMid , %function
getMid:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L736:
	str r0, [fp, #-4]
	ldr r0, addr_n1
	ldr r0, [r0]
	and r0, r0, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L739
	b .L744
	count = 9
.L739:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r1, r1, r0
	ldr r3, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r2, [r0]
	sub r1, r1, #1
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	add r1, r2, r0
	ldr r0, =2
	sdiv r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
	count = 26
.L740:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r2, r1, r0
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
	count = 36
.L744:
	b .L740
	count = 37

	.global getMost
	.type getMost , %function
getMost:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =4008
	sub sp, sp, r4
.L751:
	str r0, [fp, #-4]
	b .L755
	count = 2
.L755:
	ldr r0, =0
	mov r3, r0
	ldr r1, =0
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L756
	b .L760
	count = 11
.L756:
	ldr r2, =-4004
	mov r0, #4
	mul r1, r3, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r3, #1
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L1321
	b .L765
	count = 25
.L757:
	b .L768
	count = 26
.L760:
	ldr r0, =0
	b .L757
	count = 28
.L765:
	b .L757
	count = 29
.L768:
	ldr r0, addr_n1
	ldr r4, [r0]
	ldr r0, =0
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r4
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L773
	count = 44
.L769:
	ldr r4, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r4
	ldr r0, [r0]
	ldr r6, =-4004
	mov r4, #4
	mul r5, r0, r4
	add r4, fp, r6
	add r4, r4, r5
	ldr r4, [r4]
	add r7, r4, #1
	ldr r6, =-4004
	mov r4, #4
	mul r5, r0, r4
	add r4, fp, r6
	add r4, r4, r5
	str r7, [r4]
	ldr r6, =-4004
	mov r4, #4
	mul r5, r0, r4
	add r4, fp, r6
	add r4, r4, r5
	ldr r4, [r4]
	cmp r4, r2
	movgt r4, #1
	movle r4, #0
	bgt .L778
	b .L783
	count = 72
.L770:
	mov r0, r1
	ldr r1, =4008
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
	count = 75
.L773:
	ldr r0, =0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	ldr r0, =0
	b .L770
	count = 81
.L778:
	ldr r4, =-4004
	mov r2, #4
	mul r3, r0, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	mov r5, r0
	b .L779
	count = 89
.L779:
	add r4, r1, #1
	ldr r0, addr_n1
	ldr r0, [r0]
	mov r3, r5
	mov r1, r4
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L790
	count = 99
.L783:
	mov r5, r3
	b .L779
	count = 101
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L790:
	mov r1, r5
	b .L770
	count = 2
.L1321:
	mov r3, r1
	b .L756
	count = 4

	.global revert
	.type revert , %function
revert:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L791:
	str r0, [fp, #-4]
	b .L796
	count = 2
.L796:
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	ldr r0, =0
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L797
	b .L801
	count = 13
.L797:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mov r4, #4
	mla r4, r3, r4, r1
	ldr r5, [r4]
	mov r4, #4
	mla r4, r2, r4, r1
	str r5, [r4]
	mov r4, #4
	mla r1, r3, r4, r1
	str r0, [r1]
	add r2, r2, #1
	sub r1, r3, #1
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L1336
	b .L813
	count = 33
.L798:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	count = 36
.L801:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L798
	count = 40
.L813:
	b .L798
	count = 41
.L1336:
	mov r3, r1
	b .L797
	count = 43

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L814:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L818
	count = 3
.L818:
	ldr r0, addr_n2
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L819
	b .L823
	count = 12
.L819:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	ldr r3, [r1]
	ldr r2, [fp, #-8]
	mov r1, #4
	mla r1, r0, r1, r2
	str r3, [r1]
	add r1, r0, #1
	ldr r0, addr_n2
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L1341
	b .L832
	count = 28
.L820:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
	count = 31
.L823:
	ldr r0, =0
	b .L820
	count = 33
.L832:
	b .L820
	count = 34
.L1341:
	mov r0, r1
	b .L819
	count = 36

	.global calSum
	.type calSum , %function
calSum:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L833:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L838
	count = 3
.L838:
	ldr r0, addr_n2
	ldr r3, [r0]
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	ldr r2, =0
	cmp r2, r3
	movlt r2, #1
	movge r2, #0
	blt .L839
	b .L843
	count = 14
.L839:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r2, [r2]
	add r0, r0, r2
	ldr r3, [fp, #-8]
	sdiv r2, r1, r3
	mul r2, r2, r3
	sub r3, r1, r2
	ldr r2, [fp, #-8]
	sub r2, r2, #1
	cmp r3, r2
	movne r2, #1
	moveq r2, #0
	bne .L846
	b .L851
	count = 30
.L840:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
	count = 33
.L843:
	ldr r0, =0
	ldr r0, =0
	b .L840
	count = 36
.L846:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r3, r1, r2, r3
	ldr r2, =0
	str r2, [r3]
	mov r4, r0
	b .L848
	count = 43
.L847:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r1, r2, r3
	str r0, [r2]
	ldr r0, =0
	mov r4, r0
	b .L848
	count = 50
.L848:
	add r3, r1, #1
	ldr r0, addr_n2
	ldr r2, [r0]
	mov r1, r3
	mov r0, r4
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L839
	b .L859
	count = 60
.L851:
	b .L847
	count = 61
.L859:
	b .L840
	count = 62

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L860:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L866
	count = 3
.L866:
	ldr r0, addr_n2
	ldr r4, [r0]
	ldr r0, =0
	ldr r1, =0
	mov r3, r1
	ldr r1, =0
	mov r2, r1
	ldr r1, =0
	cmp r1, r4
	movlt r1, #1
	movge r1, #0
	blt .L867
	b .L871
	count = 16
.L867:
	ldr r1, [fp, #-8]
	sub r1, r1, #1
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L872
	b .L877
	count = 23
.L868:
	ldr r0, addr_n2
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r1, r0, #1
	b .L900
	count = 29
.L871:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L868
	count = 33
.L872:
	ldr r4, [fp, #-4]
	mov r1, #4
	mla r1, r3, r1, r4
	ldr r1, [r1]
	add r1, r2, r1
	mov r5, r0
	mov r2, r1
	b .L874
	count = 41
.L873:
	ldr r1, [fp, #-8]
	sub r1, r1, #1
	cmp r3, r1
	moveq r1, #1
	movne r1, #0
	beq .L880
	b .L885
	count = 48
.L874:
	add r4, r3, #1
	ldr r0, addr_n2
	ldr r1, [r0]
	mov r0, r5
	mov r3, r4
	cmp r4, r1
	movlt r1, #1
	movge r1, #0
	blt .L867
	b .L899
	count = 58
.L877:
	b .L873
	count = 59
.L880:
	ldr r0, [fp, #-4]
	mov r4, #0
	mov r1, #4
	mla r1, r4, r1, r0
	ldr r6, [r1]
	ldr r1, [fp, #-8]
	sdiv r5, r2, r1
	mov r4, #0
	mov r1, #4
	mla r0, r4, r1, r0
	str r5, [r0]
	mov r1, r6
	mov r0, r2
	b .L882
	count = 73
.L881:
	ldr r1, [fp, #-4]
	mov r4, #4
	mla r4, r3, r4, r1
	ldr r4, [r4]
	add r2, r2, r4
	sub r0, r2, r0
	ldr r2, [fp, #-8]
	sub r2, r3, r2
	add r4, r2, #1
	mov r2, #4
	mla r5, r4, r2, r1
	ldr r4, [r5]
	ldr r1, [fp, #-8]
	sdiv r2, r0, r1
	ldr r1, [fp, #-8]
	str r2, [r5]
	mov r1, r4
	b .L882
	count = 91
.L882:
	mov r5, r1
	mov r2, r0
	b .L874
	count = 94
.L885:
	b .L881
	count = 95
.L899:
	b .L868
	count = 96
.L900:
	ldr r0, addr_n2
	ldr r0, [r0]
	mov r2, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L901
	b .L905
	count = 104
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
.L901:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r2, #1
	ldr r0, addr_n3
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L1359
	b .L912
	count = 13
.L902:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
	count = 16
.L905:
	b .L902
	count = 17
.L912:
	b .L902
	count = 18
.L1359:
	mov r2, r1
	b .L901
	count = 20

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =256
	sub sp, sp, r4
.L913:
	ldr r1, =32
	ldr r0, addr_n3
	str r1, [r0]
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =7
	str r1, [r0]
	mov r2, #1
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =23
	str r1, [r2]
	mov r2, #2
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =89
	str r1, [r2]
	mov r2, #3
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =26
	str r1, [r2]
	mov r2, #4
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =282
	str r1, [r2]
	mov r2, #5
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =254
	str r1, [r2]
	mov r2, #6
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =27
	str r1, [r2]
	mov r2, #7
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =5
	str r1, [r2]
	mov r2, #8
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =83
	str r1, [r2]
	mov r2, #9
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =273
	str r1, [r2]
	mov r2, #10
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =574
	str r1, [r2]
	mov r2, #11
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =905
	str r1, [r2]
	mov r2, #12
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =354
	str r1, [r2]
	mov r2, #13
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =657
	str r1, [r2]
	mov r2, #14
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =935
	str r1, [r2]
	mov r2, #15
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =264
	str r1, [r2]
	mov r2, #16
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =639
	str r1, [r2]
	mov r2, #17
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =459
	str r1, [r2]
	mov r2, #18
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =29
	str r1, [r2]
	mov r2, #19
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =68
	str r1, [r2]
	mov r2, #20
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =929
	str r1, [r2]
	mov r2, #21
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =756
	str r1, [r2]
	mov r2, #22
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =452
	str r1, [r2]
	mov r2, #23
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =279
	str r1, [r2]
	mov r2, #24
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =58
	str r1, [r2]
	mov r2, #25
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =87
	str r1, [r2]
	mov r2, #26
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =96
	str r1, [r2]
	mov r2, #27
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =36
	str r1, [r2]
	mov r2, #28
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =39
	str r1, [r2]
	mov r2, #29
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =28
	str r1, [r2]
	mov r2, #30
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #31
	mov r3, #-128
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r2, =290
	str r2, [r1]
	mov r2, #0
	ldr r3, =-256
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r4, r1, r2
	mov r1, r4
	bl arrCopy
	mov r0, r4
	bl revert
	b .L918
	count = 270
	b .F3
.LTORG
addr_n3:
	.word n
.F3:
.L918:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L919
	b .L923
	count = 8
.L919:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1363
	b .L929
	count = 21
.L920:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl bubblesort
	b .L930
	count = 29
.L923:
	ldr r0, =0
	b .L920
	count = 31
.L929:
	b .L920
	count = 32
.L930:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L931
	b .L935
	count = 40
.L931:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1368
	b .L941
	count = 53
.L932:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r4
	bl getMid
	bl putint
	mov r0, r4
	bl getMost
	bl putint
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, r4
	bl arrCopy
	mov r0, r4
	bl bubblesort
	b .L942
	count = 76
.L935:
	ldr r0, =0
	b .L932
	count = 78
.L941:
	b .L932
	count = 79
.L942:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L943
	b .L947
	count = 87
.L943:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1373
	b .L953
	count = 100
.L944:
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r4
	bl arrCopy
	mov r0, r4
	bl insertsort
	b .L954
	count = 118
	b .F4
.LTORG
addr_n4:
	.word n
.F4:
.L947:
	ldr r0, =0
	b .L944
	count = 2
.L953:
	b .L944
	count = 3
.L954:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L955
	b .L959
	count = 11
.L955:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1378
	b .L965
	count = 24
.L956:
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r4
	bl arrCopy
	mov r0, r4
	mov r1, #0
	mov r2, #31
	bl QuickSort
	b .L966
	count = 44
.L959:
	ldr r0, =0
	b .L956
	count = 46
.L965:
	b .L956
	count = 47
.L966:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L967
	b .L971
	count = 55
.L967:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1383
	b .L977
	count = 68
.L968:
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r4
	bl arrCopy
	mov r0, r4
	mov r1, #4
	bl calSum
	b .L978
	count = 87
.L971:
	ldr r0, =0
	b .L968
	count = 89
.L977:
	b .L968
	count = 90
.L978:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L979
	b .L983
	count = 98
.L979:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1388
	b .L989
	count = 111
	b .F5
.LTORG
addr_n5:
	.word n
.F5:
.L980:
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r4
	bl arrCopy
	mov r0, r4
	mov r1, #3
	bl avgPooling
	b .L990
	count = 19
.L983:
	ldr r0, =0
	b .L980
	count = 21
.L989:
	b .L980
	count = 22
.L990:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L991
	b .L995
	count = 30
.L991:
	ldr r2, =-256
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	cmp r1, #32
	movlt r0, #1
	movge r0, #0
	blt .L1393
	b .L1001
	count = 43
.L992:
	mov r0, #0
	ldr r1, =256
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
	count = 46
.L995:
	ldr r0, =0
	b .L992
	count = 48
.L1001:
	b .L992
	count = 49
.L1363:
	mov r4, r1
	b .L919
	count = 51
.L1368:
	mov r4, r1
	b .L931
	count = 53
.L1373:
	mov r4, r1
	b .L943
	count = 55
.L1378:
	mov r4, r1
	b .L955
	count = 57
.L1383:
	mov r4, r1
	b .L967
	count = 59
.L1388:
	mov r4, r1
	b .L979
	count = 61
.L1393:
	mov r4, r1
	b .L991
	count = 63

addr_n6:
	.word n
	.ident "ZWJM"
