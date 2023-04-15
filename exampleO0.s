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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L531:
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L535
.L535:
	ldr r1, [fp, #-8]
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L540
.L536:
	ldr r0, =0
	str r0, [fp, #-12]
	b .L541
.L537:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L540:
	b .L537
.L541:
	ldr r2, [fp, #-12]
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L542
	b .L546
.L542:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-12]
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	cmp r3, r0
	movgt r0, #1
	movle r0, #0
	bgt .L547
	b .L555
.L543:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L578
.L546:
	b .L543
.L547:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-12]
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-16]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-12]
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	b .L548
.L548:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r2, [fp, #-12]
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L579:
	str r0, [fp, #-4]
	ldr r0, =1
	str r0, [fp, #-8]
	b .L582
.L582:
	ldr r1, [fp, #-8]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L583
	b .L587
.L583:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L592
.L584:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L587:
	b .L584
.L592:
	ldr r1, [fp, #-16]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L615
	b .L598
.L593:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-16]
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L615
	b .L618
.L594:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-16]
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L583
	b .L630
.L598:
	b .L594
.L615:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #32
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
	ldr r0, [fp, #-8]
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	str r0, [fp, #-20]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-24]
	b .L645
.L636:
	mov r0, #0
	add sp, sp, #32
	pop {r3, r4, fp, lr}
	bx lr
.L639:
	b .L636
.L645:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L646
	b .L650
.L646:
	b .L651
.L647:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-28]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-28]
	bl QuickSort
	str r0, [fp, #-28]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-28]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-28]
	ldr r2, [fp, #-12]
	bl QuickSort
	str r0, [fp, #-28]
	b .L636
.L650:
	b .L647
.L651:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L672
	b .L657
.L652:
	ldr r0, [fp, #-20]
	sub r0, r0, #1
	str r0, [fp, #-20]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L672
	b .L675
.L653:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L681
	b .L685
.L657:
	b .L653
.L672:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L652
	b .L680
.L675:
	b .L653
.L680:
	b .L653
.L681:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L682
.L682:
	b .L689
.L685:
	b .L682
.L689:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L709
	b .L695
.L690:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L709
	b .L712
.L691:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L718
	b .L722
.L695:
	b .L691
.L709:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L690
	b .L717
.L712:
	b .L691
.L717:
	b .L691
.L718:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-20]
	sub r0, r0, #1
	str r0, [fp, #-20]
	b .L719
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L719:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L646
	b .L731
.L722:
	b .L719
.L731:
	b .L647

	.global getMid
	.type getMid , %function
getMid:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L736:
	str r0, [fp, #-4]
	ldr r0, addr_n1
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
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r1, r0, #1
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
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L744:
	b .L740

	.global getMost
	.type getMost , %function
getMost:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =4024
	sub sp, sp, r4
.L751:
	str r0, [fp, #-4]
	ldr r1, =0
	ldr r0, =-4008
	str r1, [fp, r0]
	b .L755
.L755:
	ldr r0, =-4008
	ldr r1, [fp, r0]
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L756
	b .L760
.L756:
	ldr r0, =-4008
	ldr r1, [fp, r0]
	ldr r2, =-4004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	ldr r0, =-4008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-4008
	str r1, [fp, r0]
	ldr r0, =-4008
	ldr r1, [fp, r0]
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L756
	b .L765
.L757:
	ldr r1, =0
	ldr r0, =-4008
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-4012
	str r1, [fp, r0]
	b .L768
.L760:
	b .L757
.L765:
	b .L757
.L768:
	ldr r0, =-4008
	ldr r1, [fp, r0]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L773
.L769:
	ldr r2, [fp, #-4]
	ldr r0, =-4008
	ldr r1, [fp, r0]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r1, [r0]
	ldr r0, =-4020
	str r1, [fp, r0]
	ldr r0, =-4020
	ldr r1, [fp, r0]
	ldr r2, =-4004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r3, r0, #1
	ldr r0, =-4020
	ldr r1, [fp, r0]
	ldr r2, =-4004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r0, =-4020
	ldr r1, [fp, r0]
	ldr r2, =-4004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-4012
	ldr r0, [fp, r0]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L778
	b .L783
.L770:
	ldr r0, =-4016
	ldr r0, [fp, r0]
	ldr r1, =4024
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L773:
	b .L770
.L778:
	ldr r0, =-4020
	ldr r1, [fp, r0]
	ldr r2, =-4004
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-4012
	str r1, [fp, r0]
	ldr r0, =-4020
	ldr r1, [fp, r0]
	ldr r0, =-4016
	str r1, [fp, r0]
	b .L779
.L779:
	ldr r0, =-4008
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-4008
	str r1, [fp, r0]
	ldr r0, =-4008
	ldr r1, [fp, r0]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L769
	b .L790
.L783:
	b .L779
.L790:
	b .L770

	.global revert
	.type revert , %function
revert:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L791:
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-16]
	b .L796
.L796:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L797
	b .L801
.L797:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L797
	b .L813
.L798:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L801:
	b .L798
.L813:
	b .L798

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L814:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L818
.L818:
	ldr r1, [fp, #-12]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L819
	b .L823
.L819:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r3, [r0]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L819
	b .L832
.L820:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L823:
	b .L820
.L832:
	b .L820

	.global calSum
	.type calSum , %function
calSum:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L833:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-16]
	b .L838
.L838:
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L839
	b .L843
.L839:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L846
	b .L851
.L840:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L843:
	b .L840
.L846:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, =0
	str r0, [r1]
	b .L848
.L847:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L848
.L848:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L839
	b .L859
.L851:
	b .L847
.L859:
	b .L840

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L860:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-16]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L866
.L866:
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L867
	b .L871
.L867:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L872
	b .L877
.L868:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L900
.L871:
	b .L868
.L872:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-12]
	b .L874
.L873:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L880
	b .L885
.L874:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L867
	b .L899
.L877:
	b .L873
.L880:
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-20]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	sdiv r3, r1, r0
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	b .L882
.L881:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	add r1, r3, r0
	ldr r0, [fp, #-20]
	sub r0, r1, r0
	str r0, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [fp, #-20]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	sdiv r3, r1, r0
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r1, r0, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	str r3, [r0]
	b .L882
.L882:
	b .L874
.L885:
	b .L881
.L899:
	b .L868
.L900:
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L901
	b .L905
.L901:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, =0
	str r0, [r1]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L901
	b .L912
.L902:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L905:
	b .L902
.L912:
	b .L902

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =264
	sub sp, sp, r4
.L913:
	ldr r1, =32
	ldr r0, addr_n1
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl revert
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	b .L918
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L918:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L919
	b .L923
.L919:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L919
	b .L929
.L920:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl bubblesort
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	b .L930
.L923:
	b .L920
.L929:
	b .L920
.L930:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L931
	b .L935
.L931:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L931
	b .L941
.L932:
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl getMid
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl getMost
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl bubblesort
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	b .L942
.L935:
	b .L932
.L941:
	b .L932
.L942:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L943
	b .L947
.L943:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L943
	b .L953
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl insertsort
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	b .L954
.L947:
	b .L944
.L953:
	b .L944
.L954:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L955
	b .L959
.L955:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L955
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r1, =31
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r0, =-260
	ldr r2, [fp, r0]
	mov r0, r3
	bl QuickSort
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	b .L966
.L959:
	b .L956
.L965:
	b .L956
.L966:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L967
	b .L971
.L967:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L967
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, #4
	bl calSum
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
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
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L979
	b .L983
.L979:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L979
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
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	mov r1, #0
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	mov r1, #3
	bl avgPooling
	mov r1, r0
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r1, =0
	ldr r0, =-264
	str r1, [fp, r0]
	b .L990
.L983:
	b .L980
.L989:
	b .L980
.L990:
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L991
	b .L995
.L991:
	ldr r0, =-264
	ldr r1, [fp, r0]
	ldr r2, =-256
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, =-260
	str r1, [fp, r0]
	ldr r0, =-260
	ldr r0, [fp, r0]
	bl putint
	ldr r0, =-264
	ldr r0, [fp, r0]
	add r1, r0, #1
	ldr r0, =-264
	str r1, [fp, r0]
	ldr r0, =-264
	ldr r0, [fp, r0]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L991
	b .L1001
.L992:
	mov r0, #0
	ldr r1, =264
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L995:
	b .L992
.L1001:
	b .L992

addr_n4:
	.word n
	.ident "ZWJM"
