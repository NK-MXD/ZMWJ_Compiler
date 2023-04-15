@n = global i32 0, align 4
define i32 @bubblesort(i32* %t1) {
B531:
  %t532 = alloca i32*, align 4
  %t533 = alloca i32, align 4
  %t534 = alloca i32, align 4
  %t556 = alloca i32, align 4
  store i32* %t1, i32** %t532, align 4
  store i32 0, i32* %t533, align 4
  br label %B535
B535:                               	; preds = %B531
  %t6 = load i32, i32* %t533, align 4
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t9 = icmp slt i32 %t6, %t8
  br i1 %t9, label %B536, label %B540
B536:                               	; preds = %B535, %B543
  store i32 0, i32* %t534, align 4
  br label %B541
B540:                               	; preds = %B535
  br label %B537
B541:                               	; preds = %B536
  %t11 = load i32, i32* %t534, align 4
  %t12 = load i32, i32* @n, align 4
  %t13 = load i32, i32* %t533, align 4
  %t14 = sub i32 %t12, %t13
  %t15 = sub i32 %t14, 1
  %t16 = icmp slt i32 %t11, %t15
  br i1 %t16, label %B542, label %B546
B537:                               	; preds = %B540, %B578
  ret i32 0
B542:                               	; preds = %B541, %B548
  %t549 = load i32*, i32** %t532, align 4
  %t17 = load i32, i32* %t534, align 4
  %t18 = getelementptr inbounds i32, i32* %t549, i32 %t17
  %t550 = load i32, i32* %t18, align 4
  %t551 = load i32*, i32** %t532, align 4
  %t19 = load i32, i32* %t534, align 4
  %t20 = add i32 %t19, 1
  %t21 = getelementptr inbounds i32, i32* %t551, i32 %t20
  %t552 = load i32, i32* %t21, align 4
  %t22 = icmp sgt i32 %t550, %t552
  br i1 %t22, label %B547, label %B555
B546:                               	; preds = %B541
  br label %B543
B547:                               	; preds = %B542
  %t557 = load i32*, i32** %t532, align 4
  %t25 = load i32, i32* %t534, align 4
  %t26 = add i32 %t25, 1
  %t27 = getelementptr inbounds i32, i32* %t557, i32 %t26
  %t558 = load i32, i32* %t27, align 4
  store i32 %t558, i32* %t556, align 4
  %t559 = load i32*, i32** %t532, align 4
  %t31 = load i32, i32* %t534, align 4
  %t32 = getelementptr inbounds i32, i32* %t559, i32 %t31
  %t560 = load i32, i32* %t32, align 4
  %t561 = load i32*, i32** %t532, align 4
  %t28 = load i32, i32* %t534, align 4
  %t29 = add i32 %t28, 1
  %t30 = getelementptr inbounds i32, i32* %t561, i32 %t29
  store i32 %t560, i32* %t30, align 4
  %t35 = load i32, i32* %t556, align 4
  %t562 = load i32*, i32** %t532, align 4
  %t33 = load i32, i32* %t534, align 4
  %t34 = getelementptr inbounds i32, i32* %t562, i32 %t33
  store i32 %t35, i32* %t34, align 4
  br label %B548
B555:                               	; preds = %B542
  br label %B548
B543:                               	; preds = %B546, %B571
  %t40 = load i32, i32* %t533, align 4
  %t41 = add i32 %t40, 1
  store i32 %t41, i32* %t533, align 4
  %t572 = load i32, i32* %t533, align 4
  %t573 = load i32, i32* @n, align 4
  %t574 = sub i32 %t573, 1
  %t575 = icmp slt i32 %t572, %t574
  br i1 %t575, label %B536, label %B578
B548:                               	; preds = %B547, %B555
  %t37 = load i32, i32* %t534, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t534, align 4
  %t563 = load i32, i32* %t534, align 4
  %t564 = load i32, i32* @n, align 4
  %t565 = load i32, i32* %t533, align 4
  %t566 = sub i32 %t564, %t565
  %t567 = sub i32 %t566, 1
  %t568 = icmp slt i32 %t563, %t567
  br i1 %t568, label %B542, label %B571
B578:                               	; preds = %B543
  br label %B537
B571:                               	; preds = %B548
  br label %B543
}
define i32 @insertsort(i32* %t42) {
B579:
  %t580 = alloca i32*, align 4
  %t581 = alloca i32, align 4
  %t588 = alloca i32, align 4
  %t591 = alloca i32, align 4
  store i32* %t42, i32** %t580, align 4
  store i32 1, i32* %t581, align 4
  br label %B582
B582:                               	; preds = %B579
  %t46 = load i32, i32* %t581, align 4
  %t47 = load i32, i32* @n, align 4
  %t48 = icmp slt i32 %t46, %t47
  br i1 %t48, label %B583, label %B587
B583:                               	; preds = %B582, %B594
  %t589 = load i32*, i32** %t580, align 4
  %t51 = load i32, i32* %t581, align 4
  %t52 = getelementptr inbounds i32, i32* %t589, i32 %t51
  %t590 = load i32, i32* %t52, align 4
  store i32 %t590, i32* %t588, align 4
  %t55 = load i32, i32* %t581, align 4
  %t56 = sub i32 %t55, 1
  store i32 %t56, i32* %t591, align 4
  br label %B592
B587:                               	; preds = %B582
  br label %B584
B592:                               	; preds = %B583
  %t57 = load i32, i32* %t591, align 4
  %t58 = sub i32 0, 1
  %t59 = icmp sgt i32 %t57, %t58
  br i1 %t59, label %B615, label %B598
B584:                               	; preds = %B587, %B630
  ret i32 0
B615:                               	; preds = %B592, %B593
  %t610 = load i32, i32* %t588, align 4
  %t619 = load i32*, i32** %t580, align 4
  %t611 = load i32, i32* %t591, align 4
  %t612 = getelementptr inbounds i32, i32* %t619, i32 %t611
  %t620 = load i32, i32* %t612, align 4
  %t613 = icmp slt i32 %t610, %t620
  br i1 %t613, label %B593, label %B623
B598:                               	; preds = %B592
  br label %B594
B593:                               	; preds = %B615
  %t604 = load i32*, i32** %t580, align 4
  %t68 = load i32, i32* %t591, align 4
  %t69 = getelementptr inbounds i32, i32* %t604, i32 %t68
  %t605 = load i32, i32* %t69, align 4
  %t606 = load i32*, i32** %t580, align 4
  %t65 = load i32, i32* %t591, align 4
  %t66 = add i32 %t65, 1
  %t67 = getelementptr inbounds i32, i32* %t606, i32 %t66
  store i32 %t605, i32* %t67, align 4
  %t71 = load i32, i32* %t591, align 4
  %t72 = sub i32 %t71, 1
  store i32 %t72, i32* %t591, align 4
  %t607 = load i32, i32* %t591, align 4
  %t608 = sub i32 0, 1
  %t609 = icmp sgt i32 %t607, %t608
  br i1 %t609, label %B615, label %B618
B623:                               	; preds = %B615
  br label %B594
B594:                               	; preds = %B598, %B618, %B623
  %t76 = load i32, i32* %t588, align 4
  %t624 = load i32*, i32** %t580, align 4
  %t73 = load i32, i32* %t591, align 4
  %t74 = add i32 %t73, 1
  %t75 = getelementptr inbounds i32, i32* %t624, i32 %t74
  store i32 %t76, i32* %t75, align 4
  %t78 = load i32, i32* %t581, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t581, align 4
  %t625 = load i32, i32* %t581, align 4
  %t626 = load i32, i32* @n, align 4
  %t627 = icmp slt i32 %t625, %t626
  br i1 %t627, label %B583, label %B630
B618:                               	; preds = %B593
  br label %B594
B630:                               	; preds = %B594
  br label %B584
}
define i32 @QuickSort(i32* %t80, i32 %t82, i32 %t84) {
B631:
  %t632 = alloca i32*, align 4
  %t633 = alloca i32, align 4
  %t634 = alloca i32, align 4
  %t640 = alloca i32, align 4
  %t641 = alloca i32, align 4
  %t642 = alloca i32, align 4
  %t733 = alloca i32, align 4
  store i32* %t80, i32** %t632, align 4
  store i32 %t82, i32* %t633, align 4
  store i32 %t84, i32* %t634, align 4
  %t86 = load i32, i32* %t633, align 4
  %t87 = load i32, i32* %t634, align 4
  %t88 = icmp slt i32 %t86, %t87
  br i1 %t88, label %B635, label %B639
B635:                               	; preds = %B631
  %t91 = load i32, i32* %t633, align 4
  store i32 %t91, i32* %t640, align 4
  %t94 = load i32, i32* %t634, align 4
  store i32 %t94, i32* %t641, align 4
  %t643 = load i32*, i32** %t632, align 4
  %t97 = load i32, i32* %t633, align 4
  %t98 = getelementptr inbounds i32, i32* %t643, i32 %t97
  %t644 = load i32, i32* %t98, align 4
  store i32 %t644, i32* %t642, align 4
  br label %B645
B639:                               	; preds = %B631
  br label %B636
B645:                               	; preds = %B635
  %t99 = load i32, i32* %t640, align 4
  %t100 = load i32, i32* %t641, align 4
  %t101 = icmp slt i32 %t99, %t100
  br i1 %t101, label %B646, label %B650
B636:                               	; preds = %B639, %B647
  ret i32 0
B646:                               	; preds = %B645, %B719
  br label %B651
B650:                               	; preds = %B645
  br label %B647
B651:                               	; preds = %B646
  %t102 = load i32, i32* %t640, align 4
  %t103 = load i32, i32* %t641, align 4
  %t104 = icmp slt i32 %t102, %t103
  br i1 %t104, label %B672, label %B657
B647:                               	; preds = %B650, %B731
  %t147 = load i32, i32* %t642, align 4
  %t732 = load i32*, i32** %t632, align 4
  %t145 = load i32, i32* %t640, align 4
  %t146 = getelementptr inbounds i32, i32* %t732, i32 %t145
  store i32 %t147, i32* %t146, align 4
  %t150 = load i32, i32* %t640, align 4
  %t151 = sub i32 %t150, 1
  store i32 %t151, i32* %t733, align 4
  %t734 = load i32*, i32** %t632, align 4
  %t154 = load i32, i32* %t633, align 4
  %t155 = load i32, i32* %t733, align 4
  %t156 = call i32 @QuickSort(i32* %t734, i32 %t154, i32 %t155)
  store i32 %t156, i32* %t733, align 4
  %t158 = load i32, i32* %t640, align 4
  %t159 = add i32 %t158, 1
  store i32 %t159, i32* %t733, align 4
  %t735 = load i32*, i32** %t632, align 4
  %t162 = load i32, i32* %t733, align 4
  %t163 = load i32, i32* %t634, align 4
  %t164 = call i32 @QuickSort(i32* %t735, i32 %t162, i32 %t163)
  store i32 %t164, i32* %t733, align 4
  br label %B636
B672:                               	; preds = %B651, %B652
  %t676 = load i32*, i32** %t632, align 4
  %t666 = load i32, i32* %t641, align 4
  %t667 = getelementptr inbounds i32, i32* %t676, i32 %t666
  %t677 = load i32, i32* %t667, align 4
  %t668 = load i32, i32* %t642, align 4
  %t669 = sub i32 %t668, 1
  %t670 = icmp sgt i32 %t677, %t669
  br i1 %t670, label %B652, label %B680
B657:                               	; preds = %B651
  br label %B653
B652:                               	; preds = %B672
  %t112 = load i32, i32* %t641, align 4
  %t113 = sub i32 %t112, 1
  store i32 %t113, i32* %t641, align 4
  %t663 = load i32, i32* %t640, align 4
  %t664 = load i32, i32* %t641, align 4
  %t665 = icmp slt i32 %t663, %t664
  br i1 %t665, label %B672, label %B675
B680:                               	; preds = %B672
  br label %B653
B653:                               	; preds = %B657, %B675, %B680
  %t114 = load i32, i32* %t640, align 4
  %t115 = load i32, i32* %t641, align 4
  %t116 = icmp slt i32 %t114, %t115
  br i1 %t116, label %B681, label %B685
B675:                               	; preds = %B652
  br label %B653
B681:                               	; preds = %B653
  %t686 = load i32*, i32** %t632, align 4
  %t119 = load i32, i32* %t641, align 4
  %t120 = getelementptr inbounds i32, i32* %t686, i32 %t119
  %t687 = load i32, i32* %t120, align 4
  %t688 = load i32*, i32** %t632, align 4
  %t117 = load i32, i32* %t640, align 4
  %t118 = getelementptr inbounds i32, i32* %t688, i32 %t117
  store i32 %t687, i32* %t118, align 4
  %t122 = load i32, i32* %t640, align 4
  %t123 = add i32 %t122, 1
  store i32 %t123, i32* %t640, align 4
  br label %B682
B685:                               	; preds = %B653
  br label %B682
B682:                               	; preds = %B681, %B685
  br label %B689
B689:                               	; preds = %B682
  %t124 = load i32, i32* %t640, align 4
  %t125 = load i32, i32* %t641, align 4
  %t126 = icmp slt i32 %t124, %t125
  br i1 %t126, label %B709, label %B695
B709:                               	; preds = %B689, %B690
  %t713 = load i32*, i32** %t632, align 4
  %t704 = load i32, i32* %t640, align 4
  %t705 = getelementptr inbounds i32, i32* %t713, i32 %t704
  %t714 = load i32, i32* %t705, align 4
  %t706 = load i32, i32* %t642, align 4
  %t707 = icmp slt i32 %t714, %t706
  br i1 %t707, label %B690, label %B717
B695:                               	; preds = %B689
  br label %B691
B690:                               	; preds = %B709
  %t133 = load i32, i32* %t640, align 4
  %t134 = add i32 %t133, 1
  store i32 %t134, i32* %t640, align 4
  %t701 = load i32, i32* %t640, align 4
  %t702 = load i32, i32* %t641, align 4
  %t703 = icmp slt i32 %t701, %t702
  br i1 %t703, label %B709, label %B712
B717:                               	; preds = %B709
  br label %B691
B691:                               	; preds = %B695, %B712, %B717
  %t135 = load i32, i32* %t640, align 4
  %t136 = load i32, i32* %t641, align 4
  %t137 = icmp slt i32 %t135, %t136
  br i1 %t137, label %B718, label %B722
B712:                               	; preds = %B690
  br label %B691
B718:                               	; preds = %B691
  %t723 = load i32*, i32** %t632, align 4
  %t140 = load i32, i32* %t640, align 4
  %t141 = getelementptr inbounds i32, i32* %t723, i32 %t140
  %t724 = load i32, i32* %t141, align 4
  %t725 = load i32*, i32** %t632, align 4
  %t138 = load i32, i32* %t641, align 4
  %t139 = getelementptr inbounds i32, i32* %t725, i32 %t138
  store i32 %t724, i32* %t139, align 4
  %t143 = load i32, i32* %t641, align 4
  %t144 = sub i32 %t143, 1
  store i32 %t144, i32* %t641, align 4
  br label %B719
B722:                               	; preds = %B691
  br label %B719
B719:                               	; preds = %B718, %B722
  %t726 = load i32, i32* %t640, align 4
  %t727 = load i32, i32* %t641, align 4
  %t728 = icmp slt i32 %t726, %t727
  br i1 %t728, label %B646, label %B731
B731:                               	; preds = %B719
  br label %B647
}
define i32 @getMid(i32* %t165) {
B736:
  %t737 = alloca i32*, align 4
  %t738 = alloca i32, align 4
  store i32* %t165, i32** %t737, align 4
  %t168 = load i32, i32* @n, align 4
  %t169 = srem i32 %t168, 2
  %t170 = icmp eq i32 %t169, 0
  br i1 %t170, label %B739, label %B744
B739:                               	; preds = %B736
  %t172 = load i32, i32* @n, align 4
  %t173 = sdiv i32 %t172, 2
  store i32 %t173, i32* %t738, align 4
  %t745 = load i32*, i32** %t737, align 4
  %t174 = load i32, i32* %t738, align 4
  %t175 = getelementptr inbounds i32, i32* %t745, i32 %t174
  %t746 = load i32, i32* %t175, align 4
  %t747 = load i32*, i32** %t737, align 4
  %t176 = load i32, i32* %t738, align 4
  %t177 = sub i32 %t176, 1
  %t178 = getelementptr inbounds i32, i32* %t747, i32 %t177
  %t748 = load i32, i32* %t178, align 4
  %t179 = add i32 %t746, %t748
  %t180 = sdiv i32 %t179, 2
  ret i32 %t180
B744:                               	; preds = %B736
  br label %B740
B740:                               	; preds = %B744
  %t182 = load i32, i32* @n, align 4
  %t183 = sdiv i32 %t182, 2
  store i32 %t183, i32* %t738, align 4
  %t749 = load i32*, i32** %t737, align 4
  %t184 = load i32, i32* %t738, align 4
  %t185 = getelementptr inbounds i32, i32* %t749, i32 %t184
  %t750 = load i32, i32* %t185, align 4
  ret i32 %t750
}
define i32 @getMost(i32* %t186) {
B751:
  %t752 = alloca i32*, align 4
  %t753 = alloca [1000 x i32], align 4
  %t754 = alloca i32, align 4
  %t766 = alloca i32, align 4
  %t767 = alloca i32, align 4
  %t774 = alloca i32, align 4
  store i32* %t186, i32** %t752, align 4
  store i32 0, i32* %t754, align 4
  br label %B755
B755:                               	; preds = %B751
  %t191 = load i32, i32* %t754, align 4
  %t192 = icmp slt i32 %t191, 1000
  br i1 %t192, label %B756, label %B760
B756:                               	; preds = %B755, %B756
  %t193 = load i32, i32* %t754, align 4
  %t194 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t193
  store i32 0, i32* %t194, align 4
  %t196 = load i32, i32* %t754, align 4
  %t197 = add i32 %t196, 1
  store i32 %t197, i32* %t754, align 4
  %t761 = load i32, i32* %t754, align 4
  %t762 = icmp slt i32 %t761, 1000
  br i1 %t762, label %B756, label %B765
B760:                               	; preds = %B755
  br label %B757
B765:                               	; preds = %B756
  br label %B757
B757:                               	; preds = %B760, %B765
  store i32 0, i32* %t754, align 4
  store i32 0, i32* %t766, align 4
  br label %B768
B768:                               	; preds = %B757
  %t202 = load i32, i32* %t754, align 4
  %t203 = load i32, i32* @n, align 4
  %t204 = icmp slt i32 %t202, %t203
  br i1 %t204, label %B769, label %B773
B769:                               	; preds = %B768, %B779
  %t775 = load i32*, i32** %t752, align 4
  %t207 = load i32, i32* %t754, align 4
  %t208 = getelementptr inbounds i32, i32* %t775, i32 %t207
  %t776 = load i32, i32* %t208, align 4
  store i32 %t776, i32* %t774, align 4
  %t211 = load i32, i32* %t774, align 4
  %t212 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t211
  %t777 = load i32, i32* %t212, align 4
  %t213 = add i32 %t777, 1
  %t209 = load i32, i32* %t774, align 4
  %t210 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t209
  store i32 %t213, i32* %t210, align 4
  %t214 = load i32, i32* %t774, align 4
  %t215 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t214
  %t780 = load i32, i32* %t215, align 4
  %t216 = load i32, i32* %t766, align 4
  %t217 = icmp sgt i32 %t780, %t216
  br i1 %t217, label %B778, label %B783
B773:                               	; preds = %B768
  br label %B770
B778:                               	; preds = %B769
  %t219 = load i32, i32* %t774, align 4
  %t220 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t219
  %t784 = load i32, i32* %t220, align 4
  store i32 %t784, i32* %t766, align 4
  %t222 = load i32, i32* %t774, align 4
  store i32 %t222, i32* %t767, align 4
  br label %B779
B783:                               	; preds = %B769
  br label %B779
B770:                               	; preds = %B773, %B790
  %t226 = load i32, i32* %t767, align 4
  ret i32 %t226
B779:                               	; preds = %B778, %B783
  %t224 = load i32, i32* %t754, align 4
  %t225 = add i32 %t224, 1
  store i32 %t225, i32* %t754, align 4
  %t785 = load i32, i32* %t754, align 4
  %t786 = load i32, i32* @n, align 4
  %t787 = icmp slt i32 %t785, %t786
  br i1 %t787, label %B769, label %B790
B790:                               	; preds = %B779
  br label %B770
}
define i32 @revert(i32* %t227) {
B791:
  %t792 = alloca i32*, align 4
  %t793 = alloca i32, align 4
  %t794 = alloca i32, align 4
  %t795 = alloca i32, align 4
  store i32* %t227, i32** %t792, align 4
  store i32 0, i32* %t794, align 4
  store i32 0, i32* %t795, align 4
  br label %B796
B796:                               	; preds = %B791
  %t234 = load i32, i32* %t794, align 4
  %t235 = load i32, i32* %t795, align 4
  %t236 = icmp slt i32 %t234, %t235
  br i1 %t236, label %B797, label %B801
B797:                               	; preds = %B796, %B797
  %t802 = load i32*, i32** %t792, align 4
  %t238 = load i32, i32* %t794, align 4
  %t239 = getelementptr inbounds i32, i32* %t802, i32 %t238
  %t803 = load i32, i32* %t239, align 4
  store i32 %t803, i32* %t793, align 4
  %t804 = load i32*, i32** %t792, align 4
  %t242 = load i32, i32* %t795, align 4
  %t243 = getelementptr inbounds i32, i32* %t804, i32 %t242
  %t805 = load i32, i32* %t243, align 4
  %t806 = load i32*, i32** %t792, align 4
  %t240 = load i32, i32* %t794, align 4
  %t241 = getelementptr inbounds i32, i32* %t806, i32 %t240
  store i32 %t805, i32* %t241, align 4
  %t246 = load i32, i32* %t793, align 4
  %t807 = load i32*, i32** %t792, align 4
  %t244 = load i32, i32* %t795, align 4
  %t245 = getelementptr inbounds i32, i32* %t807, i32 %t244
  store i32 %t246, i32* %t245, align 4
  %t248 = load i32, i32* %t794, align 4
  %t249 = add i32 %t248, 1
  store i32 %t249, i32* %t794, align 4
  %t251 = load i32, i32* %t795, align 4
  %t252 = sub i32 %t251, 1
  store i32 %t252, i32* %t795, align 4
  %t808 = load i32, i32* %t794, align 4
  %t809 = load i32, i32* %t795, align 4
  %t810 = icmp slt i32 %t808, %t809
  br i1 %t810, label %B797, label %B813
B801:                               	; preds = %B796
  br label %B798
B813:                               	; preds = %B797
  br label %B798
B798:                               	; preds = %B801, %B813
  ret i32 0
}
define i32 @arrCopy(i32* %t253, i32* %t255) {
B814:
  %t815 = alloca i32*, align 4
  %t816 = alloca i32*, align 4
  %t817 = alloca i32, align 4
  store i32* %t253, i32** %t815, align 4
  store i32* %t255, i32** %t816, align 4
  store i32 0, i32* %t817, align 4
  br label %B818
B818:                               	; preds = %B814
  %t259 = load i32, i32* %t817, align 4
  %t260 = load i32, i32* @n, align 4
  %t261 = icmp slt i32 %t259, %t260
  br i1 %t261, label %B819, label %B823
B819:                               	; preds = %B818, %B819
  %t824 = load i32*, i32** %t815, align 4
  %t264 = load i32, i32* %t817, align 4
  %t265 = getelementptr inbounds i32, i32* %t824, i32 %t264
  %t825 = load i32, i32* %t265, align 4
  %t826 = load i32*, i32** %t816, align 4
  %t262 = load i32, i32* %t817, align 4
  %t263 = getelementptr inbounds i32, i32* %t826, i32 %t262
  store i32 %t825, i32* %t263, align 4
  %t267 = load i32, i32* %t817, align 4
  %t268 = add i32 %t267, 1
  store i32 %t268, i32* %t817, align 4
  %t827 = load i32, i32* %t817, align 4
  %t828 = load i32, i32* @n, align 4
  %t829 = icmp slt i32 %t827, %t828
  br i1 %t829, label %B819, label %B832
B823:                               	; preds = %B818
  br label %B820
B832:                               	; preds = %B819
  br label %B820
B820:                               	; preds = %B823, %B832
  ret i32 0
}
define i32 @calSum(i32* %t269, i32 %t271) {
B833:
  %t834 = alloca i32*, align 4
  %t835 = alloca i32, align 4
  %t836 = alloca i32, align 4
  %t837 = alloca i32, align 4
  store i32* %t269, i32** %t834, align 4
  store i32 %t271, i32* %t835, align 4
  store i32 0, i32* %t836, align 4
  store i32 0, i32* %t837, align 4
  br label %B838
B838:                               	; preds = %B833
  %t277 = load i32, i32* %t837, align 4
  %t278 = load i32, i32* @n, align 4
  %t279 = icmp slt i32 %t277, %t278
  br i1 %t279, label %B839, label %B843
B839:                               	; preds = %B838, %B848
  %t281 = load i32, i32* %t836, align 4
  %t844 = load i32*, i32** %t834, align 4
  %t282 = load i32, i32* %t837, align 4
  %t283 = getelementptr inbounds i32, i32* %t844, i32 %t282
  %t845 = load i32, i32* %t283, align 4
  %t284 = add i32 %t281, %t845
  store i32 %t284, i32* %t836, align 4
  %t285 = load i32, i32* %t837, align 4
  %t286 = load i32, i32* %t835, align 4
  %t287 = srem i32 %t285, %t286
  %t288 = load i32, i32* %t835, align 4
  %t289 = sub i32 %t288, 1
  %t290 = icmp ne i32 %t287, %t289
  br i1 %t290, label %B846, label %B851
B843:                               	; preds = %B838
  br label %B840
B846:                               	; preds = %B839
  %t852 = load i32*, i32** %t834, align 4
  %t291 = load i32, i32* %t837, align 4
  %t292 = getelementptr inbounds i32, i32* %t852, i32 %t291
  store i32 0, i32* %t292, align 4
  br label %B848
B851:                               	; preds = %B839
  br label %B847
B840:                               	; preds = %B843, %B859
  ret i32 0
B848:                               	; preds = %B846, %B847
  %t298 = load i32, i32* %t837, align 4
  %t299 = add i32 %t298, 1
  store i32 %t299, i32* %t837, align 4
  %t854 = load i32, i32* %t837, align 4
  %t855 = load i32, i32* @n, align 4
  %t856 = icmp slt i32 %t854, %t855
  br i1 %t856, label %B839, label %B859
B847:                               	; preds = %B851
  %t295 = load i32, i32* %t836, align 4
  %t853 = load i32*, i32** %t834, align 4
  %t293 = load i32, i32* %t837, align 4
  %t294 = getelementptr inbounds i32, i32* %t853, i32 %t293
  store i32 %t295, i32* %t294, align 4
  store i32 0, i32* %t836, align 4
  br label %B848
B859:                               	; preds = %B848
  br label %B840
}
define i32 @avgPooling(i32* %t300, i32 %t302) {
B860:
  %t861 = alloca i32*, align 4
  %t862 = alloca i32, align 4
  %t863 = alloca i32, align 4
  %t864 = alloca i32, align 4
  %t865 = alloca i32, align 4
  store i32* %t300, i32** %t861, align 4
  store i32 %t302, i32* %t862, align 4
  store i32 0, i32* %t864, align 4
  store i32 0, i32* %t863, align 4
  br label %B866
B866:                               	; preds = %B860
  %t309 = load i32, i32* %t864, align 4
  %t310 = load i32, i32* @n, align 4
  %t311 = icmp slt i32 %t309, %t310
  br i1 %t311, label %B867, label %B871
B867:                               	; preds = %B866, %B874
  %t312 = load i32, i32* %t864, align 4
  %t313 = load i32, i32* %t862, align 4
  %t314 = sub i32 %t313, 1
  %t315 = icmp slt i32 %t312, %t314
  br i1 %t315, label %B872, label %B877
B871:                               	; preds = %B866
  br label %B868
B872:                               	; preds = %B867
  %t317 = load i32, i32* %t863, align 4
  %t878 = load i32*, i32** %t861, align 4
  %t318 = load i32, i32* %t864, align 4
  %t319 = getelementptr inbounds i32, i32* %t878, i32 %t318
  %t879 = load i32, i32* %t319, align 4
  %t320 = add i32 %t317, %t879
  store i32 %t320, i32* %t863, align 4
  br label %B874
B877:                               	; preds = %B867
  br label %B873
B868:                               	; preds = %B871, %B899
  %t356 = load i32, i32* @n, align 4
  %t357 = load i32, i32* %t862, align 4
  %t358 = sub i32 %t356, %t357
  %t359 = add i32 %t358, 1
  store i32 %t359, i32* %t864, align 4
  br label %B900
B874:                               	; preds = %B872, %B882
  %t353 = load i32, i32* %t864, align 4
  %t354 = add i32 %t353, 1
  store i32 %t354, i32* %t864, align 4
  %t894 = load i32, i32* %t864, align 4
  %t895 = load i32, i32* @n, align 4
  %t896 = icmp slt i32 %t894, %t895
  br i1 %t896, label %B867, label %B899
B873:                               	; preds = %B877
  %t321 = load i32, i32* %t864, align 4
  %t322 = load i32, i32* %t862, align 4
  %t323 = sub i32 %t322, 1
  %t324 = icmp eq i32 %t321, %t323
  br i1 %t324, label %B880, label %B885
B900:                               	; preds = %B868
  %t360 = load i32, i32* %t864, align 4
  %t361 = load i32, i32* @n, align 4
  %t362 = icmp slt i32 %t360, %t361
  br i1 %t362, label %B901, label %B905
B899:                               	; preds = %B874
  br label %B868
B880:                               	; preds = %B873
  %t886 = load i32*, i32** %t861, align 4
  %t326 = getelementptr inbounds i32, i32* %t886, i32 0
  %t887 = load i32, i32* %t326, align 4
  store i32 %t887, i32* %t865, align 4
  %t328 = load i32, i32* %t863, align 4
  %t329 = load i32, i32* %t862, align 4
  %t330 = sdiv i32 %t328, %t329
  %t888 = load i32*, i32** %t861, align 4
  %t327 = getelementptr inbounds i32, i32* %t888, i32 0
  store i32 %t330, i32* %t327, align 4
  br label %B882
B885:                               	; preds = %B873
  br label %B881
B901:                               	; preds = %B900, %B901
  %t906 = load i32*, i32** %t861, align 4
  %t363 = load i32, i32* %t864, align 4
  %t364 = getelementptr inbounds i32, i32* %t906, i32 %t363
  store i32 0, i32* %t364, align 4
  %t366 = load i32, i32* %t864, align 4
  %t367 = add i32 %t366, 1
  store i32 %t367, i32* %t864, align 4
  %t907 = load i32, i32* %t864, align 4
  %t908 = load i32, i32* @n, align 4
  %t909 = icmp slt i32 %t907, %t908
  br i1 %t909, label %B901, label %B912
B905:                               	; preds = %B900
  br label %B902
B882:                               	; preds = %B880, %B881
  br label %B874
B881:                               	; preds = %B885
  %t332 = load i32, i32* %t863, align 4
  %t889 = load i32*, i32** %t861, align 4
  %t333 = load i32, i32* %t864, align 4
  %t334 = getelementptr inbounds i32, i32* %t889, i32 %t333
  %t890 = load i32, i32* %t334, align 4
  %t335 = add i32 %t332, %t890
  %t336 = load i32, i32* %t865, align 4
  %t337 = sub i32 %t335, %t336
  store i32 %t337, i32* %t863, align 4
  %t891 = load i32*, i32** %t861, align 4
  %t339 = load i32, i32* %t864, align 4
  %t340 = load i32, i32* %t862, align 4
  %t341 = sub i32 %t339, %t340
  %t342 = add i32 %t341, 1
  %t343 = getelementptr inbounds i32, i32* %t891, i32 %t342
  %t892 = load i32, i32* %t343, align 4
  store i32 %t892, i32* %t865, align 4
  %t349 = load i32, i32* %t863, align 4
  %t350 = load i32, i32* %t862, align 4
  %t351 = sdiv i32 %t349, %t350
  %t893 = load i32*, i32** %t861, align 4
  %t344 = load i32, i32* %t864, align 4
  %t345 = load i32, i32* %t862, align 4
  %t346 = sub i32 %t344, %t345
  %t347 = add i32 %t346, 1
  %t348 = getelementptr inbounds i32, i32* %t893, i32 %t347
  store i32 %t351, i32* %t348, align 4
  br label %B882
B912:                               	; preds = %B901
  br label %B902
B902:                               	; preds = %B905, %B912
  ret i32 0
}
define i32 @main() {
B913:
  %t914 = alloca [32 x i32], align 4
  %t915 = alloca [32 x i32], align 4
  %t916 = alloca i32, align 4
  %t917 = alloca i32, align 4
  store i32 32, i32* @n, align 4
  %t371 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  store i32 7, i32* %t371, align 4
  %t372 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 1
  store i32 23, i32* %t372, align 4
  %t373 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 2
  store i32 89, i32* %t373, align 4
  %t374 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 3
  store i32 26, i32* %t374, align 4
  %t375 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 4
  store i32 282, i32* %t375, align 4
  %t376 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 5
  store i32 254, i32* %t376, align 4
  %t377 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 6
  store i32 27, i32* %t377, align 4
  %t378 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 7
  store i32 5, i32* %t378, align 4
  %t379 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 8
  store i32 83, i32* %t379, align 4
  %t380 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 9
  store i32 273, i32* %t380, align 4
  %t381 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 10
  store i32 574, i32* %t381, align 4
  %t382 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 11
  store i32 905, i32* %t382, align 4
  %t383 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 12
  store i32 354, i32* %t383, align 4
  %t384 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 13
  store i32 657, i32* %t384, align 4
  %t385 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 14
  store i32 935, i32* %t385, align 4
  %t386 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 15
  store i32 264, i32* %t386, align 4
  %t387 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 16
  store i32 639, i32* %t387, align 4
  %t388 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 17
  store i32 459, i32* %t388, align 4
  %t389 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 18
  store i32 29, i32* %t389, align 4
  %t390 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 19
  store i32 68, i32* %t390, align 4
  %t391 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 20
  store i32 929, i32* %t391, align 4
  %t392 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 21
  store i32 756, i32* %t392, align 4
  %t393 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 22
  store i32 452, i32* %t393, align 4
  %t394 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 23
  store i32 279, i32* %t394, align 4
  %t395 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 24
  store i32 58, i32* %t395, align 4
  %t396 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 25
  store i32 87, i32* %t396, align 4
  %t397 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 26
  store i32 96, i32* %t397, align 4
  %t398 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 27
  store i32 36, i32* %t398, align 4
  %t399 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 28
  store i32 39, i32* %t399, align 4
  %t400 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 29
  store i32 28, i32* %t400, align 4
  %t401 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 30
  store i32 1, i32* %t401, align 4
  %t402 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 31
  store i32 290, i32* %t402, align 4
  %t405 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t406 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t407 = call i32 @arrCopy(i32* %t405, i32* %t406)
  store i32 %t407, i32* %t916, align 4
  %t409 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t410 = call i32 @revert(i32* %t409)
  store i32 %t410, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  br label %B918
B918:                               	; preds = %B913
  %t413 = load i32, i32* %t917, align 4
  %t414 = icmp slt i32 %t413, 32
  br i1 %t414, label %B919, label %B923
B919:                               	; preds = %B918, %B919
  %t416 = load i32, i32* %t917, align 4
  %t417 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t416
  %t924 = load i32, i32* %t417, align 4
  store i32 %t924, i32* %t916, align 4
  %t418 = load i32, i32* %t916, align 4
  call void @putint(i32 %t418)
  %t420 = load i32, i32* %t917, align 4
  %t421 = add i32 %t420, 1
  store i32 %t421, i32* %t917, align 4
  %t925 = load i32, i32* %t917, align 4
  %t926 = icmp slt i32 %t925, 32
  br i1 %t926, label %B919, label %B929
B923:                               	; preds = %B918
  br label %B920
B929:                               	; preds = %B919
  br label %B920
B920:                               	; preds = %B923, %B929
  %t423 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t424 = call i32 @bubblesort(i32* %t423)
  store i32 %t424, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  br label %B930
B930:                               	; preds = %B920
  %t426 = load i32, i32* %t917, align 4
  %t427 = icmp slt i32 %t426, 32
  br i1 %t427, label %B931, label %B935
B931:                               	; preds = %B930, %B931
  %t429 = load i32, i32* %t917, align 4
  %t430 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t429
  %t936 = load i32, i32* %t430, align 4
  store i32 %t936, i32* %t916, align 4
  %t431 = load i32, i32* %t916, align 4
  call void @putint(i32 %t431)
  %t433 = load i32, i32* %t917, align 4
  %t434 = add i32 %t433, 1
  store i32 %t434, i32* %t917, align 4
  %t937 = load i32, i32* %t917, align 4
  %t938 = icmp slt i32 %t937, 32
  br i1 %t938, label %B931, label %B941
B935:                               	; preds = %B930
  br label %B932
B941:                               	; preds = %B931
  br label %B932
B932:                               	; preds = %B935, %B941
  %t436 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t437 = call i32 @getMid(i32* %t436)
  store i32 %t437, i32* %t916, align 4
  %t438 = load i32, i32* %t916, align 4
  call void @putint(i32 %t438)
  %t440 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t441 = call i32 @getMost(i32* %t440)
  store i32 %t441, i32* %t916, align 4
  %t442 = load i32, i32* %t916, align 4
  call void @putint(i32 %t442)
  %t444 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t445 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t446 = call i32 @arrCopy(i32* %t444, i32* %t445)
  store i32 %t446, i32* %t916, align 4
  %t448 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t449 = call i32 @bubblesort(i32* %t448)
  store i32 %t449, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  br label %B942
B942:                               	; preds = %B932
  %t451 = load i32, i32* %t917, align 4
  %t452 = icmp slt i32 %t451, 32
  br i1 %t452, label %B943, label %B947
B943:                               	; preds = %B942, %B943
  %t454 = load i32, i32* %t917, align 4
  %t455 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t454
  %t948 = load i32, i32* %t455, align 4
  store i32 %t948, i32* %t916, align 4
  %t456 = load i32, i32* %t916, align 4
  call void @putint(i32 %t456)
  %t458 = load i32, i32* %t917, align 4
  %t459 = add i32 %t458, 1
  store i32 %t459, i32* %t917, align 4
  %t949 = load i32, i32* %t917, align 4
  %t950 = icmp slt i32 %t949, 32
  br i1 %t950, label %B943, label %B953
B947:                               	; preds = %B942
  br label %B944
B953:                               	; preds = %B943
  br label %B944
B944:                               	; preds = %B947, %B953
  %t461 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t462 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t463 = call i32 @arrCopy(i32* %t461, i32* %t462)
  store i32 %t463, i32* %t916, align 4
  %t465 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t466 = call i32 @insertsort(i32* %t465)
  store i32 %t466, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  br label %B954
B954:                               	; preds = %B944
  %t468 = load i32, i32* %t917, align 4
  %t469 = icmp slt i32 %t468, 32
  br i1 %t469, label %B955, label %B959
B955:                               	; preds = %B954, %B955
  %t471 = load i32, i32* %t917, align 4
  %t472 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t471
  %t960 = load i32, i32* %t472, align 4
  store i32 %t960, i32* %t916, align 4
  %t473 = load i32, i32* %t916, align 4
  call void @putint(i32 %t473)
  %t475 = load i32, i32* %t917, align 4
  %t476 = add i32 %t475, 1
  store i32 %t476, i32* %t917, align 4
  %t961 = load i32, i32* %t917, align 4
  %t962 = icmp slt i32 %t961, 32
  br i1 %t962, label %B955, label %B965
B959:                               	; preds = %B954
  br label %B956
B965:                               	; preds = %B955
  br label %B956
B956:                               	; preds = %B959, %B965
  %t478 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t479 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t480 = call i32 @arrCopy(i32* %t478, i32* %t479)
  store i32 %t480, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  store i32 31, i32* %t916, align 4
  %t484 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t485 = load i32, i32* %t917, align 4
  %t486 = load i32, i32* %t916, align 4
  %t487 = call i32 @QuickSort(i32* %t484, i32 %t485, i32 %t486)
  store i32 %t487, i32* %t916, align 4
  br label %B966
B966:                               	; preds = %B956
  %t488 = load i32, i32* %t917, align 4
  %t489 = icmp slt i32 %t488, 32
  br i1 %t489, label %B967, label %B971
B967:                               	; preds = %B966, %B967
  %t491 = load i32, i32* %t917, align 4
  %t492 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t491
  %t972 = load i32, i32* %t492, align 4
  store i32 %t972, i32* %t916, align 4
  %t493 = load i32, i32* %t916, align 4
  call void @putint(i32 %t493)
  %t495 = load i32, i32* %t917, align 4
  %t496 = add i32 %t495, 1
  store i32 %t496, i32* %t917, align 4
  %t973 = load i32, i32* %t917, align 4
  %t974 = icmp slt i32 %t973, 32
  br i1 %t974, label %B967, label %B977
B971:                               	; preds = %B966
  br label %B968
B977:                               	; preds = %B967
  br label %B968
B968:                               	; preds = %B971, %B977
  %t498 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t499 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t500 = call i32 @arrCopy(i32* %t498, i32* %t499)
  store i32 %t500, i32* %t916, align 4
  %t502 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t503 = call i32 @calSum(i32* %t502, i32 4)
  store i32 %t503, i32* %t916, align 4
  store i32 0, i32* %t917, align 4
  br label %B978
B978:                               	; preds = %B968
  %t505 = load i32, i32* %t917, align 4
  %t506 = icmp slt i32 %t505, 32
  br i1 %t506, label %B979, label %B983
B979:                               	; preds = %B978, %B979
  %t508 = load i32, i32* %t917, align 4
  %t509 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t508
  %t984 = load i32, i32* %t509, align 4
  store i32 %t984, i32* %t916, align 4
  %t510 = load i32, i32* %t916, align 4
  call void @putint(i32 %t510)
  %t512 = load i32, i32* %t917, align 4
  %t513 = add i32 %t512, 1
  store i32 %t513, i32* %t917, align 4
  %t985 = load i32, i32* %t917, align 4
  %t986 = icmp slt i32 %t985, 32
  br i1 %t986, label %B979, label %B989
B983:                               	; preds = %B978
  br label %B980
B989:                               	; preds = %B979
  br label %B980
B980:                               	; preds = %B983, %B989
  %t515 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t516 = 