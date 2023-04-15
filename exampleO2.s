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
.L535:
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r1, r0, #1
	mov r3, #0
	mov r0, #0
	mov r2, #0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L540
.L536:
	b .L541
.L537:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L540:
	mov r0, #0
	mov r0, #0
	mov r0, #0
	b .L537
.L541:
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, r2
	sub r5, r0, #1
	add r0, r3, #0
	mov r1, #0
	ldr r4, =0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L546
.L542:
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r1, r3
	add r3, r4, r3
	ldr r6, [r3]
	ldr r5, [fp, #-4]
	add r4, r1, #1
	mov r3, #4
	mul r3, r4, r3
	add r3, r5, r3
	ldr r3, [r3]
	cmp r6, r3
	movgt r3, #1
	movle r3, #0
	bgt .L547
	b .L555
.L543:
	add r4, r2, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, #1
	add r3, r1, #0
	add r2, r4, #0
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L578
.L546:
	add r1, r3, #0
	mov r0, #0
	b .L543
.L547:
	ldr r4, [fp, #-4]
	add r3, r1, #1
	mov r0, #4
	mul r0, r3, r0
	add r0, r4, r0
	ldr r0, [r0]
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r1, r3
	add r3, r4, r3
	ldr r6, [r3]
	ldr r5, [fp, #-4]
	add r4, r1, #1
	mov r3, #4
	mul r3, r4, r3
	add r3, r5, r3
	str r6, [r3]
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r1, r3
	add r3, r4, r3
	str r0, [r3]
	add r5, r0, #0
	b .L548
.L548:
	add r4, r1, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, r2
	sub r3, r0, #1
	add r0, r5, #0
	add r1, r4, #0
	cmp r4, r3
	movlt r3, #1
	movge r3, #0
	blt .L542
	b .L571
.L555:
	add r5, r0, #0
	b .L548
.L571:
	add r1, r5, #0
	b .L543
.L578:
	b .L537

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L579:
	str r0, [fp, #-4]
	b .L582
.L582:
	ldr r0, addr_n0
	ldr r1, [r0]
	mov r0, #0
	mov r0, #0
	mov r2, #1
	ldr r0, =1
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L583
	b .L587
.L583:
	ldr r1, [fp, #-4]
	mov r0, #4
	mul r0, r2, r0
	add r0, r1, r0
	ldr r1, [r0]
	sub r4, r2, #1
	b .L592
.L584:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L587:
	mov r0, #0
	mov r0, #0
	mov r0, #1
	b .L584
.L592:
	ldr r0, =0
	sub r3, r0, #1
	add r0, r4, #0
	cmp r4, r3
	movgt r3, #1
	movle r3, #0
	bgt .L615
	b .L598
.L593:
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r0, r3
	add r3, r4, r3
	ldr r6, [r3]
	ldr r5, [fp, #-4]
	add r4, r0, #1
	mov r3, #4
	mul r3, r4, r3
	add r3, r5, r3
	str r6, [r3]
	sub r4, r0, #1
	ldr r0, =0
	sub r3, r0, #1
	add r0, r4, #0
	cmp r4, r3
	movgt r3, #1
	movle r3, #0
	bgt .L615
	b .L618
.L594:
	ldr r4, [fp, #-4]
	add r3, r0, #1
	mov r0, #4
	mul r0, r3, r0
	add r0, r4, r0
	str r1, [r0]
	add r1, r2, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	add r2, r1, #0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L583
	b .L630
.L598:
	add r0, r4, #0
	b .L594
.L615:
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r0, r3
	add r3, r4, r3
	ldr r3, [r3]
	cmp r1, r3
	movlt r3, #1
	movge r3, #0
	blt .L593
	b .L623
.L618:
	add r0, r4, #0
	b .L594
.L623:
	b .L594
.L630:
	b .L584

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
.L635:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-8]
	mov r0, #4
	mul r0, r3, r0
	add r0, r4, r0
	ldr r0, [r0]
	b .L645
.L636:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L639:
	mov r0, #0
	mov r0, #0
	mov r0, #0
	mov r0, #0
	b .L636
.L645:
	add r3, r1, #0
	add r4, r2, #0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L646
	b .L650
.L646:
	b .L651
.L647:
	ldr r2, [fp, #-4]
	mov r1, #4
	mul r1, r4, r1
	add r1, r2, r1
	str r0, [r1]
	sub r2, r4, #1
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl QuickSort
	add r1, r4, #1
	ldr r0, [fp, #-4]
	ldr r2, [fp, #-12]
	bl QuickSort
	b .L636
.L650:
	add r4, r2, #0
	b .L647
.L651:
	add r1, r3, #0
	cmp r4, r3
	movlt r2, #1
	movge r2, #0
	blt .L672
	b .L657
.L652:
	sub r3, r1, #1
	add r1, r3, #0
	cmp r4, r3
	movlt r2, #1
	movge r2, #0
	blt .L672
	b .L675
.L653:
	cmp r4, r3
	movlt r1, #1
	movge r1, #0
	blt .L681
	b .L685
.L657:
	b .L653
.L672:
	ldr r3, [fp, #-4]
	mov r2, #4
	mul r2, r1, r2
	add r2, r3, r2
	ldr r3, [r2]
	sub r2, r0, #1
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L652
	b .L680
.L675:
	b .L653
.L680:
	add r3, r1, #0
	b .L653
.L681:
	ldr r2, [fp, #-4]
	mov r1, #4
	mul r1, r3, r1
	add r1, r2, r1
	ldr r1, [r1]
	ldr r5, [fp, #-4]
	mov r2, #4
	mul r2, r4, r2
	add r2, r5, r2
	str r1, [r2]
	add r1, r4, #1
	add r4, r1, #0
	b .L682
.L682:
	b .L689
.L685:
	b .L682
.L689:
	add r1, r4, #0
	cmp r4, r3
	movlt r2, #1
	movge r2, #0
	blt .L709
	b .L695
.L690:
	add r4, r1, #1
	add r1, r4, #0
	cmp r4, r3
	movlt r2, #1
	movge r2, #0
	blt .L709
	b .L712
.L691:
	cmp r2, r3
	movlt r1, #1
	movge r1, #0
	blt .L718
	b .L722
.L695:
	add r2, r4, #0
	b .L691
.L709:
	ldr r4, [fp, #-4]
	mov r2, #4
	mul r2, r1, r2
	add r2, r4, r2
	ldr r2, [r2]
	cmp r2, r0
	movlt r2, #1
	movge r2, #0
	blt .L690
	b .L717
.L712:
	add r2, r4, #0
	b .L691
.L717:
	add r2, r1, #0
	b .L691
.L718:
	ldr r4, [fp, #-4]
	mov r1, #4
	mul r1, r2, r1
	add r1, r4, r1
	ldr r1, [r1]
	ldr r5, [fp, #-4]
	mov r4, #4
	mul r4, r3, r4
	add r4, r5, r4
	str r1, [r4]
	sub r1, r3, #1
	b .L719
.L719:
	add r3, r1, #0
	add r4, r2, #0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L646
	b .L731
.L722:
	add r1, r3, #0
	b .L719
.L731:
	add r4, r2, #0
	b .L647

	.global getMid
	.type getMid , %function
getMid:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L736:
	str r0, [fp, #-4]
	ldr r0, addr_n0
	ldr r2, [r0]
	ldr r1, =2
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L739
	b .L744
.L739:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r4, r1, r0
	ldr r1, [fp, #-4]
	mov r0, #4
	mul r0, r4, r0
	add r0, r1, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	sub r1, r4, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	add r1, r3, r0
	ldr r0, =2
	sdiv r0, r1, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L740:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r2, r1, r0
	ldr r1, [fp, #-4]
	mov r0, #4
	mul r0, r2, r0
	add r0, r1, r0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L744:
	b .L740

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
.L755:
	mov r3, #0
	ldr r1, =0
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L756
	b .L760
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
.L757:
	b .L768
.L760:
	mov r0, #0
	b .L757
.L765:
	b .L757
.L768:
	ldr r0, addr_n0
	ldr r4, [r0]
	mov r0, #0
	mov r3, #0
	mov r2, #0
	mov r1, #0
	ldr r0, =0
	cmp r0, r4
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L773
.L769:
	ldr r4, [fp, #-4]
	mov r0, #4
	mul r0, r1, r0
	add r0, r4, r0
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
.L770:
	mov r0, r1
	ldr r1, =4008
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L773:
	mov r0, #0
	mov r1, #0
	mov r0, #0
	mov r0, #0
	b .L770
.L778:
	ldr r4, =-4004
	mov r2, #4
	mul r3, r0, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	add r5, r0, #0
	b .L779
.L779:
	add r4, r1, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	add r3, r5, #0
	add r1, r4, #0
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L790
.L783:
	add r5, r3, #0
	b .L779
.L790:
	add r1, r5, #0
	b .L770
.L1321:
	add r3, r1, #0
	b .L756

	.global revert
	.type revert , %function
revert:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L791:
	str r0, [fp, #-4]
	b .L796
.L796:
	mov r2, #0
	mov r1, #0
	mov r0, #0
	ldr r0, =0
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L797
	b .L801
.L797:
	ldr r3, [fp, #-4]
	mov r0, #4
	mul r0, r1, r0
	add r0, r3, r0
	ldr r0, [r0]
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r2, r3
	add r3, r4, r3
	ldr r5, [r3]
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r1, r3
	add r3, r4, r3
	str r5, [r3]
	ldr r4, [fp, #-4]
	mov r3, #4
	mul r3, r2, r3
	add r3, r4, r3
	str r0, [r3]
	add r3, r1, #1
	sub r1, r2, #1
	cmp r3, r1
	movlt r0, #1
	movge r0, #0
	blt .L1336
	b .L813
.L798:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L801:
	mov r0, #0
	mov r0, #0
	mov r0, #0
	b .L798
.L813:
	b .L798
.L1336:
	add r2, r1, #0
	add r1, r3, #0
	b .L797

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
.L818:
	ldr r0, addr_n0
	ldr r2, [r0]
	mov r0, #0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L819
	b .L823
.L819:
	ldr r2, [fp, #-4]
	mov r1, #4
	mul r1, r0, r1
	add r1, r2, r1
	ldr r3, [r1]
	ldr r2, [fp, #-8]
	mov r1, #4
	mul r1, r0, r1
	add r1, r2, r1
	str r3, [r1]
	add r1, r0, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L1341
	b .L832
.L820:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L823:
	mov r0, #0
	b .L820
.L832:
	b .L820
.L1341:
	add r0, r1, #0
	b .L819

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
.L838:
	ldr r0, addr_n0
	ldr r3, [r0]
	mov r1, #0
	mov r0, #0
	ldr r2, =0
	cmp r2, r3
	movlt r2, #1
	movge r2, #0
	blt .L839
	b .L843
.L839:
	ldr r3, [fp, #-4]
	mov r2, #4
	mul r2, r1, r2
	add r2, r3, r2
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
.L840:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L843:
	mov r0, #0
	mov r0, #0
	b .L840
.L846:
	ldr r3, [fp, #-4]
	mov r2, #4
	mul r2, r1, r2
	add r3, r3, r2
	ldr r2, =0
	str r2, [r3]
	add r4, r0, #0
	b .L848
.L847:
	ldr r3, [fp, #-4]
	mov r2, #4
	mul r2, r1, r2
	add r2, r3, r2
	str r0, [r2]
	mov r4, #0
	b .L848
.L848:
	add r3, r1, #1
	ldr r0, addr_n0
	ldr r2, [r0]
	add r1, r3, #0
	add r0, r4, #0
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L839
	b .L859
.L851:
	b .L847
.L859:
	b .L840

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
.L866:
	ldr r0, addr_n0
	ldr r4, [r0]
	mov r1, #0
	mov r3, #0
	mov r0, #0
	ldr r2, =0
	cmp r2, r4
	movlt r2, #1
	movge r2, #0
	blt .L867
	b .L871
.L867:
	ldr r2, [fp, #-8]
	sub r2, r2, #1
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L872
	b .L877
.L868:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r1, r0, #1
	b .L900
.L871:
	mov r0, #0
	mov r0, #0
	mov r0, #0
	b .L868
.L872:
	ldr r4, [fp, #-4]
	mov r2, #4
	mul r2, r3, r2
	add r2, r4, r2
	ldr r2, [r2]
	add r0, r0, r2
	add r5, r0, #0
	b .L874
.L873:
	ldr r2, [fp, #-8]
	sub r2, r2, #1
	cmp r3, r2
	moveq r2, #1
	movne r2, #0
	beq .L880
	b .L885
.L874:
	add r4, r3, #1
	ldr r0, addr_n0
	ldr r2, [r0]
	add r3, r4, #0
	add r0, r5, #0
	cmp r4, r2
	movlt r2, #1
	movge r2, #0
	blt .L867
	b .L899
.L877:
	b .L873
.L880:
	ldr r4, [fp, #-4]
	mov r2, #0
	mov r1, #4
	mul r1, r2, r1
	add r1, r4, r1
	ldr r6, [r1]
	ldr r1, [fp, #-8]
	sdiv r5, r0, r1
	ldr r4, [fp, #-4]
	mov r2, #0
	mov r1, #4
	mul r1, r2, r1
	add r1, r4, r1
	str r5, [r1]
	add r1, r6, #0
	b .L882
.L881:
	ldr r4, [fp, #-4]
	mov r2, #4
	mul r2, r3, r2
	add r2, r4, r2
	ldr r2, [r2]
	add r0, r0, r2
	sub r2, r0, r1
	ldr r4, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r3, r0
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r4, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sdiv r0, r2, r0
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-8]
	sub r4, r3, r4
	add r5, r4, #1
	mov r4, #4
	mul r4, r5, r4
	add r4, r6, r4
	str r0, [r4]
	add r0, r2, #0
	b .L882
.L882:
	add r5, r0, #0
	b .L874
.L885:
	b .L881
.L899:
	b .L868
.L900:
	ldr r0, addr_n0
	ldr r0, [r0]
	add r2, r1, #0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L901
	b .L905
.L901:
	ldr r1, [fp, #-4]
	mov r0, #4
	mul r0, r2, r0
	add r1, r1, r0
	ldr r0, =0
	str r0, [r1]
	add r1, r2, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L1359
	b .L912
.L902:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L905:
	b .L902
.L912:
	b .L902
.L1359:
	add r2, r1, #0
	b .L901

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =256
	sub sp, sp, r4
.L913:
	ldr r1, =32
	ldr r0, addr_n0
	str r1, [r0]
	mov r1, #0
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =7
	str r0, [r1]
	mov r1, #1
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =23
	str r0, [r1]
	mov r1, #2
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =89
	str r0, [r1]
	mov r1, #3
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =26
	str r0, [r1]
	mov r1, #4
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =282
	str r0, [r1]
	mov r1, #5
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =254
	str r0, [r1]
	mov r1, #6
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =27
	str r0, [r1]
	mov r1, #7
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =5
	str r0, [r1]
	mov r1, #8
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =83
	str r0, [r1]
	mov r1, #9
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =273
	str r0, [r1]
	mov r1, #10
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =574
	str r0, [r1]
	mov r1, #11
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =905
	str r0, [r1]
	mov r1, #12
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =354
	str r0, [r1]
	mov r1, #13
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =657
	str r0, [r1]
	mov r1, #14
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =935
	str r0, [r1]
	mov r1, #15
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =264
	str r0, [r1]
	mov r1, #16
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =639
	str r0, [r1]
	mov r1, #17
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =459
	str r0, [r1]
	mov r1, #18
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =29
	str r0, [r1]
	mov r1, #19
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =68
	str r0, [r1]
	mov r1, #20
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =929
	str r0, [r1]
	mov r1, #21
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =756
	str r0, [r1]
	mov r1, #22
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =452
	str r0, [r1]
	mov r1, #23
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =279
	str r0, [r1]
	mov r1, #24
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =58
	str r0, [r1]
	mov r1, #25
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =87
	str r0, [r1]
	mov r1, #26
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =96
	str r0, [r1]
	mov r1, #27
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =36
	str r0, [r1]
	mov r1, #28
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =39
	str r0, [r1]
	mov r1, #29
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =28
	str r0, [r1]
	mov r1, #30
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	mov r1, #31
	mov r2, #-128
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =290
	str r1, [r0]
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl revert
	b .L918
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L918:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L919
	b .L923
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
.L920:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl bubblesort
	b .L930
.L923:
	mov r0, #0
	b .L920
.L929:
	b .L920
.L930:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L931
	b .L935
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
.L932:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl getMid
	bl putint
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl getMost
	bl putint
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl bubblesort
	b .L942
.L935:
	mov r0, #0
	b .L932
.L941:
	b .L932
.L942:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L943
	b .L947
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl insertsort
	b .L954
.L947:
	mov r0, #0
	b .L944
.L953:
	b .L944
.L954:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L955
	b .L959
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, #0
	mov r2, #31
	bl QuickSort
	b .L966
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L959:
	mov r0, #0
	b .L956
.L965:
	b .L956
.L966:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L967
	b .L971
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, #4
	bl calSum
	b .L978
.L971:
	mov r0, #0
	b .L968
.L977:
	b .L968
.L978:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L979
	b .L983
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
	add r1, r0, r1
	mov r0, r3
	bl arrCopy
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, #3
	bl avgPooling
	b .L990
.L983:
	mov r0, #0
	b .L980
.L989:
	b .L980
.L990:
	mov r4, #0
	ldr r0, =0
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L991
	b .L995
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
.L992:
	mov r0, #0
	ldr r1, =256
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L995:
	mov r0, #0
	b .L992
.L1001:
	b .L992
.L1363:
	add r4, r1, #0
	b .L919
.L1368:
	add r4, r1, #0
	b .L931
.L1373:
	add r4, r1, #0
	b .L943
.L1378:
	add r4, r1, #0
	b .L955
.L1383:
	add r4, r1, #0
	b .L967
.L1388:
	add r4, r1, #0
	b .L979
.L1393:
	add r4, r1, #0
	b .L991

addr_n2:
	.word n
	.ident "ZWJM"
