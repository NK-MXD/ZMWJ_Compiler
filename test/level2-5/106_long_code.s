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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L531:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L535
.L535:
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L536
	b .L540
.L536:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L541
.L537:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L540:
	b .L537
.L541:
	ldr r4, [fp, #-12]
	ldr r5, addr_n0
	ldr r6, [r5]
	ldr r5, [fp, #-8]
	sub r7, r6, r5
	sub r5, r7, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L546
.L542:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L547
	b .L555
.L543:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L536
	b .L578
.L546:
	b .L543
.L547:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	add r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	b .L548
.L548:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, addr_n0
	ldr r6, [r5]
	ldr r5, [fp, #-8]
	sub r7, r6, r5
	sub r5, r7, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L571
.L555:
	b .L548
.L571:
	b .L543
.L578:
	b .L537

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L579:
	str r0, [fp, #-4]
	ldr r4, =1
	str r4, [fp, #-8]
	b .L582
.L582:
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L583
	b .L587
.L583:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-16]
	b .L592
.L584:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L587:
	b .L584
.L592:
	ldr r4, [fp, #-16]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L615
	b .L598
.L593:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L615
	b .L618
.L594:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L583
	b .L630
.L598:
	b .L594
.L615:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L593
	b .L623
.L618:
	b .L594
.L623:
	b .L594
.L630:
	b .L584

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L631:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L635
	b .L639
.L635:
	ldr r4, [fp, #-8]
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-24]
	b .L645
.L636:
	mov r0, #0
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L639:
	b .L636
.L645:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L646
	b .L650
.L646:
	b .L651
.L647:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-28]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-28]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-12]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-28]
	b .L636
.L650:
	b .L647
.L651:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L672
	b .L657
.L652:
	ldr r4, [fp, #-20]
	sub r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L672
	b .L675
.L653:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L681
	b .L685
.L657:
	b .L653
.L672:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L652
	b .L680
.L675:
	b .L653
.L680:
	b .L653
.L681:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L682
.L682:
	b .L689
.L685:
	b .L682
.L689:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L709
	b .L695
.L690:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L709
	b .L712
.L691:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L718
	b .L722
.L695:
	b .L691
.L709:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L690
	b .L717
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L712:
	b .L691
.L717:
	b .L691
.L718:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-20]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-20]
	sub r5, r4, #1
	str r5, [fp, #-20]
	b .L719
.L719:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L646
	b .L731
.L722:
	b .L719
.L731:
	b .L647

	.global getMid
	.type getMid , %function
getMid:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L736:
	str r0, [fp, #-4]
	ldr r4, addr_n1
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L739
	b .L744
.L739:
	ldr r4, addr_n1
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
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
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L740:
	ldr r4, addr_n1
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L744:
	b .L740

	.global getMost
	.type getMost , %function
getMost:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =4020
	sub sp, sp, r4
.L751:
	str r0, [fp, #-4]
	ldr r4, =0
	ldr r5, =-4008
	str r4, [fp, r5]
	b .L755
.L755:
	ldr r4, =-4008
	ldr r5, [fp, r4]
	ldr r4, =1000
	cmp r5, r4
	movlt r4, #1
	movge r4, #0
	blt .L756
	b .L760
.L756:
	ldr r5, =-4008
	ldr r4, [fp, r5]
	ldr r5, =-4004
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r5, =-4008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-4008
	str r5, [fp, r4]
	ldr r5, =-4008
	ldr r4, [fp, r5]
	ldr r5, =1000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L756
	b .L765
.L757:
	ldr r4, =0
	ldr r5, =-4008
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-4012
	str r4, [fp, r5]
	b .L768
.L760:
	b .L757
.L765:
	b .L757
.L768:
	ldr r5, =-4008
	ldr r4, [fp, r5]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L769
	b .L773
.L769:
	ldr r4, [fp, #-4]
	ldr r5, =-4008
	ldr r6, [fp, r5]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-4020
	str r4, [fp, r5]
	ldr r5, =-4020
	ldr r4, [fp, r5]
	ldr r5, =-4004
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	add r5, r4, #1
	ldr r6, =-4020
	ldr r4, [fp, r6]
	ldr r6, =-4004
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, =-4020
	ldr r5, [fp, r4]
	ldr r4, =-4004
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r6, =-4012
	ldr r4, [fp, r6]
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L778
	b .L783
.L770:
	ldr r5, =-4016
	ldr r4, [fp, r5]
	mov r0, r4
	ldr r1, =4020
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L773:
	b .L770
.L778:
	ldr r5, =-4020
	ldr r4, [fp, r5]
	ldr r5, =-4004
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-4012
	str r4, [fp, r5]
	ldr r4, =-4020
	ldr r5, [fp, r4]
	ldr r4, =-4016
	str r5, [fp, r4]
	b .L779
.L779:
	ldr r5, =-4008
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-4008
	str r5, [fp, r4]
	ldr r5, =-4008
	ldr r4, [fp, r5]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L769
	b .L790
.L783:
	b .L779
.L790:
	b .L770

	.global revert
	.type revert , %function
revert:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L791:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L796
.L796:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L797
	b .L801
.L797:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L797
	b .L813
.L798:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L801:
	b .L798
.L813:
	b .L798

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L814:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L818
.L818:
	ldr r4, [fp, #-12]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L819
	b .L823
.L819:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L819
	b .L832
.L820:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L823:
	b .L820
.L832:
	b .L820

	.global calSum
	.type calSum , %function
calSum:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L833:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L838
.L838:
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L839
	b .L843
.L839:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	ldr r4, [fp, #-8]
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L846
	b .L851
.L840:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L843:
	b .L840
.L846:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	b .L848
.L847:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L848
.L848:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L839
	b .L859
.L851:
	b .L847
.L859:
	b .L840

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L860:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L866
.L866:
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L867
	b .L871
.L867:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L872
	b .L877
.L868:
	ldr r4, addr_n1
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r5, r4
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L900
.L871:
	b .L868
.L872:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L874
.L873:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L880
	b .L885
.L874:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L867
	b .L899
.L877:
	b .L873
.L880:
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-20]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	b .L882
.L881:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	ldr r4, [fp, #-20]
	sub r5, r6, r4
	str r5, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-8]
	sub r7, r5, r6
	add r5, r7, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-20]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	ldr r7, [fp, #-8]
	sub r8, r5, r7
	add r5, r8, #1
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	b .L882
.L882:
	b .L874
.L885:
	b .L881
.L899:
	b .L868
.L900:
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L901
	b .L905
.L901:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L901
	b .L912
.L902:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L905:
	b .L902
.L912:
	b .L902

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =264
	sub sp, sp, r4
.L913:
	ldr r4, =32
	ldr r5, addr_n1
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
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl revert
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L918
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L918:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L919
	b .L923
.L919:
	ldr r4, =-264
	ldr r5, [fp, r4]
	ldr r4, =-256
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, =-260
	str r5, [fp, r4]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L919
	b .L929
.L920:
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl bubblesort
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L930
.L923:
	b .L920
.L929:
	b .L920
.L930:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L931
	b .L935
.L931:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r4, =-264
	ldr r5, [fp, r4]
	cmp r5, #32
	movlt r4, #1
	movge r4, #0
	blt .L931
	b .L941
.L932:
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl getMid
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl getMost
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl bubblesort
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L942
.L935:
	b .L932
.L941:
	b .L932
.L942:
	ldr r4, =-264
	ldr r5, [fp, r4]
	cmp r5, #32
	movlt r4, #1
	movge r4, #0
	blt .L943
	b .L947
.L943:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L943
	b .L953
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
.L944:
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl insertsort
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L954
.L947:
	b .L944
.L953:
	b .L944
.L954:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L955
	b .L959
.L955:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L955
	b .L965
.L956:
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	ldr r4, =31
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r6, =-264
	ldr r4, [fp, r6]
	ldr r7, =-260
	ldr r6, [fp, r7]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	b .L966
.L959:
	b .L956
.L965:
	b .L956
.L966:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L967
	b .L971
.L967:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L967
	b .L977
.L968:
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	mov r1, #4
	bl calSum
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L978
	b .F3
.LTORG
addr_n3:
	.word n
.F3:
.L971:
	b .L968
.L977:
	b .L968
.L978:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L979
	b .L983
.L979:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L979
	b .L989
.L980:
	mov r4, #0
	mov r5, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	ldr r6, =-256
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, r6
	bl arrCopy
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	mov r1, #3
	bl avgPooling
	mov r4, r0
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =0
	ldr r5, =-264
	str r4, [fp, r5]
	b .L990
.L983:
	b .L980
.L989:
	b .L980
.L990:
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L991
	b .L995
.L991:
	ldr r5, =-264
	ldr r4, [fp, r5]
	ldr r5, =-256
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r5, =-260
	ldr r4, [fp, r5]
	mov r0, r4
	bl putint
	ldr r5, =-264
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-264
	str r5, [fp, r4]
	ldr r5, =-264
	ldr r4, [fp, r5]
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L991
	b .L1001
.L992:
	mov r0, #0
	ldr r1, =264
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L995:
	b .L992
.L1001:
	b .L992

addr_n4:
	.word n
