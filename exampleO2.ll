@n = global i32 0, align 4
define i32 @bubblesort(i32* %t1) {
B531:
  %t532 = alloca i32*, align 4
  store i32* %t1, i32** %t532, align 4
  br label %B535
B535:                               	; preds = %B531
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t1024 = add i32 0, 0
  %t1012 = add i32 0, 0
  %t1003 = add i32 0, 0
  %t9 = icmp slt i32 0, %t8
  br i1 %t9, label %B536, label %B540
B536:                               	; preds = %B535, %B543
  br label %B541
B540:                               	; preds = %B535
  %t1025 = add i32 0, 0
  %t1013 = add i32 0, 0
  %t1004 = add i32 0, 0
  br label %B537
B541:                               	; preds = %B536
  %t12 = load i32, i32* @n, align 4
  %t14 = sub i32 %t12, %t1003
  %t15 = sub i32 %t14, 1
  %t1021 = add i32 %t1024, 0
  %t1009 = add i32 0, 0
  %t16 = icmp slt i32 0, %t15
  br i1 %t16, label %B542, label %B546
B537:                               	; preds = %B540, %B578
  ret i32 0
B542:                               	; preds = %B541, %B548
  %t549 = load i32*, i32** %t532, align 4
  %t18 = getelementptr inbounds i32, i32* %t549, i32 %t1009
  %t550 = load i32, i32* %t18, align 4
  %t20 = add i32 %t1009, 1
  %t21 = getelementptr inbounds i32, i32* %t549, i32 %t20
  %t552 = load i32, i32* %t21, align 4
  %t22 = icmp sgt i32 %t550, %t552
  br i1 %t22, label %B547, label %B555
B546:                               	; preds = %B541
  %t1022 = add i32 %t1024, 0
  %t1010 = add i32 0, 0
  br label %B543
B547:                               	; preds = %B542
  %t557 = load i32*, i32** %t532, align 4
  %t26 = add i32 %t1009, 1
  %t27 = getelementptr inbounds i32, i32* %t557, i32 %t26
  %t558 = load i32, i32* %t27, align 4
  %t32 = getelementptr inbounds i32, i32* %t557, i32 %t1009
  %t560 = load i32, i32* %t32, align 4
  %t30 = getelementptr inbounds i32, i32* %t557, i32 %t26
  store i32 %t560, i32* %t30, align 4
  %t34 = getelementptr inbounds i32, i32* %t557, i32 %t1009
  store i32 %t558, i32* %t34, align 4
  %t1019 = add i32 %t558, 0
  br label %B548
B555:                               	; preds = %B542
  %t1019 = add i32 %t1021, 0
  br label %B548
B543:                               	; preds = %B546, %B571
  %t41 = add i32 %t1003, 1
  %t573 = load i32, i32* @n, align 4
  %t574 = sub i32 %t573, 1
  %t1024 = add i32 %t1022, 0
  %t1012 = add i32 %t1010, 0
  %t1003 = add i32 %t41, 0
  %t575 = icmp slt i32 %t41, %t574
  br i1 %t575, label %B536, label %B578
B548:                               	; preds = %B547, %B555
  %t38 = add i32 %t1009, 1
  %t564 = load i32, i32* @n, align 4
  %t566 = sub i32 %t564, %t1003
  %t567 = sub i32 %t566, 1
  %t1021 = add i32 %t1019, 0
  %t1009 = add i32 %t38, 0
  %t568 = icmp slt i32 %t38, %t567
  br i1 %t568, label %B542, label %B571
B578:                               	; preds = %B543
  %t1025 = add i32 %t1022, 0
  %t1013 = add i32 %t1010, 0
  %t1004 = add i32 %t41, 0
  br label %B537
B571:                               	; preds = %B548
  %t1022 = add i32 %t1019, 0
  %t1010 = add i32 %t38, 0
  br label %B543
}
define i32 @insertsort(i32* %t42) {
B579:
  %t580 = alloca i32*, align 4
  store i32* %t42, i32** %t580, align 4
  br label %B582
B582:                               	; preds = %B579
  %t47 = load i32, i32* @n, align 4
  %t1046 = add i32 0, 0
  %t1037 = add i32 0, 0
  %t1031 = add i32 1, 0
  %t48 = icmp slt i32 1, %t47
  br i1 %t48, label %B583, label %B587
B583:                               	; preds = %B582, %B594
  %t589 = load i32*, i32** %t580, align 4
  %t52 = getelementptr inbounds i32, i32* %t589, i32 %t1031
  %t590 = load i32, i32* %t52, align 4
  %t56 = sub i32 %t1031, 1
  br label %B592
B587:                               	; preds = %B582
  %t1045 = add i32 0, 0
  %t1036 = add i32 0, 0
  %t1030 = add i32 1, 0
  br label %B584
B592:                               	; preds = %B583
  %t58 = sub i32 0, 1
  %t1042 = add i32 %t56, 0
  %t59 = icmp sgt i32 %t56, %t58
  br i1 %t59, label %B615, label %B598
B584:                               	; preds = %B587, %B630
  ret i32 0
B615:                               	; preds = %B592, %B593
  %t619 = load i32*, i32** %t580, align 4
  %t612 = getelementptr inbounds i32, i32* %t619, i32 %t1042
  %t620 = load i32, i32* %t612, align 4
  %t613 = icmp slt i32 %t590, %t620
  br i1 %t613, label %B593, label %B623
B598:                               	; preds = %B592
  %t1041 = add i32 %t56, 0
  br label %B594
B593:                               	; preds = %B615
  %t604 = load i32*, i32** %t580, align 4
  %t69 = getelementptr inbounds i32, i32* %t604, i32 %t1042
  %t605 = load i32, i32* %t69, align 4
  %t66 = add i32 %t1042, 1
  %t67 = getelementptr inbounds i32, i32* %t604, i32 %t66
  store i32 %t605, i32* %t67, align 4
  %t72 = sub i32 %t1042, 1
  %t608 = sub i32 0, 1
  %t1042 = add i32 %t72, 0
  %t609 = icmp sgt i32 %t72, %t608
  br i1 %t609, label %B615, label %B618
B623:                               	; preds = %B615
  %t1041 = add i32 %t1042, 0
  br label %B594
B594:                               	; preds = %B598, %B618, %B623
  %t624 = load i32*, i32** %t580, align 4
  %t74 = add i32 %t1041, 1
  %t75 = getelementptr inbounds i32, i32* %t624, i32 %t74
  store i32 %t590, i32* %t75, align 4
  %t79 = add i32 %t1031, 1
  %t626 = load i32, i32* @n, align 4
  %t1046 = add i32 %t1041, 0
  %t1037 = add i32 %t590, 0
  %t1031 = add i32 %t79, 0
  %t627 = icmp slt i32 %t79, %t626
  br i1 %t627, label %B583, label %B630
B618:                               	; preds = %B593
  %t1041 = add i32 %t72, 0
  br label %B594
B630:                               	; preds = %B594
  %t1045 = add i32 %t1041, 0
  %t1036 = add i32 %t590, 0
  %t1030 = add i32 %t79, 0
  br label %B584
}
define i32 @QuickSort(i32* %t80, i32 %t82, i32 %t84) {
B631:
  %t632 = alloca i32*, align 4
  %t633 = alloca i32, align 4
  %t634 = alloca i32, align 4
  store i32* %t80, i32** %t632, align 4
  store i32 %t82, i32* %t633, align 4
  store i32 %t84, i32* %t634, align 4
  %t86 = load i32, i32* %t633, align 4
  %t87 = load i32, i32* %t634, align 4
  %t88 = icmp slt i32 %t86, %t87
  br i1 %t88, label %B635, label %B639
B635:                               	; preds = %B631
  %t91 = load i32, i32* %t633, align 4
  %t94 = load i32, i32* %t634, align 4
  %t643 = load i32*, i32** %t632, align 4
  %t97 = load i32, i32* %t633, align 4
  %t98 = getelementptr inbounds i32, i32* %t643, i32 %t97
  %t644 = load i32, i32* %t98, align 4
  br label %B645
B639:                               	; preds = %B631
  %t1084 = add i32 0, 0
  %t1081 = add i32 0, 0
  %t1071 = add i32 0, 0
  %t1058 = add i32 0, 0
  br label %B636
B645:                               	; preds = %B635
  %t1068 = add i32 %t94, 0
  %t1055 = add i32 %t91, 0
  %t101 = icmp slt i32 %t91, %t94
  br i1 %t101, label %B646, label %B650
B636:                               	; preds = %B639, %B647
  ret i32 0
B646:                               	; preds = %B645, %B719
  br label %B651
B650:                               	; preds = %B645
  %t1069 = add i32 %t94, 0
  %t1056 = add i32 %t91, 0
  br label %B647
B651:                               	; preds = %B646
  %t1076 = add i32 %t1068, 0
  %t104 = icmp slt i32 %t1055, %t1068
  br i1 %t104, label %B672, label %B657
B647:                               	; preds = %B650, %B731
  %t732 = load i32*, i32** %t632, align 4
  %t146 = getelementptr inbounds i32, i32* %t732, i32 %t1056
  store i32 %t644, i32* %t146, align 4
  %t151 = sub i32 %t1056, 1
  %t734 = load i32*, i32** %t632, align 4
  %t154 = load i32, i32* %t633, align 4
  %t156 = call i32 @QuickSort(i32* %t734, i32 %t154, i32 %t151)
  %t159 = add i32 %t1056, 1
  %t735 = load i32*, i32** %t632, align 4
  %t163 = load i32, i32* %t634, align 4
  %t164 = call i32 @QuickSort(i32* %t735, i32 %t159, i32 %t163)
  %t1084 = add i32 %t164, 0
  %t1081 = add i32 %t644, 0
  %t1071 = add i32 %t1069, 0
  %t1058 = add i32 %t1056, 0
  br label %B636
B672:                               	; preds = %B651, %B652
  %t676 = load i32*, i32** %t632, align 4
  %t667 = getelementptr inbounds i32, i32* %t676, i32 %t1076
  %t677 = load i32, i32* %t667, align 4
  %t669 = sub i32 %t644, 1
  %t670 = icmp sgt i32 %t677, %t669
  br i1 %t670, label %B652, label %B680
B657:                               	; preds = %B651
  %t1075 = add i32 %t1068, 0
  br label %B653
B652:                               	; preds = %B672
  %t113 = sub i32 %t1076, 1
  %t1076 = add i32 %t113, 0
  %t665 = icmp slt i32 %t1055, %t113
  br i1 %t665, label %B672, label %B675
B680:                               	; preds = %B672
  %t1075 = add i32 %t1076, 0
  br label %B653
B653:                               	; preds = %B657, %B675, %B680
  %t116 = icmp slt i32 %t1055, %t1075
  br i1 %t116, label %B681, label %B685
B675:                               	; preds = %B652
  %t1075 = add i32 %t113, 0
  br label %B653
B681:                               	; preds = %B653
  %t686 = load i32*, i32** %t632, align 4
  %t120 = getelementptr inbounds i32, i32* %t686, i32 %t1075
  %t687 = load i32, i32* %t120, align 4
  %t118 = getelementptr inbounds i32, i32* %t686, i32 %t1055
  store i32 %t687, i32* %t118, align 4
  %t123 = add i32 %t1055, 1
  %t1062 = add i32 %t123, 0
  br label %B682
B685:                               	; preds = %B653
  %t1062 = add i32 %t1055, 0
  br label %B682
B682:                               	; preds = %B681, %B685
  br label %B689
B689:                               	; preds = %B682
  %t1052 = add i32 %t1062, 0
  %t126 = icmp slt i32 %t1062, %t1075
  br i1 %t126, label %B709, label %B695
B709:                               	; preds = %B689, %B690
  %t713 = load i32*, i32** %t632, align 4
  %t705 = getelementptr inbounds i32, i32* %t713, i32 %t1052
  %t714 = load i32, i32* %t705, align 4
  %t707 = icmp slt i32 %t714, %t644
  br i1 %t707, label %B690, label %B717
B695:                               	; preds = %B689
  %t1051 = add i32 %t1062, 0
  br label %B691
B690:                               	; preds = %B709
  %t134 = add i32 %t1052, 1
  %t1052 = add i32 %t134, 0
  %t703 = icmp slt i32 %t134, %t1075
  br i1 %t703, label %B709, label %B712
B717:                               	; preds = %B709
  %t1051 = add i32 %t1052, 0
  br label %B691
B691:                               	; preds = %B695, %B712, %B717
  %t137 = icmp slt i32 %t1051, %t1075
  br i1 %t137, label %B718, label %B722
B712:                               	; preds = %B690
  %t1051 = add i32 %t134, 0
  br label %B691
B718:                               	; preds = %B691
  %t723 = load i32*, i32** %t632, align 4
  %t141 = getelementptr inbounds i32, i32* %t723, i32 %t1051
  %t724 = load i32, i32* %t141, align 4
  %t139 = getelementptr inbounds i32, i32* %t723, i32 %t1075
  store i32 %t724, i32* %t139, align 4
  %t144 = sub i32 %t1075, 1
  %t1066 = add i32 %t144, 0
  br label %B719
B722:                               	; preds = %B691
  %t1066 = add i32 %t1075, 0
  br label %B719
B719:                               	; preds = %B718, %B722
  %t1068 = add i32 %t1066, 0
  %t1055 = add i32 %t1051, 0
  %t728 = icmp slt i32 %t1051, %t1066
  br i1 %t728, label %B646, label %B731
B731:                               	; preds = %B719
  %t1069 = add i32 %t1066, 0
  %t1056 = add i32 %t1051, 0
  br label %B647
}
define i32 @getMid(i32* %t165) {
B736:
  %t737 = alloca i32*, align 4
  store i32* %t165, i32** %t737, align 4
  %t168 = load i32, i32* @n, align 4
  %t169 = srem i32 %t168, 2
  %t170 = icmp eq i32 %t169, 0
  br i1 %t170, label %B739, label %B744
B739:                               	; preds = %B736
  %t172 = load i32, i32* @n, align 4
  %t173 = sdiv i32 %t172, 2
  %t745 = load i32*, i32** %t737, align 4
  %t175 = getelementptr inbounds i32, i32* %t745, i32 %t173
  %t746 = load i32, i32* %t175, align 4
  %t177 = sub i32 %t173, 1
  %t178 = getelementptr inbounds i32, i32* %t745, i32 %t177
  %t748 = load i32, i32* %t178, align 4
  %t179 = add i32 %t746, %t748
  %t180 = sdiv i32 %t179, 2
  ret i32 %t180
B744:                               	; preds = %B736
  br label %B740
B740:                               	; preds = %B744
  %t182 = load i32, i32* @n, align 4
  %t183 = sdiv i32 %t182, 2
  %t749 = load i32*, i32** %t737, align 4
  %t185 = getelementptr inbounds i32, i32* %t749, i32 %t183
  %t750 = load i32, i32* %t185, align 4
  ret i32 %t750
}
define i32 @getMost(i32* %t186) {
B751:
  %t752 = alloca i32*, align 4
  %t753 = alloca [1000 x i32], align 4
  store i32* %t186, i32** %t752, align 4
  br label %B755
B755:                               	; preds = %B751
  %t1098 = add i32 0, 0
  %t192 = icmp slt i32 0, 1000
  br i1 %t192, label %B756, label %B760
B756:                               	; preds = %B755, %B1321
  %t194 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t1098
  store i32 0, i32* %t194, align 4
  %t197 = add i32 %t1098, 1
  %t762 = icmp slt i32 %t197, 1000
  br i1 %t762, label %B1321, label %B765
B760:                               	; preds = %B755
  %t1099 = add i32 0, 0
  br label %B757
B765:                               	; preds = %B756
  %t1099 = add i32 %t197, 0
  br label %B757
B1321:                               	; preds = %B756
  %t1098 = add i32 %t197, 0
  br label %B756
B757:                               	; preds = %B760, %B765
  br label %B768
B768:                               	; preds = %B757
  %t203 = load i32, i32* @n, align 4
  %t1119 = add i32 0, 0
  %t1114 = add i32 0, 0
  %t1106 = add i32 0, 0
  %t1092 = add i32 0, 0
  %t204 = icmp slt i32 0, %t203
  br i1 %t204, label %B769, label %B773
B769:                               	; preds = %B768, %B779
  %t775 = load i32*, i32** %t752, align 4
  %t208 = getelementptr inbounds i32, i32* %t775, i32 %t1092
  %t776 = load i32, i32* %t208, align 4
  %t212 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t776
  %t777 = load i32, i32* %t212, align 4
  %t213 = add i32 %t777, 1
  %t210 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t776
  store i32 %t213, i32* %t210, align 4
  %t215 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t776
  %t780 = load i32, i32* %t215, align 4
  %t217 = icmp sgt i32 %t780, %t1106
  br i1 %t217, label %B778, label %B783
B773:                               	; preds = %B768
  %t1120 = add i32 0, 0
  %t1115 = add i32 0, 0
  %t1107 = add i32 0, 0
  %t1093 = add i32 0, 0
  br label %B770
B778:                               	; preds = %B769
  %t220 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t753, i32 0, i32 %t776
  %t784 = load i32, i32* %t220, align 4
  %t1112 = add i32 %t776, 0
  %t1104 = add i32 %t784, 0
  br label %B779
B783:                               	; preds = %B769
  %t1112 = add i32 %t1114, 0
  %t1104 = add i32 %t1106, 0
  br label %B779
B770:                               	; preds = %B773, %B790
  ret i32 %t1115
B779:                               	; preds = %B778, %B783
  %t225 = add i32 %t1092, 1
  %t786 = load i32, i32* @n, align 4
  %t1119 = add i32 %t776, 0
  %t1114 = add i32 %t1112, 0
  %t1106 = add i32 %t1104, 0
  %t1092 = add i32 %t225, 0
  %t787 = icmp slt i32 %t225, %t786
  br i1 %t787, label %B769, label %B790
B790:                               	; preds = %B779
  %t1120 = add i32 %t776, 0
  %t1115 = add i32 %t1112, 0
  %t1107 = add i32 %t1104, 0
  %t1093 = add i32 %t225, 0
  br label %B770
}
define i32 @revert(i32* %t227) {
B791:
  %t792 = alloca i32*, align 4
  store i32* %t227, i32** %t792, align 4
  br label %B796
B796:                               	; preds = %B791
  %t1136 = add i32 0, 0
  %t1130 = add i32 0, 0
  %t1125 = add i32 0, 0
  %t236 = icmp slt i32 0, 0
  br i1 %t236, label %B797, label %B801
B797:                               	; preds = %B796, %B1336
  %t802 = load i32*, i32** %t792, align 4
  %t239 = getelementptr inbounds i32, i32* %t802, i32 %t1130
  %t803 = load i32, i32* %t239, align 4
  %t243 = getelementptr inbounds i32, i32* %t802, i32 %t1136
  %t805 = load i32, i32* %t243, align 4
  %t241 = getelementptr inbounds i32, i32* %t802, i32 %t1130
  store i32 %t805, i32* %t241, align 4
  %t245 = getelementptr inbounds i32, i32* %t802, i32 %t1136
  store i32 %t803, i32* %t245, align 4
  %t249 = add i32 %t1130, 1
  %t252 = sub i32 %t1136, 1
  %t810 = icmp slt i32 %t249, %t252
  br i1 %t810, label %B1336, label %B813
B801:                               	; preds = %B796
  %t1135 = add i32 0, 0
  %t1129 = add i32 0, 0
  %t1124 = add i32 0, 0
  br label %B798
B813:                               	; preds = %B797
  %t1135 = add i32 %t252, 0
  %t1129 = add i32 %t249, 0
  %t1124 = add i32 %t803, 0
  br label %B798
B1336:                               	; preds = %B797
  %t1136 = add i32 %t252, 0
  %t1130 = add i32 %t249, 0
  %t1125 = add i32 %t803, 0
  br label %B797
B798:                               	; preds = %B801, %B813
  ret i32 0
}
define i32 @arrCopy(i32* %t253, i32* %t255) {
B814:
  %t815 = alloca i32*, align 4
  %t816 = alloca i32*, align 4
  store i32* %t253, i32** %t815, align 4
  store i32* %t255, i32** %t816, align 4
  br label %B818
B818:                               	; preds = %B814
  %t260 = load i32, i32* @n, align 4
  %t1141 = add i32 0, 0
  %t261 = icmp slt i32 0, %t260
  br i1 %t261, label %B819, label %B823
B819:                               	; preds = %B818, %B1341
  %t824 = load i32*, i32** %t815, align 4
  %t265 = getelementptr inbounds i32, i32* %t824, i32 %t1141
  %t825 = load i32, i32* %t265, align 4
  %t826 = load i32*, i32** %t816, align 4
  %t263 = getelementptr inbounds i32, i32* %t826, i32 %t1141
  store i32 %t825, i32* %t263, align 4
  %t268 = add i32 %t1141, 1
  %t828 = load i32, i32* @n, align 4
  %t829 = icmp slt i32 %t268, %t828
  br i1 %t829, label %B1341, label %B832
B823:                               	; preds = %B818
  %t1142 = add i32 0, 0
  br label %B820
B832:                               	; preds = %B819
  %t1142 = add i32 %t268, 0
  br label %B820
B1341:                               	; preds = %B819
  %t1141 = add i32 %t268, 0
  br label %B819
B820:                               	; preds = %B823, %B832
  ret i32 0
}
define i32 @calSum(i32* %t269, i32 %t271) {
B833:
  %t834 = alloca i32*, align 4
  %t835 = alloca i32, align 4
  store i32* %t269, i32** %t834, align 4
  store i32 %t271, i32* %t835, align 4
  br label %B838
B838:                               	; preds = %B833
  %t278 = load i32, i32* @n, align 4
  %t1157 = add i32 0, 0
  %t1150 = add i32 0, 0
  %t279 = icmp slt i32 0, %t278
  br i1 %t279, label %B839, label %B843
B839:                               	; preds = %B838, %B848
  %t844 = load i32*, i32** %t834, align 4
  %t283 = getelementptr inbounds i32, i32* %t844, i32 %t1157
  %t845 = load i32, i32* %t283, align 4
  %t284 = add i32 %t1150, %t845
  %t286 = load i32, i32* %t835, align 4
  %t287 = srem i32 %t1157, %t286
  %t288 = load i32, i32* %t835, align 4
  %t289 = sub i32 %t288, 1
  %t290 = icmp ne i32 %t287, %t289
  br i1 %t290, label %B846, label %B851
B843:                               	; preds = %B838
  %t1156 = add i32 0, 0
  %t1149 = add i32 0, 0
  br label %B840
B846:                               	; preds = %B839
  %t852 = load i32*, i32** %t834, align 4
  %t292 = getelementptr inbounds i32, i32* %t852, i32 %t1157
  store i32 0, i32* %t292, align 4
  %t1147 = add i32 %t284, 0
  br label %B848
B851:                               	; preds = %B839
  br label %B847
B840:                               	; preds = %B843, %B859
  ret i32 0
B848:                               	; preds = %B846, %B847
  %t299 = add i32 %t1157, 1
  %t855 = load i32, i32* @n, align 4
  %t1157 = add i32 %t299, 0
  %t1150 = add i32 %t1147, 0
  %t856 = icmp slt i32 %t299, %t855
  br i1 %t856, label %B839, label %B859
B847:                               	; preds = %B851
  %t853 = load i32*, i32** %t834, align 4
  %t294 = getelementptr inbounds i32, i32* %t853, i32 %t1157
  store i32 %t284, i32* %t294, align 4
  %t1147 = add i32 0, 0
  br label %B848
B859:                               	; preds = %B848
  %t1156 = add i32 %t299, 0
  %t1149 = add i32 %t1147, 0
  br label %B840
}
define i32 @avgPooling(i32* %t300, i32 %t302) {
B860:
  %t861 = alloca i32*, align 4
  %t862 = alloca i32, align 4
  store i32* %t300, i32** %t861, align 4
  store i32 %t302, i32* %t862, align 4
  br label %B866
B866:                               	; preds = %B860
  %t310 = load i32, i32* @n, align 4
  %t1190 = add i32 0, 0
  %t1179 = add i32 0, 0
  %t1167 = add i32 0, 0
  %t311 = icmp slt i32 0, %t310
  br i1 %t311, label %B867, label %B871
B867:                               	; preds = %B866, %B874
  %t313 = load i32, i32* %t862, align 4
  %t314 = sub i32 %t313, 1
  %t315 = icmp slt i32 %t1179, %t314
  br i1 %t315, label %B872, label %B877
B871:                               	; preds = %B866
  %t1189 = add i32 0, 0
  %t1178 = add i32 0, 0
  %t1166 = add i32 0, 0
  br label %B868
B872:                               	; preds = %B867
  %t878 = load i32*, i32** %t861, align 4
  %t319 = getelementptr inbounds i32, i32* %t878, i32 %t1179
  %t879 = load i32, i32* %t319, align 4
  %t320 = add i32 %t1167, %t879
  %t1187 = add i32 %t1190, 0
  %t1164 = add i32 %t320, 0
  br label %B874
B877:                               	; preds = %B867
  br label %B873
B868:                               	; preds = %B871, %B899
  %t356 = load i32, i32* @n, align 4
  %t357 = load i32, i32* %t862, align 4
  %t358 = sub i32 %t356, %t357
  %t359 = add i32 %t358, 1
  br label %B900
B874:                               	; preds = %B872, %B882
  %t354 = add i32 %t1179, 1
  %t895 = load i32, i32* @n, align 4
  %t1190 = add i32 %t1187, 0
  %t1179 = add i32 %t354, 0
  %t1167 = add i32 %t1164, 0
  %t896 = icmp slt i32 %t354, %t895
  br i1 %t896, label %B867, label %B899
B873:                               	; preds = %B877
  %t322 = load i32, i32* %t862, align 4
  %t323 = sub i32 %t322, 1
  %t324 = icmp eq i32 %t1179, %t323
  br i1 %t324, label %B880, label %B885
B900:                               	; preds = %B868
  %t361 = load i32, i32* @n, align 4
  %t1173 = add i32 %t359, 0
  %t362 = icmp slt i32 %t359, %t361
  br i1 %t362, label %B901, label %B905
B899:                               	; preds = %B874
  %t1189 = add i32 %t1187, 0
  %t1178 = add i32 %t354, 0
  %t1166 = add i32 %t1164, 0
  br label %B868
B880:                               	; preds = %B873
  %t886 = load i32*, i32** %t861, align 4
  %t326 = getelementptr inbounds i32, i32* %t886, i32 0
  %t887 = load i32, i32* %t326, align 4
  %t329 = load i32, i32* %t862, align 4
  %t330 = sdiv i32 %t1167, %t329
  %t327 = getelementptr inbounds i32, i32* %t886, i32 0
  store i32 %t330, i32* %t327, align 4
  %t1185 = add i32 %t887, 0
  %t1162 = add i32 %t1167, 0
  br label %B882
B885:                               	; preds = %B873
  br label %B881
B901:                               	; preds = %B900, %B1359
  %t906 = load i32*, i32** %t861, align 4
  %t364 = getelementptr inbounds i32, i32* %t906, i32 %t1173
  store i32 0, i32* %t364, align 4
  %t367 = add i32 %t1173, 1
  %t908 = load i32, i32* @n, align 4
  %t909 = icmp slt i32 %t367, %t908
  br i1 %t909, label %B1359, label %B912
B905:                               	; preds = %B900
  %t1174 = add i32 %t359, 0
  br label %B902
B882:                               	; preds = %B880, %B881
  %t1187 = add i32 %t1185, 0
  %t1164 = add i32 %t1162, 0
  br label %B874
B881:                               	; preds = %B885
  %t889 = load i32*, i32** %t861, align 4
  %t334 = getelementptr inbounds i32, i32* %t889, i32 %t1179
  %t890 = load i32, i32* %t334, align 4
  %t335 = add i32 %t1167, %t890
  %t337 = sub i32 %t335, %t1190
  %t340 = load i32, i32* %t862, align 4
  %t341 = sub i32 %t1179, %t340
  %t342 = add i32 %t341, 1
  %t343 = getelementptr inbounds i32, i32* %t889, i32 %t342
  %t892 = load i32, i32* %t343, align 4
  %t350 = load i32, i32* %t862, align 4
  %t351 = sdiv i32 %t337, %t350
  %t345 = load i32, i32* %t862, align 4
  store i32 %t351, i32* %t343, align 4
  %t1185 = add i32 %t892, 0
  %t1162 = add i32 %t337, 0
  br label %B882
B912:                               	; preds = %B901
  %t1174 = add i32 %t367, 0
  br label %B902
B1359:                               	; preds = %B901
  %t1173 = add i32 %t367, 0
  br label %B901
B902:                               	; preds = %B905, %B912
  ret i32 0
}
define i32 @main() {
B913:
  %t914 = alloca [32 x i32], align 4
  %t915 = alloca [32 x i32], align 4
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
  %t406 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t407 = call i32 @arrCopy(i32* %t371, i32* %t406)
  %t410 = call i32 @revert(i32* %t406)
  br label %B918
B918:                               	; preds = %B913
  %t1283 = add i32 0, 0
  %t1240 = add i32 %t410, 0
  %t414 = icmp slt i32 0, 32
  br i1 %t414, label %B919, label %B923
B919:                               	; preds = %B918, %B1363
  %t417 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1283
  %t924 = load i32, i32* %t417, align 4
  call void @putint(i32 %t924)
  %t421 = add i32 %t1283, 1
  %t926 = icmp slt i32 %t421, 32
  br i1 %t926, label %B1363, label %B929
B923:                               	; preds = %B918
  %t1282 = add i32 0, 0
  %t1239 = add i32 %t410, 0
  br label %B920
B929:                               	; preds = %B919
  %t1282 = add i32 %t421, 0
  %t1239 = add i32 %t924, 0
  br label %B920
B1363:                               	; preds = %B919
  %t1283 = add i32 %t421, 0
  %t1240 = add i32 %t924, 0
  br label %B919
B920:                               	; preds = %B923, %B929
  %t423 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t424 = call i32 @bubblesort(i32* %t423)
  br label %B930
B930:                               	; preds = %B920
  %t1276 = add i32 0, 0
  %t1233 = add i32 %t424, 0
  %t427 = icmp slt i32 0, 32
  br i1 %t427, label %B931, label %B935
B931:                               	; preds = %B930, %B1368
  %t430 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1276
  %t936 = load i32, i32* %t430, align 4
  call void @putint(i32 %t936)
  %t434 = add i32 %t1276, 1
  %t938 = icmp slt i32 %t434, 32
  br i1 %t938, label %B1368, label %B941
B935:                               	; preds = %B930
  %t1277 = add i32 0, 0
  %t1234 = add i32 %t424, 0
  br label %B932
B941:                               	; preds = %B931
  %t1277 = add i32 %t434, 0
  %t1234 = add i32 %t936, 0
  br label %B932
B1368:                               	; preds = %B931
  %t1276 = add i32 %t434, 0
  %t1233 = add i32 %t936, 0
  br label %B931
B932:                               	; preds = %B935, %B941
  %t436 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t437 = call i32 @getMid(i32* %t436)
  call void @putint(i32 %t437)
  %t441 = call i32 @getMost(i32* %t436)
  call void @putint(i32 %t441)
  %t444 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t446 = call i32 @arrCopy(i32* %t444, i32* %t436)
  %t449 = call i32 @bubblesort(i32* %t436)
  br label %B942
B942:                               	; preds = %B932
  %t1270 = add i32 0, 0
  %t1224 = add i32 %t449, 0
  %t452 = icmp slt i32 0, 32
  br i1 %t452, label %B943, label %B947
B943:                               	; preds = %B942, %B1373
  %t455 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1270
  %t948 = load i32, i32* %t455, align 4
  call void @putint(i32 %t948)
  %t459 = add i32 %t1270, 1
  %t950 = icmp slt i32 %t459, 32
  br i1 %t950, label %B1373, label %B953
B947:                               	; preds = %B942
  %t1271 = add i32 0, 0
  %t1225 = add i32 %t449, 0
  br label %B944
B953:                               	; preds = %B943
  %t1271 = add i32 %t459, 0
  %t1225 = add i32 %t948, 0
  br label %B944
B1373:                               	; preds = %B943
  %t1270 = add i32 %t459, 0
  %t1224 = add i32 %t948, 0
  br label %B943
B944:                               	; preds = %B947, %B953
  %t461 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t462 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t463 = call i32 @arrCopy(i32* %t461, i32* %t462)
  %t466 = call i32 @insertsort(i32* %t462)
  br label %B954
B954:                               	; preds = %B944
  %t1264 = add i32 0, 0
  %t1217 = add i32 %t466, 0
  %t469 = icmp slt i32 0, 32
  br i1 %t469, label %B955, label %B959
B955:                               	; preds = %B954, %B1378
  %t472 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1264
  %t960 = load i32, i32* %t472, align 4
  call void @putint(i32 %t960)
  %t476 = add i32 %t1264, 1
  %t962 = icmp slt i32 %t476, 32
  br i1 %t962, label %B1378, label %B965
B959:                               	; preds = %B954
  %t1265 = add i32 0, 0
  %t1218 = add i32 %t466, 0
  br label %B956
B965:                               	; preds = %B955
  %t1265 = add i32 %t476, 0
  %t1218 = add i32 %t960, 0
  br label %B956
B1378:                               	; preds = %B955
  %t1264 = add i32 %t476, 0
  %t1217 = add i32 %t960, 0
  br label %B955
B956:                               	; preds = %B959, %B965
  %t478 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t479 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t480 = call i32 @arrCopy(i32* %t478, i32* %t479)
  %t487 = call i32 @QuickSort(i32* %t479, i32 0, i32 31)
  br label %B966
B966:                               	; preds = %B956
  %t1258 = add i32 0, 0
  %t1209 = add i32 %t487, 0
  %t489 = icmp slt i32 0, 32
  br i1 %t489, label %B967, label %B971
B967:                               	; preds = %B966, %B1383
  %t492 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1258
  %t972 = load i32, i32* %t492, align 4
  call void @putint(i32 %t972)
  %t496 = add i32 %t1258, 1
  %t974 = icmp slt i32 %t496, 32
  br i1 %t974, label %B1383, label %B977
B971:                               	; preds = %B966
  %t1259 = add i32 0, 0
  %t1210 = add i32 %t487, 0
  br label %B968
B977:                               	; preds = %B967
  %t1259 = add i32 %t496, 0
  %t1210 = add i32 %t972, 0
  br label %B968
B1383:                               	; preds = %B967
  %t1258 = add i32 %t496, 0
  %t1209 = add i32 %t972, 0
  br label %B967
B968:                               	; preds = %B971, %B977
  %t498 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t499 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t500 = call i32 @arrCopy(i32* %t498, i32* %t499)
  %t503 = call i32 @calSum(i32* %t499, i32 4)
  br label %B978
B978:                               	; preds = %B968
  %t1252 = add i32 0, 0
  %t1202 = add i32 %t503, 0
  %t506 = icmp slt i32 0, 32
  br i1 %t506, label %B979, label %B983
B979:                               	; preds = %B978, %B1388
  %t509 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1252
  %t984 = load i32, i32* %t509, align 4
  call void @putint(i32 %t984)
  %t513 = add i32 %t1252, 1
  %t986 = icmp slt i32 %t513, 32
  br i1 %t986, label %B1388, label %B989
B983:                               	; preds = %B978
  %t1253 = add i32 0, 0
  %t1203 = add i32 %t503, 0
  br label %B980
B989:                               	; preds = %B979
  %t1253 = add i32 %t513, 0
  %t1203 = add i32 %t984, 0
  br label %B980
B1388:                               	; preds = %B979
  %t1252 = add i32 %t513, 0
  %t1202 = add i32 %t984, 0
  br label %B979
B980:                               	; preds = %B983, %B989
  %t515 = getelementptr inbounds [32 x i32], [32 x i32]* %t914, i32 0, i32 0
  %t516 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 0
  %t517 = call i32 @arrCopy(i32* %t515, i32* %t516)
  %t520 = call i32 @avgPooling(i32* %t516, i32 3)
  br label %B990
B990:                               	; preds = %B980
  %t1246 = add i32 0, 0
  %t1195 = add i32 %t520, 0
  %t523 = icmp slt i32 0, 32
  br i1 %t523, label %B991, label %B995
B991:                               	; preds = %B990, %B1393
  %t526 = getelementptr inbounds [32 x i32], [32 x i32]* %t915, i32 0, i32 %t1246
  %t996 = load i32, i32* %t526, align 4
  call void @putint(i32 %t996)
  %t530 = add i32 %t1246, 1
  %t998 = icmp slt i32 %t530, 32
  br i1 %t998, label %B1393, label %B1001
B995:                               	; preds = %B990
  %t1247 = add i32 0, 0
  %t1196 = add i32 %t520, 0
  br label %B992
B1001:                               	; preds = %B991
  %t1247 = add i32 %t530, 0
  %t1196 = add i32 %t996, 0
  br label %B992
B1393:                               	; preds = %B991
  %t1246 = add i32 %t530, 0
  %t1195 = add i32 %t996, 0
  br label %B991
B992:                               	; preds = %B995, %B1001
  ret i32 0
}
declare void @putint(i32)
