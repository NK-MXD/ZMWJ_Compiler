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
	sub sp, sp, #24
.L531:
	str r0, [fp, #-4]
	b .L535
.L535:
	ldr r4, addr_n0
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, =0
	mov r6, r5
	ldr r5, =0
	mov r7, r5
	ldr r5, =0
	mov r7, r5
	str r7, [fp, #-8]
	ldr r5, =0
	cmp r5, r4
	movlt r4, #1
	movge r4, #0
	blt .L536
	b .L540
.L536:
	b .L541
.L537:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L540:
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	b .L537
.L541:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r7, r5, r4
	sub r4, r7, #1
	mov r5, r6
	ldr r7, =0
	mov r8, r7
	str r8, [fp, #-16]
	ldr r7, =0
	cmp r7, r4
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L546
.L542:
	ldr r4, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-16]
	mul r9, r8, r7
	add r7, r4, r9
	ldr r8, [r7]
	ldr r7, [fp, #-16]
	add r9, r7, #1
	mov r7, #4
	mul r10, r9, r7
	add r7, r4, r10
	ldr r4, [r7]
	cmp r8, r4
	movgt r4, #1
	movle r4, #0
	bgt .L547
	b .L555
.L543:
	ldr r4, [fp, #-8]
	add r7, r4, #1
	str r7, [fp, #-12]
	ldr r4, addr_n0
	ldr r7, [r4]
	sub r4, r7, #1
	ldr r7, [fp, #-24]
	mov r6, r7
	ldr r7, [fp, #-20]
	mov r8, r7
	ldr r7, [fp, #-12]
	mov r8, r7
	str r8, [fp, #-8]
	ldr r7, [fp, #-12]
	cmp r7, r4
	movlt r4, #1
	movge r4, #0
	blt .L536
	b .L578
.L546:
	mov r4, r6
	str r4, [fp, #-24]
	ldr r4, =0
	mov r6, r4
	str r6, [fp, #-20]
	b .L543
.L547:
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-16]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r4, r8
	ldr r8, [r6]
	mov r6, #4
	ldr r9, [fp, #-16]
	mul r10, r9, r6
	add r6, r4, r10
	ldr r9, [r6]
	mov r6, #4
	mul r10, r7, r6
	add r6, r4, r10
	str r9, [r6]
	mov r6, #4
	ldr r7, [fp, #-16]
	mul r9, r7, r6
	add r6, r4, r9
	str r8, [r6]
	mov r4, r8
	b .L548
.L548:
	ldr r6, [fp, #-16]
	add r7, r6, #1
	ldr r6, addr_n0
	ldr r8, [r6]
	ldr r6, [fp, #-8]
	sub r9, r8, r6
	sub r6, r9, #1
	mov r5, r4
	mov r8, r7
	str r8, [fp, #-16]
	cmp r7, r6
	movlt r6, #1
	movge r6, #0
	blt .L542
	b .L571
.L555:
	mov r4, r5
	b .L548
.L571:
	mov r5, r4
	str r5, [fp, #-24]
	mov r4, r7
	str r4, [fp, #-20]
	b .L543
.L578:
	ldr r4, [fp, #-24]
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r5, r4
	ldr r4, [fp, #-12]
	mov r5, r4
	b .L537

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L579:
	str r0, [fp, #-4]
	b .L582
.L582:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r6, r4
	ldr r4, =1
	mov r6, r4
	str r6, [fp, #-12]
	ldr r4, =1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L583
	b .L587
.L583:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r6, [fp, #-12]
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	b .L592
.L584:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L587:
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r6, r4
	ldr r4, =1
	mov r6, r4
	b .L584
.L592:
	ldr r4, =0
	sub r6, r4, #1
	mov r4, r5
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	bgt .L615
	b .L598
.L593:
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r4, r7
	add r7, r6, r8
	ldr r8, [r7]
	add r7, r4, #1
	mov r9, #4
	mul r10, r7, r9
	add r7, r6, r10
	str r8, [r7]
	sub r6, r4, #1
	ldr r7, =0
	sub r8, r7, #1
	mov r4, r6
	cmp r6, r8
	movgt r7, #1
	movle r7, #0
	bgt .L615
	b .L618
.L594:
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-16]
	add r9, r8, #1
	mov r8, #4
	mul r10, r9, r8
	add r8, r7, r10
	ldr r7, [fp, #-8]
	str r7, [r8]
	ldr r7, [fp, #-12]
	add r8, r7, #1
	ldr r7, addr_n0
	ldr r9, [r7]
	ldr r7, [fp, #-16]
	mov r10, r7
	ldr r7, [fp, #-8]
	mov r10, r7
	mov r7, r8
	str r7, [fp, #-12]
	cmp r8, r9
	movlt r7, #1
	movge r7, #0
	blt .L583
	b .L630
.L598:
	mov r7, r5
	str r7, [fp, #-16]
	b .L594
.L615:
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r9, r4, r7
	add r7, r5, r9
	ldr r5, [r7]
	ldr r7, [fp, #-8]
	cmp r7, r5
	movlt r5, #1
	movge r5, #0
	blt .L593
	b .L623
.L618:
	mov r5, r6
	str r5, [fp, #-16]
	b .L594
.L623:
	mov r5, r4
	str r5, [fp, #-16]
	b .L594
.L630:
	ldr r4, [fp, #-16]
	mov r5, r4
	ldr r4, [fp, #-8]
	mov r5, r4
	mov r4, r8
	b .L584

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32
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
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r8, #4
	mul r9, r7, r8
	add r7, r6, r9
	ldr r6, [r7]
	str r6, [fp, #-24]
	b .L645
.L636:
	mov r0, #0
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L639:
	ldr r6, =0
	mov r7, r6
	ldr r6, =0
	mov r7, r6
	ldr r6, =0
	mov r7, r6
	ldr r6, =0
	mov r7, r6
	b .L636
.L645:
	mov r6, r5
	mov r7, r4
	str r7, [fp, #-28]
	cmp r4, r5
	movlt r7, #1
	movge r7, #0
	blt .L646
	b .L650
.L646:
	b .L651
.L647:
	ldr r7, [fp, #-4]
	mov r8, #4
	ldr r9, [fp, #-16]
	mul r10, r9, r8
	add r8, r7, r10
	ldr r7, [fp, #-24]
	str r7, [r8]
	ldr r7, [fp, #-16]
	sub r8, r7, #1
	ldr r7, [fp, #-4]
	ldr r9, [fp, #-8]
	mov r0, r7
	mov r1, r9
	mov r2, r8
	bl QuickSort
	mov r7, r0
	ldr r7, [fp, #-16]
	add r8, r7, #1
	ldr r7, [fp, #-4]
	ldr r9, [fp, #-12]
	mov r0, r7
	mov r1, r8
	mov r2, r9
	bl QuickSort
	mov r7, r0
	mov r8, r7
	ldr r7, [fp, #-24]
	mov r8, r7
	ldr r7, [fp, #-20]
	mov r8, r7
	ldr r7, [fp, #-16]
	mov r8, r7
	b .L636
.L650:
	mov r7, r5
	str r7, [fp, #-20]
	mov r5, r4
	str r5, [fp, #-16]
	b .L647
.L651:
	mov r4, r6
	ldr r5, [fp, #-28]
	cmp r5, r6
	movlt r5, #1
	movge r5, #0
	blt .L672
	b .L657
.L652:
	sub r5, r4, #1
	mov r4, r5
	ldr r7, [fp, #-28]
	cmp r7, r5
	movlt r7, #1
	movge r7, #0
	blt .L672
	b .L675
.L653:
	ldr r8, [fp, #-28]
	cmp r8, r7
	movlt r8, #1
	movge r8, #0
	blt .L681
	b .L685
.L657:
	mov r7, r6
	b .L653
.L672:
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r4, r9
	add r9, r8, r10
	ldr r8, [r9]
	ldr r9, [fp, #-24]
	sub r10, r9, #1
	cmp r8, r10
	movgt r8, #1
	movle r8, #0
	bgt .L652
	b .L680
.L675:
	mov r7, r5
	b .L653
.L680:
	mov r7, r4
	b .L653
.L681:
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r8, r7, r5
	add r5, r4, r8
	ldr r8, [r5]
	mov r5, #4
	ldr r9, [fp, #-28]
	mul r10, r9, r5
	add r5, r4, r10
	str r8, [r5]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	mov r4, r5
	b .L682
.L682:
	b .L689
.L685:
	ldr r5, [fp, #-28]
	mov r4, r5
	b .L682
.L689:
	mov r5, r4
	cmp r4, r7
	movlt r8, #1
	movge r8, #0
	blt .L709
	b .L695
.L690:
	add r8, r5, #1
	mov r5, r8
	cmp r8, r7
	movlt r9, #1
	movge r9, #0
	blt .L709
	b .L712
.L691:
	ldr r9, [fp, #-32]
	cmp r9, r7
	movlt r9, #1
	movge r9, #0
	blt .L718
	b .L722
.L695:
	mov r9, r4
	str r9, [fp, #-32]
	b .L691
.L709:
	ldr r4, [fp, #-4]
	mov r9, #4
	mul r10, r5, r9
	add r9, r4, r10
	ldr r4, [r9]
	ldr r9, [fp, #-24]
	cmp r4, r9
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
	mov r4, r8
	str r4, [fp, #-32]
	b .L691
.L717:
	mov r4, r5
	str r4, [fp, #-32]
	b .L691
.L718:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r8, [fp, #-32]
	mul r9, r8, r5
	add r5, r4, r9
	ldr r8, [r5]
	mov r5, #4
	mul r9, r7, r5
	add r5, r4, r9
	str r8, [r5]
	sub r4, r7, #1
	mov r5, r4
	b .L719
.L719:
	mov r6, r5
	ldr r4, [fp, #-32]
	mov r8, r4
	str r8, [fp, #-28]
	ldr r4, [fp, #-32]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L646
	b .L731
.L722:
	mov r5, r7
	b .L719
.L731:
	mov r4, r5
	str r4, [fp, #-20]
	ldr r4, [fp, #-32]
	mov r5, r4
	str r5, [fp, #-16]
	b .L647

	.global getMid
	.type getMid , %function
getMid:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L736:
	str r0, [fp, #-4]
	ldr r4, addr_n1
	ldr r5, [r4]
	and r4, r5, #1
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
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r7, [r5]
	sub r5, r6, #1
	mov r6, #4
	mul r8, r5, r6
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, =2
	sdiv r6, r5, r4
	mov r0, r6
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L740:
	ldr r4, addr_n1
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
.L744:
	b .L740

	.global getMost
	.type getMost , %function
getMost:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =4032
	sub sp, sp, r4
.L751:
	str r0, [fp, #-4]
	b .L755
.L755:
	ldr r4, =0
	mov r5, r4
	ldr r4, =-4008
	str r5, [fp, r4]
	ldr r4, =0
	ldr r5, =1000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L756
	b .L760
.L756:
	ldr r4, =-4004
	mov r5, #4
	ldr r6, =-4008
	ldr r7, [fp, r6]
	mul r6, r7, r5
	add r5, fp, r4
	add r4, r5, r6
	ldr r5, =0
	str r5, [r4]
	ldr r4, =-4008
	ldr r5, [fp, r4]
	add r4, r5, #1
	ldr r5, =-4012
	str r4, [fp, r5]
	ldr r4, =1000
	ldr r5, =-4012
	ldr r6, [fp, r5]
	cmp r6, r4
	movlt r4, #1
	movge r4, #0
	blt .L1321
	b .L765
.L757:
	b .L768
.L760:
	ldr r4, =0
	mov r5, r4
	b .L757
.L765:
	ldr r4, =-4012
	ldr r5, [fp, r4]
	mov r4, r5
	b .L757
.L768:
	ldr r4, addr_n1
	ldr r5, [r4]
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r7, r4
	ldr r4, =0
	mov r8, r4
	ldr r4, =-4024
	str r8, [fp, r4]
	ldr r4, =0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L769
	b .L773
.L769:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r8, =-4024
	ldr r9, [fp, r8]
	mul r8, r9, r5
	add r5, r4, r8
	ldr r4, [r5]
	ldr r5, =-4016
	str r4, [fp, r5]
	ldr r4, =-4004
	mov r5, #4
	ldr r8, =-4016
	ldr r9, [fp, r8]
	mul r8, r9, r5
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, =-4004
	mov r8, #4
	ldr r9, =-4016
	ldr r10, [fp, r9]
	mul r9, r10, r8
	add r8, fp, r5
	add r5, r8, r9
	str r4, [r5]
	ldr r4, =-4004
	mov r5, #4
	ldr r8, =-4016
	ldr r9, [fp, r8]
	mul r8, r9, r5
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	cmp r5, r7
	movgt r4, #1
	movle r4, #0
	bgt .L778
	b .L783
.L770:
	ldr r4, =-4020
	ldr r5, [fp, r4]
	mov r0, r5
	ldr r1, =4032
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L773:
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	ldr r4, =-4020
	str r5, [fp, r4]
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	b .L770
.L778:
	ldr r4, =-4004
	mov r5, #4
	ldr r8, =-4016
	ldr r9, [fp, r8]
	mul r8, r9, r5
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	ldr r4, =-4016
	ldr r8, [fp, r4]
	mov r4, r8
	mov r8, r5
	b .L779
.L779:
	ldr r5, =-4024
	ldr r9, [fp, r5]
	add r5, r9, #1
	ldr r9, =-4028
	str r5, [fp, r9]
	ldr r5, addr_n1
	ldr r9, [r5]
	ldr r5, =-4016
	ldr r10, [fp, r5]
	mov r5, r10
	mov r6, r4
	mov r7, r8
	ldr r5, =-4028
	ldr r10, [fp, r5]
	mov r5, r10
	ldr r10, =-4024
	str r5, [fp, r10]
	ldr r5, =-4028
	ldr r10, [fp, r5]
	cmp r10, r9
	movlt r5, #1
	movge r5, #0
	blt .L769
	b .L790
.L783:
	mov r4, r6
	mov r8, r7
	b .L779
.L790:
	ldr r5, =-4016
	ldr r6, [fp, r5]
	mov r5, r6
	mov r5, r4
	ldr r4, =-4020
	str r5, [fp, r4]
	mov r4, r8
	ldr r4, =-4028
	ldr r5, [fp, r4]
	mov r4, r5
	b .L770
	b .F1
.LTORG
addr_n1:
	.word n
.F1:
.L1321:
	ldr r4, =-4012
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-4008
	str r4, [fp, r5]
	b .L756

	.global revert
	.type revert , %function
revert:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L791:
	str r0, [fp, #-4]
	b .L796
.L796:
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r7, r4
	ldr r4, =0
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L797
	b .L801
.L797:
	ldr r4, [fp, #-4]
	mov r7, #4
	mul r8, r6, r7
	add r7, r4, r8
	ldr r8, [r7]
	mov r7, #4
	mul r9, r5, r7
	add r7, r4, r9
	ldr r9, [r7]
	mov r7, #4
	mul r10, r6, r7
	add r7, r4, r10
	str r9, [r7]
	mov r7, #4
	mul r9, r5, r7
	add r7, r4, r9
	str r8, [r7]
	add r4, r6, #1
	sub r7, r5, #1
	cmp r4, r7
	movlt r9, #1
	movge r9, #0
	blt .L1336
	b .L813
.L798:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L801:
	ldr r9, =0
	mov r10, r9
	ldr r9, =0
	mov r10, r9
	ldr r9, =0
	mov r10, r9
	b .L798
.L813:
	mov r9, r7
	mov r9, r4
	mov r9, r8
	b .L798
.L1336:
	mov r5, r7
	mov r6, r4
	mov r4, r8
	b .L797

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L814:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L818
.L818:
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L819
	b .L823
.L819:
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	mov r7, #4
	mul r8, r6, r7
	add r7, r5, r8
	str r4, [r7]
	add r4, r6, #1
	ldr r5, addr_n2
	ldr r7, [r5]
	cmp r4, r7
	movlt r5, #1
	movge r5, #0
	blt .L1341
	b .L832
.L820:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L823:
	ldr r5, =0
	mov r7, r5
	b .L820
.L832:
	mov r5, r4
	b .L820
.L1341:
	mov r6, r4
	b .L819

	.global calSum
	.type calSum , %function
calSum:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L833:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L838
.L838:
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	mov r7, r4
	ldr r4, =0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L839
	b .L843
.L839:
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r8, r6, r5
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r7, r4
	ldr r4, [fp, #-8]
	sdiv r8, r6, r4
	mul r9, r8, r4
	sub r4, r6, r9
	ldr r8, [fp, #-8]
	sub r9, r8, #1
	cmp r4, r9
	movne r4, #1
	moveq r4, #0
	bne .L846
	b .L851
.L840:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L843:
	ldr r4, =0
	mov r8, r4
	ldr r4, =0
	mov r8, r4
	b .L840
.L846:
	ldr r4, [fp, #-4]
	mov r8, #4
	mul r9, r6, r8
	add r8, r4, r9
	ldr r4, =0
	str r4, [r8]
	mov r4, r5
	b .L848
.L847:
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r6, r9
	add r9, r8, r10
	str r5, [r9]
	ldr r8, =0
	mov r4, r8
	b .L848
.L848:
	add r8, r6, #1
	ldr r9, addr_n2
	ldr r10, [r9]
	mov r6, r8
	mov r7, r4
	cmp r8, r10
	movlt r9, #1
	movge r9, #0
	blt .L839
	b .L859
.L851:
	b .L847
.L859:
	mov r5, r8
	mov r5, r4
	b .L840

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L860:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L866
.L866:
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, =0
	mov r6, r4
	str r6, [fp, #-36]
	ldr r4, =0
	mov r6, r4
	str r6, [fp, #-32]
	ldr r4, =0
	mov r6, r4
	str r6, [fp, #-28]
	ldr r4, =0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L867
	b .L871
.L867:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, [fp, #-32]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L872
	b .L877
.L868:
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, [fp, #-8]
	sub r6, r5, r4
	add r4, r6, #1
	str r4, [fp, #-12]
	b .L900
.L871:
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	mov r5, r4
	b .L868
.L872:
	ldr r4, [fp, #-4]
	mov r5, #4
	ldr r6, [fp, #-32]
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-28]
	add r6, r5, r4
	ldr r4, [fp, #-36]
	mov r5, r4
	str r5, [fp, #-24]
	mov r4, r6
	str r4, [fp, #-16]
	b .L874
.L873:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, [fp, #-32]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L880
	b .L885
.L874:
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	mov r6, r4
	str r6, [fp, #-36]
	ldr r4, [fp, #-20]
	mov r6, r4
	str r6, [fp, #-32]
	ldr r4, [fp, #-16]
	mov r6, r4
	str r6, [fp, #-28]
	ldr r4, [fp, #-20]
	cmp r4, r5
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
	ldr r6, [r5]
	ldr r5, [fp, #-8]
	ldr r7, [fp, #-28]
	sdiv r8, r7, r5
	mov r5, #0
	mov r7, #4
	mul r9, r5, r7
	add r5, r4, r9
	str r8, [r5]
	mov r4, r6
	ldr r5, [fp, #-28]
	mov r6, r5
	b .L882
.L881:
	ldr r5, [fp, #-4]
	mov r7, #4
	ldr r8, [fp, #-32]
	mul r9, r8, r7
	add r7, r5, r9
	ldr r8, [r7]
	ldr r7, [fp, #-28]
	add r9, r7, r8
	ldr r7, [fp, #-36]
	sub r8, r9, r7
	ldr r7, [fp, #-8]
	ldr r9, [fp, #-32]
	sub r10, r9, r7
	add r7, r10, #1
	mov r9, #4
	mul r10, r7, r9
	add r7, r5, r10
	ldr r5, [r7]
	ldr r9, [fp, #-8]
	sdiv r10, r8, r9
	ldr r9, [fp, #-8]
	str r10, [r7]
	mov r4, r5
	mov r6, r8
	b .L882
.L882:
	mov r5, r4
	str r5, [fp, #-24]
	mov r4, r6
	str r4, [fp, #-16]
	b .L874
.L885:
	b .L881
.L899:
	ldr r4, [fp, #-24]
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r5, r4
	b .L868
.L900:
	ldr r4, addr_n2
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	mov r6, r4
	ldr r4, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L901
	b .L905
.L901:
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	add r4, r6, #1
	ldr r5, addr_n2
	ldr r7, [r5]
	cmp r4, r7
	movlt r5, #1
	movge r5, #0
	blt .L1359
	b .L912
	b .F2
.LTORG
addr_n2:
	.word n
.F2:
.L902:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L905:
	ldr r5, [fp, #-12]
	mov r7, r5
	b .L902
.L912:
	mov r5, r4
	b .L902
.L1359:
	mov r6, r4
	b .L901

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =328
	sub sp, sp, r4
.L913:
	ldr r4, =32
	ldr r5, addr_n3
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
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =23
	str r4, [r6]
	mov r4, #2
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =89
	str r4, [r6]
	mov r4, #3
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =26
	str r4, [r6]
	mov r4, #4
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =282
	str r4, [r6]
	mov r4, #5
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =254
	str r4, [r6]
	mov r4, #6
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =27
	str r4, [r6]
	mov r4, #7
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =5
	str r4, [r6]
	mov r4, #8
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =83
	str r4, [r6]
	mov r4, #9
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =273
	str r4, [r6]
	mov r4, #10
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =574
	str r4, [r6]
	mov r4, #11
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =905
	str r4, [r6]
	mov r4, #12
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =354
	str r4, [r6]
	mov r4, #13
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =657
	str r4, [r6]
	mov r4, #14
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =935
	str r4, [r6]
	mov r4, #15
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =264
	str r4, [r6]
	mov r4, #16
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =639
	str r4, [r6]
	mov r4, #17
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =459
	str r4, [r6]
	mov r4, #18
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =29
	str r4, [r6]
	mov r4, #19
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =68
	str r4, [r6]
	mov r4, #20
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =929
	str r4, [r6]
	mov r4, #21
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =756
	str r4, [r6]
	mov r4, #22
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =452
	str r4, [r6]
	mov r4, #23
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =279
	str r4, [r6]
	mov r4, #24
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =58
	str r4, [r6]
	mov r4, #25
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =87
	str r4, [r6]
	mov r4, #26
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =96
	str r4, [r6]
	mov r4, #27
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =36
	str r4, [r6]
	mov r4, #28
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =39
	str r4, [r6]
	mov r4, #29
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =28
	str r4, [r6]
	mov r4, #30
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =1
	str r4, [r6]
	mov r4, #31
	mov r6, #-128
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, =290
	str r4, [r6]
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
	mov r0, r6
	bl revert
	mov r4, r0
	b .L918
	b .F3
.LTORG
addr_n3:
	.word n
.F3:
.L918:
	ldr r5, =0
	mov r6, r5
	ldr r5, =-260
	str r6, [fp, r5]
	mov r5, r4
	ldr r5, =0
	cmp r5, #32
	movlt r5, #1
	movge r5, #0
	blt .L919
	b .L923
.L919:
	ldr r5, =-256
	mov r6, #4
	ldr r7, =-260
	ldr r8, [fp, r7]
	mul r7, r8, r6
	add r6, fp, r5
	add r5, r6, r7
	ldr r6, [r5]
	ldr r5, =-324
	str r6, [fp, r5]
	ldr r5, =-324
	ldr r6, [fp, r5]
	mov r0, r6
	bl putint
	ldr r5, =-260
	ldr r6, [fp, r5]
	add r5, r6, #1
	cmp r5, #32
	movlt r6, #1
	movge r6, #0
	blt .L1363
	b .L929
.L920:
	mov r6, #0
	ldr r7, =-256
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	mov r0, r7
	bl bubblesort
	mov r6, r0
	b .L930
.L923:
	ldr r7, =0
	mov r8, r7
	mov r7, r4
	b .L920
.L929:
	mov r4, r5
	ldr r4, =-324
	ldr r7, [fp, r4]
	mov r4, r7
	b .L920
.L930:
	ldr r4, =0
	mov r7, r4
	ldr r4, =-264
	str r7, [fp, r4]
	mov r4, r6
	ldr r4, =0
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L931
	b .L935
.L931:
	ldr r4, =-256
	mov r7, #4
	ldr r8, =-264
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r4
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =-284
	str r7, [fp, r4]
	ldr r4, =-284
	ldr r7, [fp, r4]
	mov r0, r7
	bl putint
	ldr r4, =-264
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r7, =-304
	str r4, [fp, r7]
	ldr r4, =-304
	ldr r7, [fp, r4]
	cmp r7, #32
	movlt r4, #1
	movge r4, #0
	blt .L1368
	b .L941
.L932:
	mov r4, #0
	ldr r7, =-256
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r0, r7
	bl getMid
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, r7
	bl getMost
	mov r4, r0
	mov r0, r4
	bl putint
	mov r4, #0
	mov r8, #-128
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r0, r8
	mov r1, r7
	bl arrCopy
	mov r4, r0
	mov r0, r7
	bl bubblesort
	mov r4, r0
	b .L942
.L935:
	ldr r7, =0
	mov r8, r7
	mov r7, r6
	b .L932
.L941:
	ldr r6, =-304
	ldr r7, [fp, r6]
	mov r6, r7
	ldr r6, =-284
	ldr r7, [fp, r6]
	mov r6, r7
	b .L932
.L942:
	ldr r6, =0
	mov r7, r6
	ldr r6, =-268
	str r7, [fp, r6]
	mov r6, r4
	ldr r6, =0
	cmp r6, #32
	movlt r6, #1
	movge r6, #0
	blt .L943
	b .L947
.L943:
	ldr r6, =-256
	mov r7, #4
	ldr r8, =-268
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r6
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =-288
	str r7, [fp, r6]
	ldr r6, =-288
	ldr r7, [fp, r6]
	mov r0, r7
	bl putint
	ldr r6, =-268
	ldr r7, [fp, r6]
	add r6, r7, #1
	ldr r7, =-308
	str r6, [fp, r7]
	ldr r6, =-308
	ldr r7, [fp, r6]
	cmp r7, #32
	movlt r6, #1
	movge r6, #0
	blt .L1373
	b .L953
	b .F4
.LTORG
addr_n4:
	.word n
.F4:
.L944:
	mov r6, #0
	mov r7, #-128
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	mov r6, #0
	ldr r8, =-256
	mov r9, #4
	mul r10, r6, r9
	add r6, fp, r8
	add r8, r6, r10
	mov r0, r7
	mov r1, r8
	bl arrCopy
	mov r6, r0
	mov r0, r8
	bl insertsort
	mov r6, r0
	b .L954
.L947:
	ldr r7, =0
	mov r8, r7
	mov r7, r4
	b .L944
.L953:
	ldr r4, =-308
	ldr r7, [fp, r4]
	mov r4, r7
	ldr r4, =-288
	ldr r7, [fp, r4]
	mov r4, r7
	b .L944
.L954:
	ldr r4, =0
	mov r7, r4
	ldr r4, =-272
	str r7, [fp, r4]
	mov r4, r6
	ldr r4, =0
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L955
	b .L959
.L955:
	ldr r4, =-256
	mov r7, #4
	ldr r8, =-272
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r4
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =-292
	str r7, [fp, r4]
	ldr r4, =-292
	ldr r7, [fp, r4]
	mov r0, r7
	bl putint
	ldr r4, =-272
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r7, =-312
	str r4, [fp, r7]
	ldr r4, =-312
	ldr r7, [fp, r4]
	cmp r7, #32
	movlt r4, #1
	movge r4, #0
	blt .L1378
	b .L965
.L956:
	mov r4, #0
	mov r7, #-128
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r4, #0
	ldr r8, =-256
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r0, r7
	mov r1, r8
	bl arrCopy
	mov r4, r0
	mov r0, r8
	mov r1, #0
	mov r2, #31
	bl QuickSort
	mov r4, r0
	b .L966
.L959:
	ldr r7, =0
	mov r8, r7
	mov r7, r6
	b .L956
.L965:
	ldr r6, =-312
	ldr r7, [fp, r6]
	mov r6, r7
	ldr r6, =-292
	ldr r7, [fp, r6]
	mov r6, r7
	b .L956
.L966:
	ldr r6, =0
	mov r7, r6
	ldr r6, =-276
	str r7, [fp, r6]
	mov r6, r4
	ldr r6, =0
	cmp r6, #32
	movlt r6, #1
	movge r6, #0
	blt .L967
	b .L971
.L967:
	ldr r6, =-256
	mov r7, #4
	ldr r8, =-276
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r6
	add r6, r7, r8
	ldr r7, [r6]
	ldr r6, =-296
	str r7, [fp, r6]
	ldr r6, =-296
	ldr r7, [fp, r6]
	mov r0, r7
	bl putint
	ldr r6, =-276
	ldr r7, [fp, r6]
	add r6, r7, #1
	ldr r7, =-316
	str r6, [fp, r7]
	ldr r6, =-316
	ldr r7, [fp, r6]
	cmp r7, #32
	movlt r6, #1
	movge r6, #0
	blt .L1383
	b .L977
.L968:
	mov r6, #0
	mov r7, #-128
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	mov r6, #0
	ldr r8, =-256
	mov r9, #4
	mul r10, r6, r9
	add r6, fp, r8
	add r8, r6, r10
	mov r0, r7
	mov r1, r8
	bl arrCopy
	mov r6, r0
	mov r0, r8
	mov r1, #4
	bl calSum
	mov r6, r0
	b .L978
.L971:
	ldr r7, =0
	mov r8, r7
	mov r7, r4
	b .L968
	b .F5
.LTORG
addr_n5:
	.word n
.F5:
.L977:
	ldr r4, =-316
	ldr r7, [fp, r4]
	mov r4, r7
	ldr r4, =-296
	ldr r7, [fp, r4]
	mov r4, r7
	b .L968
.L978:
	ldr r4, =0
	mov r7, r4
	ldr r4, =-280
	str r7, [fp, r4]
	mov r4, r6
	ldr r4, =0
	cmp r4, #32
	movlt r4, #1
	movge r4, #0
	blt .L979
	b .L983
.L979:
	ldr r4, =-256
	mov r7, #4
	ldr r8, =-280
	ldr r9, [fp, r8]
	mul r8, r9, r7
	add r7, fp, r4
	add r4, r7, r8
	ldr r7, [r4]
	ldr r4, =-300
	str r7, [fp, r4]
	ldr r4, =-300
	ldr r7, [fp, r4]
	mov r0, r7
	bl putint
	ldr r4, =-280
	ldr r7, [fp, r4]
	add r4, r7, #1
	ldr r7, =-320
	str r4, [fp, r7]
	ldr r4, =-320
	ldr r7, [fp, r4]
	cmp r7, #32
	movlt r4, #1
	movge r4, #0
	blt .L1388
	b .L989
.L980:
	mov r4, #0
	mov r7, #-128
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r4, #0
	ldr r8, =-256
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r0, r7
	mov r1, r8
	bl arrCopy
	mov r4, r0
	mov r0, r8
	mov r1, #3
	bl avgPooling
	mov r4, r0
	b .L990
.L983:
	ldr r7, =0
	mov r8, r7
	mov r7, r6
	b .L980
.L989:
	ldr r6, =-320
	ldr r7, [fp, r6]
	mov r6, r7
	ldr r6, =-300
	ldr r7, [fp, r6]
	mov r6, r7
	b .L980
.L990:
	ldr r6, =0
	mov r7, r6
	mov r6, r4
	ldr r6, =0
	cmp r6, #32
	movlt r6, #1
	movge r6, #0
	blt .L991
	b .L995
.L991:
	ldr r6, =-256
	mov r8, #4
	mul r9, r7, r8
	add r8, fp, r6
	add r6, r8, r9
	ldr r8, [r6]
	mov r0, r8
	bl putint
	add r6, r7, #1
	cmp r6, #32
	movlt r9, #1
	movge r9, #0
	blt .L1393
	b .L1001
.L992:
	mov r0, #0
	ldr r1, =328
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L995:
	ldr r9, =0
	mov r10, r9
	mov r9, r4
	b .L992
.L1001:
	mov r4, r6
	mov r4, r8
	b .L992
.L1363:
	mov r4, r5
	ldr r5, =-260
	str r4, [fp, r5]
	ldr r4, =-324
	ldr r5, [fp, r4]
	mov r4, r5
	b .L919
.L1368:
	ldr r4, =-304
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-264
	str r4, [fp, r5]
	ldr r4, =-284
	ldr r5, [fp, r4]
	mov r4, r5
	b .L931
.L1373:
	ldr r4, =-308
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-268
	str r4, [fp, r5]
	ldr r4, =-288
	ldr r5, [fp, r4]
	mov r4, r5
	b .L943
.L1378:
	ldr r4, =-312
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-272
	str r4, [fp, r5]
	ldr r4, =-292
	ldr r5, [fp, r4]
	mov r4, r5
	b .L955
.L1383:
	ldr r4, =-316
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-276
	str r4, [fp, r5]
	ldr r4, =-296
	ldr r5, [fp, r4]
	mov r4, r5
	b .L967
.L1388:
	ldr r4, =-320
	ldr r5, [fp, r4]
	mov r4, r5
	ldr r5, =-280
	str r4, [fp, r5]
	ldr r4, =-300
	ldr r5, [fp, r4]
	mov r4, r5
	b .L979
	b .F6
.LTORG
addr_n6:
	.word n
.F6:
.L1393:
	mov r7, r6
	mov r4, r8
	b .L991

addr_n7:
	.word n
	.ident "ZWJM"
