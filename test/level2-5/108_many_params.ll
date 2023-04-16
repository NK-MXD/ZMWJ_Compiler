define void @sort(i32* %t0, i32 %t2) {
B546:
  %t547 = alloca i32*, align 4
  %t548 = alloca i32, align 4
  store i32* %t0, i32** %t547, align 4
  store i32 %t2, i32* %t548, align 4
  br label %B550
B550:                               	; preds = %B546
  %t6 = load i32, i32* %t548, align 4
  %t7 = sub i32 %t6, 1
  %t1079 = add i32 0, 0
  %t1067 = add i32 0, 0
  %t1058 = add i32 0, 0
  %t8 = icmp slt i32 0, %t7
  br i1 %t8, label %B551, label %B555
B551:                               	; preds = %B550, %B559
  %t10 = add i32 %t1058, 1
  br label %B557
B555:                               	; preds = %B550
  %t1080 = add i32 0, 0
  %t1068 = add i32 0, 0
  %t1059 = add i32 0, 0
  br label %B552
B557:                               	; preds = %B551
  %t13 = load i32, i32* %t548, align 4
  %t1076 = add i32 %t1079, 0
  %t1064 = add i32 %t10, 0
  %t14 = icmp slt i32 %t10, %t13
  br i1 %t14, label %B558, label %B562
B552:                               	; preds = %B555, %B591
  ret void
B558:                               	; preds = %B557, %B564
  %t565 = load i32*, i32** %t547, align 4
  %t16 = getelementptr inbounds i32, i32* %t565, i32 %t1058
  %t566 = load i32, i32* %t16, align 4
  %t18 = getelementptr inbounds i32, i32* %t565, i32 %t1064
  %t568 = load i32, i32* %t18, align 4
  %t19 = icmp slt i32 %t566, %t568
  br i1 %t19, label %B563, label %B571
B562:                               	; preds = %B557
  %t1077 = add i32 %t1079, 0
  %t1065 = add i32 %t10, 0
  br label %B559
B563:                               	; preds = %B558
  %t573 = load i32*, i32** %t547, align 4
  %t21 = getelementptr inbounds i32, i32* %t573, i32 %t1058
  %t574 = load i32, i32* %t21, align 4
  %t26 = getelementptr inbounds i32, i32* %t573, i32 %t1064
  %t576 = load i32, i32* %t26, align 4
  %t24 = getelementptr inbounds i32, i32* %t573, i32 %t1058
  store i32 %t576, i32* %t24, align 4
  %t28 = getelementptr inbounds i32, i32* %t573, i32 %t1064
  store i32 %t574, i32* %t28, align 4
  %t1074 = add i32 %t574, 0
  br label %B564
B571:                               	; preds = %B558
  %t1074 = add i32 %t1076, 0
  br label %B564
B559:                               	; preds = %B562, %B584
  %t35 = add i32 %t1058, 1
  %t586 = load i32, i32* %t548, align 4
  %t587 = sub i32 %t586, 1
  %t1079 = add i32 %t1077, 0
  %t1067 = add i32 %t1065, 0
  %t1058 = add i32 %t35, 0
  %t588 = icmp slt i32 %t35, %t587
  br i1 %t588, label %B551, label %B591
B564:                               	; preds = %B563, %B571
  %t32 = add i32 %t1064, 1
  %t580 = load i32, i32* %t548, align 4
  %t1076 = add i32 %t1074, 0
  %t1064 = add i32 %t32, 0
  %t581 = icmp slt i32 %t32, %t580
  br i1 %t581, label %B558, label %B584
B591:                               	; preds = %B559
  %t1080 = add i32 %t1077, 0
  %t1068 = add i32 %t1065, 0
  %t1059 = add i32 %t35, 0
  br label %B552
B584:                               	; preds = %B564
  %t1077 = add i32 %t1074, 0
  %t1065 = add i32 %t32, 0
  br label %B559
}
define i32 @param32_rec(i32 %t36, i32 %t38, i32 %t40, i32 %t42, i32 %t44, i32 %t46, i32 %t48, i32 %t50, i32 %t52, i32 %t54, i32 %t56, i32 %t58, i32 %t60, i32 %t62, i32 %t64, i32 %t66, i32 %t68, i32 %t70, i32 %t72, i32 %t74, i32 %t76, i32 %t78, i32 %t80, i32 %t82, i32 %t84, i32 %t86, i32 %t88, i32 %t90, i32 %t92, i32 %t94, i32 %t96, i32 %t98) {
B592:
  %t593 = alloca i32, align 4
  %t594 = alloca i32, align 4
  %t595 = alloca i32, align 4
  %t596 = alloca i32, align 4
  %t597 = alloca i32, align 4
  %t598 = alloca i32, align 4
  %t599 = alloca i32, align 4
  %t600 = alloca i32, align 4
  %t601 = alloca i32, align 4
  %t602 = alloca i32, align 4
  %t603 = alloca i32, align 4
  %t604 = alloca i32, align 4
  %t605 = alloca i32, align 4
  %t606 = alloca i32, align 4
  %t607 = alloca i32, align 4
  %t608 = alloca i32, align 4
  %t609 = alloca i32, align 4
  %t610 = alloca i32, align 4
  %t611 = alloca i32, align 4
  %t612 = alloca i32, align 4
  %t613 = alloca i32, align 4
  %t614 = alloca i32, align 4
  %t615 = alloca i32, align 4
  %t616 = alloca i32, align 4
  %t617 = alloca i32, align 4
  %t618 = alloca i32, align 4
  %t619 = alloca i32, align 4
  %t620 = alloca i32, align 4
  %t621 = alloca i32, align 4
  %t622 = alloca i32, align 4
  %t623 = alloca i32, align 4
  %t624 = alloca i32, align 4
  store i32 %t36, i32* %t593, align 4
  store i32 %t38, i32* %t594, align 4
  store i32 %t40, i32* %t595, align 4
  store i32 %t42, i32* %t596, align 4
  store i32 %t44, i32* %t597, align 4
  store i32 %t46, i32* %t598, align 4
  store i32 %t48, i32* %t599, align 4
  store i32 %t50, i32* %t600, align 4
  store i32 %t52, i32* %t601, align 4
  store i32 %t54, i32* %t602, align 4
  store i32 %t56, i32* %t603, align 4
  store i32 %t58, i32* %t604, align 4
  store i32 %t60, i32* %t605, align 4
  store i32 %t62, i32* %t606, align 4
  store i32 %t64, i32* %t607, align 4
  store i32 %t66, i32* %t608, align 4
  store i32 %t68, i32* %t609, align 4
  store i32 %t70, i32* %t610, align 4
  store i32 %t72, i32* %t611, align 4
  store i32 %t74, i32* %t612, align 4
  store i32 %t76, i32* %t613, align 4
  store i32 %t78, i32* %t614, align 4
  store i32 %t80, i32* %t615, align 4
  store i32 %t82, i32* %t616, align 4
  store i32 %t84, i32* %t617, align 4
  store i32 %t86, i32* %t618, align 4
  store i32 %t88, i32* %t619, align 4
  store i32 %t90, i32* %t620, align 4
  store i32 %t92, i32* %t621, align 4
  store i32 %t94, i32* %t622, align 4
  store i32 %t96, i32* %t623, align 4
  store i32 %t98, i32* %t624, align 4
  %t100 = load i32, i32* %t593, align 4
  %t101 = icmp eq i32 %t100, 0
  br i1 %t101, label %B625, label %B630
B625:                               	; preds = %B592
  %t102 = load i32, i32* %t594, align 4
  ret i32 %t102
B630:                               	; preds = %B592
  br label %B626
B626:                               	; preds = %B630
  %t103 = load i32, i32* %t593, align 4
  %t104 = sub i32 %t103, 1
  %t105 = load i32, i32* %t594, align 4
  %t106 = load i32, i32* %t595, align 4
  %t107 = add i32 %t105, %t106
  %t108 = srem i32 %t107, 998244353
  %t109 = load i32, i32* %t596, align 4
  %t110 = load i32, i32* %t597, align 4
  %t111 = load i32, i32* %t598, align 4
  %t112 = load i32, i32* %t599, align 4
  %t113 = load i32, i32* %t600, align 4
  %t114 = load i32, i32* %t601, align 4
  %t115 = load i32, i32* %t602, align 4
  %t116 = load i32, i32* %t603, align 4
  %t117 = load i32, i32* %t604, align 4
  %t118 = load i32, i32* %t605, align 4
  %t119 = load i32, i32* %t606, align 4
  %t120 = load i32, i32* %t607, align 4
  %t121 = load i32, i32* %t608, align 4
  %t122 = load i32, i32* %t609, align 4
  %t123 = load i32, i32* %t610, align 4
  %t124 = load i32, i32* %t611, align 4
  %t125 = load i32, i32* %t612, align 4
  %t126 = load i32, i32* %t613, align 4
  %t127 = load i32, i32* %t614, align 4
  %t128 = load i32, i32* %t615, align 4
  %t129 = load i32, i32* %t616, align 4
  %t130 = load i32, i32* %t617, align 4
  %t131 = load i32, i32* %t618, align 4
  %t132 = load i32, i32* %t619, align 4
  %t133 = load i32, i32* %t620, align 4
  %t134 = load i32, i32* %t621, align 4
  %t135 = load i32, i32* %t622, align 4
  %t136 = load i32, i32* %t623, align 4
  %t137 = load i32, i32* %t624, align 4
  %t138 = call i32 @param32_rec(i32 %t104, i32 %t108, i32 %t109, i32 %t110, i32 %t111, i32 %t112, i32 %t113, i32 %t114, i32 %t115, i32 %t116, i32 %t117, i32 %t118, i32 %t119, i32 %t120, i32 %t121, i32 %t122, i32 %t123, i32 %t124, i32 %t125, i32 %t126, i32 %t127, i32 %t128, i32 %t129, i32 %t130, i32 %t131, i32 %t132, i32 %t133, i32 %t134, i32 %t135, i32 %t136, i32 %t137, i32 0)
  ret i32 %t138
}
define i32 @param32_arr(i32* %t139, i32* %t141, i32* %t143, i32* %t145, i32* %t147, i32* %t149, i32* %t151, i32* %t153, i32* %t155, i32* %t157, i32* %t159, i32* %t161, i32* %t163, i32* %t165, i32* %t167, i32* %t169, i32* %t171, i32* %t173, i32* %t175, i32* %t177, i32* %t179, i32* %t181, i32* %t183, i32* %t185, i32* %t187, i32* %t189, i32* %t191, i32* %t193, i32* %t195, i32* %t197, i32* %t199, i32* %t201) {
B631:
  %t632 = alloca i32*, align 4
  %t633 = alloca i32*, align 4
  %t634 = alloca i32*, align 4
  %t635 = alloca i32*, align 4
  %t636 = alloca i32*, align 4
  %t637 = alloca i32*, align 4
  %t638 = alloca i32*, align 4
  %t639 = alloca i32*, align 4
  %t640 = alloca i32*, align 4
  %t641 = alloca i32*, align 4
  %t642 = alloca i32*, align 4
  %t643 = alloca i32*, align 4
  %t644 = alloca i32*, align 4
  %t645 = alloca i32*, align 4
  %t646 = alloca i32*, align 4
  %t647 = alloca i32*, align 4
  %t648 = alloca i32*, align 4
  %t649 = alloca i32*, align 4
  %t650 = alloca i32*, align 4
  %t651 = alloca i32*, align 4
  %t652 = alloca i32*, align 4
  %t653 = alloca i32*, align 4
  %t654 = alloca i32*, align 4
  %t655 = alloca i32*, align 4
  %t656 = alloca i32*, align 4
  %t657 = alloca i32*, align 4
  %t658 = alloca i32*, align 4
  %t659 = alloca i32*, align 4
  %t660 = alloca i32*, align 4
  %t661 = alloca i32*, align 4
  %t662 = alloca i32*, align 4
  %t663 = alloca i32*, align 4
  store i32* %t139, i32** %t632, align 4
  store i32* %t141, i32** %t633, align 4
  store i32* %t143, i32** %t634, align 4
  store i32* %t145, i32** %t635, align 4
  store i32* %t147, i32** %t636, align 4
  store i32* %t149, i32** %t637, align 4
  store i32* %t151, i32** %t638, align 4
  store i32* %t153, i32** %t639, align 4
  store i32* %t155, i32** %t640, align 4
  store i32* %t157, i32** %t641, align 4
  store i32* %t159, i32** %t642, align 4
  store i32* %t161, i32** %t643, align 4
  store i32* %t163, i32** %t644, align 4
  store i32* %t165, i32** %t645, align 4
  store i32* %t167, i32** %t646, align 4
  store i32* %t169, i32** %t647, align 4
  store i32* %t171, i32** %t648, align 4
  store i32* %t173, i32** %t649, align 4
  store i32* %t175, i32** %t650, align 4
  store i32* %t177, i32** %t651, align 4
  store i32* %t179, i32** %t652, align 4
  store i32* %t181, i32** %t653, align 4
  store i32* %t183, i32** %t654, align 4
  store i32* %t185, i32** %t655, align 4
  store i32* %t187, i32** %t656, align 4
  store i32* %t189, i32** %t657, align 4
  store i32* %t191, i32** %t658, align 4
  store i32* %t193, i32** %t659, align 4
  store i32* %t195, i32** %t660, align 4
  store i32* %t197, i32** %t661, align 4
  store i32* %t199, i32** %t662, align 4
  store i32* %t201, i32** %t663, align 4
  %t665 = load i32*, i32** %t632, align 4
  %t203 = getelementptr inbounds i32, i32* %t665, i32 0
  %t666 = load i32, i32* %t203, align 4
  %t204 = getelementptr inbounds i32, i32* %t665, i32 1
  %t668 = load i32, i32* %t204, align 4
  %t205 = add i32 %t666, %t668
  %t669 = load i32*, i32** %t633, align 4
  %t209 = getelementptr inbounds i32, i32* %t669, i32 0
  %t670 = load i32, i32* %t209, align 4
  %t210 = add i32 %t205, %t670
  %t211 = getelementptr inbounds i32, i32* %t669, i32 1
  %t672 = load i32, i32* %t211, align 4
  %t212 = add i32 %t210, %t672
  %t673 = load i32*, i32** %t634, align 4
  %t215 = getelementptr inbounds i32, i32* %t673, i32 0
  %t674 = load i32, i32* %t215, align 4
  %t216 = add i32 %t212, %t674
  %t217 = getelementptr inbounds i32, i32* %t673, i32 1
  %t676 = load i32, i32* %t217, align 4
  %t218 = add i32 %t216, %t676
  %t677 = load i32*, i32** %t635, align 4
  %t221 = getelementptr inbounds i32, i32* %t677, i32 0
  %t678 = load i32, i32* %t221, align 4
  %t222 = add i32 %t218, %t678
  %t223 = getelementptr inbounds i32, i32* %t677, i32 1
  %t680 = load i32, i32* %t223, align 4
  %t224 = add i32 %t222, %t680
  %t681 = load i32*, i32** %t636, align 4
  %t227 = getelementptr inbounds i32, i32* %t681, i32 0
  %t682 = load i32, i32* %t227, align 4
  %t228 = add i32 %t224, %t682
  %t229 = getelementptr inbounds i32, i32* %t681, i32 1
  %t684 = load i32, i32* %t229, align 4
  %t230 = add i32 %t228, %t684
  %t685 = load i32*, i32** %t637, align 4
  %t233 = getelementptr inbounds i32, i32* %t685, i32 0
  %t686 = load i32, i32* %t233, align 4
  %t234 = add i32 %t230, %t686
  %t235 = getelementptr inbounds i32, i32* %t685, i32 1
  %t688 = load i32, i32* %t235, align 4
  %t236 = add i32 %t234, %t688
  %t689 = load i32*, i32** %t638, align 4
  %t239 = getelementptr inbounds i32, i32* %t689, i32 0
  %t690 = load i32, i32* %t239, align 4
  %t240 = add i32 %t236, %t690
  %t241 = getelementptr inbounds i32, i32* %t689, i32 1
  %t692 = load i32, i32* %t241, align 4
  %t242 = add i32 %t240, %t692
  %t693 = load i32*, i32** %t639, align 4
  %t245 = getelementptr inbounds i32, i32* %t693, i32 0
  %t694 = load i32, i32* %t245, align 4
  %t246 = add i32 %t242, %t694
  %t247 = getelementptr inbounds i32, i32* %t693, i32 1
  %t696 = load i32, i32* %t247, align 4
  %t248 = add i32 %t246, %t696
  %t697 = load i32*, i32** %t640, align 4
  %t251 = getelementptr inbounds i32, i32* %t697, i32 0
  %t698 = load i32, i32* %t251, align 4
  %t252 = add i32 %t248, %t698
  %t253 = getelementptr inbounds i32, i32* %t697, i32 1
  %t700 = load i32, i32* %t253, align 4
  %t254 = add i32 %t252, %t700
  %t701 = load i32*, i32** %t641, align 4
  %t257 = getelementptr inbounds i32, i32* %t701, i32 0
  %t702 = load i32, i32* %t257, align 4
  %t258 = add i32 %t254, %t702
  %t259 = getelementptr inbounds i32, i32* %t701, i32 1
  %t704 = load i32, i32* %t259, align 4
  %t260 = add i32 %t258, %t704
  %t705 = load i32*, i32** %t642, align 4
  %t263 = getelementptr inbounds i32, i32* %t705, i32 0
  %t706 = load i32, i32* %t263, align 4
  %t264 = add i32 %t260, %t706
  %t265 = getelementptr inbounds i32, i32* %t705, i32 1
  %t708 = load i32, i32* %t265, align 4
  %t266 = add i32 %t264, %t708
  %t709 = load i32*, i32** %t643, align 4
  %t269 = getelementptr inbounds i32, i32* %t709, i32 0
  %t710 = load i32, i32* %t269, align 4
  %t270 = add i32 %t266, %t710
  %t271 = getelementptr inbounds i32, i32* %t709, i32 1
  %t712 = load i32, i32* %t271, align 4
  %t272 = add i32 %t270, %t712
  %t713 = load i32*, i32** %t644, align 4
  %t275 = getelementptr inbounds i32, i32* %t713, i32 0
  %t714 = load i32, i32* %t275, align 4
  %t276 = add i32 %t272, %t714
  %t277 = getelementptr inbounds i32, i32* %t713, i32 1
  %t716 = load i32, i32* %t277, align 4
  %t278 = add i32 %t276, %t716
  %t717 = load i32*, i32** %t645, align 4
  %t281 = getelementptr inbounds i32, i32* %t717, i32 0
  %t718 = load i32, i32* %t281, align 4
  %t282 = add i32 %t278, %t718
  %t283 = getelementptr inbounds i32, i32* %t717, i32 1
  %t720 = load i32, i32* %t283, align 4
  %t284 = add i32 %t282, %t720
  %t721 = load i32*, i32** %t646, align 4
  %t287 = getelementptr inbounds i32, i32* %t721, i32 0
  %t722 = load i32, i32* %t287, align 4
  %t288 = add i32 %t284, %t722
  %t289 = getelementptr inbounds i32, i32* %t721, i32 1
  %t724 = load i32, i32* %t289, align 4
  %t290 = add i32 %t288, %t724
  %t725 = load i32*, i32** %t647, align 4
  %t293 = getelementptr inbounds i32, i32* %t725, i32 0
  %t726 = load i32, i32* %t293, align 4
  %t294 = add i32 %t290, %t726
  %t295 = getelementptr inbounds i32, i32* %t725, i32 1
  %t728 = load i32, i32* %t295, align 4
  %t296 = add i32 %t294, %t728
  %t729 = load i32*, i32** %t648, align 4
  %t299 = getelementptr inbounds i32, i32* %t729, i32 0
  %t730 = load i32, i32* %t299, align 4
  %t300 = add i32 %t296, %t730
  %t301 = getelementptr inbounds i32, i32* %t729, i32 1
  %t732 = load i32, i32* %t301, align 4
  %t302 = add i32 %t300, %t732
  %t733 = load i32*, i32** %t649, align 4
  %t305 = getelementptr inbounds i32, i32* %t733, i32 0
  %t734 = load i32, i32* %t305, align 4
  %t306 = add i32 %t302, %t734
  %t307 = getelementptr inbounds i32, i32* %t733, i32 1
  %t736 = load i32, i32* %t307, align 4
  %t308 = add i32 %t306, %t736
  %t737 = load i32*, i32** %t650, align 4
  %t311 = getelementptr inbounds i32, i32* %t737, i32 0
  %t738 = load i32, i32* %t311, align 4
  %t312 = add i32 %t308, %t738
  %t313 = getelementptr inbounds i32, i32* %t737, i32 1
  %t740 = load i32, i32* %t313, align 4
  %t314 = add i32 %t312, %t740
  %t741 = load i32*, i32** %t651, align 4
  %t317 = getelementptr inbounds i32, i32* %t741, i32 0
  %t742 = load i32, i32* %t317, align 4
  %t318 = add i32 %t314, %t742
  %t319 = getelementptr inbounds i32, i32* %t741, i32 1
  %t744 = load i32, i32* %t319, align 4
  %t320 = add i32 %t318, %t744
  %t745 = load i32*, i32** %t652, align 4
  %t323 = getelementptr inbounds i32, i32* %t745, i32 0
  %t746 = load i32, i32* %t323, align 4
  %t324 = add i32 %t320, %t746
  %t325 = getelementptr inbounds i32, i32* %t745, i32 1
  %t748 = load i32, i32* %t325, align 4
  %t326 = add i32 %t324, %t748
  %t749 = load i32*, i32** %t653, align 4
  %t329 = getelementptr inbounds i32, i32* %t749, i32 0
  %t750 = load i32, i32* %t329, align 4
  %t330 = add i32 %t326, %t750
  %t331 = getelementptr inbounds i32, i32* %t749, i32 1
  %t752 = load i32, i32* %t331, align 4
  %t332 = add i32 %t330, %t752
  %t753 = load i32*, i32** %t654, align 4
  %t335 = getelementptr inbounds i32, i32* %t753, i32 0
  %t754 = load i32, i32* %t335, align 4
  %t336 = add i32 %t332, %t754
  %t337 = getelementptr inbounds i32, i32* %t753, i32 1
  %t756 = load i32, i32* %t337, align 4
  %t338 = add i32 %t336, %t756
  %t757 = load i32*, i32** %t655, align 4
  %t341 = getelementptr inbounds i32, i32* %t757, i32 0
  %t758 = load i32, i32* %t341, align 4
  %t342 = add i32 %t338, %t758
  %t343 = getelementptr inbounds i32, i32* %t757, i32 1
  %t760 = load i32, i32* %t343, align 4
  %t344 = add i32 %t342, %t760
  %t761 = load i32*, i32** %t656, align 4
  %t347 = getelementptr inbounds i32, i32* %t761, i32 0
  %t762 = load i32, i32* %t347, align 4
  %t348 = add i32 %t344, %t762
  %t349 = getelementptr inbounds i32, i32* %t761, i32 1
  %t764 = load i32, i32* %t349, align 4
  %t350 = add i32 %t348, %t764
  %t765 = load i32*, i32** %t657, align 4
  %t353 = getelementptr inbounds i32, i32* %t765, i32 0
  %t766 = load i32, i32* %t353, align 4
  %t354 = add i32 %t350, %t766
  %t355 = getelementptr inbounds i32, i32* %t765, i32 1
  %t768 = load i32, i32* %t355, align 4
  %t356 = add i32 %t354, %t768
  %t769 = load i32*, i32** %t658, align 4
  %t359 = getelementptr inbounds i32, i32* %t769, i32 0
  %t770 = load i32, i32* %t359, align 4
  %t360 = add i32 %t356, %t770
  %t361 = getelementptr inbounds i32, i32* %t769, i32 1
  %t772 = load i32, i32* %t361, align 4
  %t362 = add i32 %t360, %t772
  %t773 = load i32*, i32** %t659, align 4
  %t365 = getelementptr inbounds i32, i32* %t773, i32 0
  %t774 = load i32, i32* %t365, align 4
  %t366 = add i32 %t362, %t774
  %t367 = getelementptr inbounds i32, i32* %t773, i32 1
  %t776 = load i32, i32* %t367, align 4
  %t368 = add i32 %t366, %t776
  %t777 = load i32*, i32** %t660, align 4
  %t371 = getelementptr inbounds i32, i32* %t777, i32 0
  %t778 = load i32, i32* %t371, align 4
  %t372 = add i32 %t368, %t778
  %t373 = getelementptr inbounds i32, i32* %t777, i32 1
  %t780 = load i32, i32* %t373, align 4
  %t374 = add i32 %t372, %t780
  %t781 = load i32*, i32** %t661, align 4
  %t377 = getelementptr inbounds i32, i32* %t781, i32 0
  %t782 = load i32, i32* %t377, align 4
  %t378 = add i32 %t374, %t782
  %t379 = getelementptr inbounds i32, i32* %t781, i32 1
  %t784 = load i32, i32* %t379, align 4
  %t380 = add i32 %t378, %t784
  %t785 = load i32*, i32** %t662, align 4
  %t383 = getelementptr inbounds i32, i32* %t785, i32 0
  %t786 = load i32, i32* %t383, align 4
  %t384 = add i32 %t380, %t786
  %t385 = getelementptr inbounds i32, i32* %t785, i32 1
  %t788 = load i32, i32* %t385, align 4
  %t386 = add i32 %t384, %t788
  %t789 = load i32*, i32** %t663, align 4
  %t389 = getelementptr inbounds i32, i32* %t789, i32 0
  %t790 = load i32, i32* %t389, align 4
  %t390 = add i32 %t386, %t790
  %t391 = getelementptr inbounds i32, i32* %t789, i32 1
  %t792 = load i32, i32* %t391, align 4
  %t392 = add i32 %t390, %t792
  ret i32 %t392
}
define i32 @param16(i32 %t394, i32 %t396, i32 %t398, i32 %t400, i32 %t402, i32 %t404, i32 %t406, i32 %t408, i32 %t410, i32 %t412, i32 %t414, i32 %t416, i32 %t418, i32 %t420, i32 %t422, i32 %t424) {
B793:
  %t794 = alloca i32, align 4
  %t795 = alloca i32, align 4
  %t796 = alloca i32, align 4
  %t797 = alloca i32, align 4
  %t798 = alloca i32, align 4
  %t799 = alloca i32, align 4
  %t800 = alloca i32, align 4
  %t801 = alloca i32, align 4
  %t802 = alloca i32, align 4
  %t803 = alloca i32, align 4
  %t804 = alloca i32, align 4
  %t805 = alloca i32, align 4
  %t806 = alloca i32, align 4
  %t807 = alloca i32, align 4
  %t808 = alloca i32, align 4
  %t809 = alloca i32, align 4
  %t810 = alloca [16 x i32], align 4
  store i32 %t394, i32* %t794, align 4
  store i32 %t396, i32* %t795, align 4
  store i32 %t398, i32* %t796, align 4
  store i32 %t400, i32* %t797, align 4
  store i32 %t402, i32* %t798, align 4
  store i32 %t404, i32* %t799, align 4
  store i32 %t406, i32* %t800, align 4
  store i32 %t408, i32* %t801, align 4
  store i32 %t410, i32* %t802, align 4
  store i32 %t412, i32* %t803, align 4
  store i32 %t414, i32* %t804, align 4
  store i32 %t416, i32* %t805, align 4
  store i32 %t418, i32* %t806, align 4
  store i32 %t420, i32* %t807, align 4
  store i32 %t422, i32* %t808, align 4
  store i32 %t424, i32* %t809, align 4
  %t811 = bitcast [16 x i32]* %t810 to i8*
  call void @llvm.memset.p0.i32(i8* %t811, i8 0, i32 64, i1 0)
  %t426 = load i32, i32* %t794, align 4
  %t812 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 0
  store i32 %t426, i32* %t812, align 4
  %t427 = load i32, i32* %t795, align 4
  %t813 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 1
  store i32 %t427, i32* %t813, align 4
  %t428 = load i32, i32* %t796, align 4
  %t814 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 2
  store i32 %t428, i32* %t814, align 4
  %t429 = load i32, i32* %t797, align 4
  %t815 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 3
  store i32 %t429, i32* %t815, align 4
  %t430 = load i32, i32* %t798, align 4
  %t816 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 4
  store i32 %t430, i32* %t816, align 4
  %t431 = load i32, i32* %t799, align 4
  %t817 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 5
  store i32 %t431, i32* %t817, align 4
  %t432 = load i32, i32* %t800, align 4
  %t818 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 6
  store i32 %t432, i32* %t818, align 4
  %t433 = load i32, i32* %t801, align 4
  %t819 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 7
  store i32 %t433, i32* %t819, align 4
  %t434 = load i32, i32* %t802, align 4
  %t820 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 8
  store i32 %t434, i32* %t820, align 4
  %t435 = load i32, i32* %t803, align 4
  %t821 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 9
  store i32 %t435, i32* %t821, align 4
  %t436 = load i32, i32* %t804, align 4
  %t822 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 10
  store i32 %t436, i32* %t822, align 4
  %t437 = load i32, i32* %t805, align 4
  %t823 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 11
  store i32 %t437, i32* %t823, align 4
  %t438 = load i32, i32* %t806, align 4
  %t824 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 12
  store i32 %t438, i32* %t824, align 4
  %t439 = load i32, i32* %t807, align 4
  %t825 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 13
  store i32 %t439, i32* %t825, align 4
  %t440 = load i32, i32* %t808, align 4
  %t826 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 14
  store i32 %t440, i32* %t826, align 4
  %t441 = load i32, i32* %t809, align 4
  %t827 = getelementptr inbounds [16 x i32], [16 x i32]* %t810, i32 0, i32 15
  store i32 %t441, i32* %t827, align 4
  call void @sort(i32* %t812, i32 16)
  %t828 = load i32, i32* %t812, align 4
  %t829 = load i32, i32* %t813, align 4
  %t830 = load i32, i32* %t814, align 4
  %t831 = load i32, i32* %t815, align 4
  %t832 = load i32, i32* %t816, align 4
  %t833 = load i32, i32* %t817, align 4
  %t834 = load i32, i32* %t818, align 4
  %t835 = load i32, i32* %t819, align 4
  %t836 = load i32, i32* %t820, align 4
  %t837 = load i32, i32* %t821, align 4
  %t838 = load i32, i32* %t822, align 4
  %t839 = load i32, i32* %t823, align 4
  %t840 = load i32, i32* %t824, align 4
  %t841 = load i32, i32* %t825, align 4
  %t842 = load i32, i32* %t826, align 4
  %t843 = load i32, i32* %t827, align 4
  %t460 = load i32, i32* %t794, align 4
  %t461 = load i32, i32* %t795, align 4
  %t462 = load i32, i32* %t796, align 4
  %t463 = load i32, i32* %t797, align 4
  %t464 = load i32, i32* %t798, align 4
  %t465 = load i32, i32* %t799, align 4
  %t466 = load i32, i32* %t800, align 4
  %t467 = load i32, i32* %t801, align 4
  %t468 = load i32, i32* %t802, align 4
  %t469 = load i32, i32* %t803, align 4
  %t470 = load i32, i32* %t804, align 4
  %t471 = load i32, i32* %t805, align 4
  %t472 = load i32, i32* %t806, align 4
  %t473 = load i32, i32* %t807, align 4
  %t474 = load i32, i32* %t808, align 4
  %t475 = load i32, i32* %t809, align 4
  %t476 = call i32 @param32_rec(i32 %t828, i32 %t829, i32 %t830, i32 %t831, i32 %t832, i32 %t833, i32 %t834, i32 %t835, i32 %t836, i32 %t837, i32 %t838, i32 %t839, i32 %t840, i32 %t841, i32 %t842, i32 %t843, i32 %t460, i32 %t461, i32 %t462, i32 %t463, i32 %t464, i32 %t465, i32 %t466, i32 %t467, i32 %t468, i32 %t469, i32 %t470, i32 %t471, i32 %t472, i32 %t473, i32 %t474, i32 %t475)
  ret i32 %t476
}
define i32 @main() {
B844:
  %t845 = alloca [32 x [2 x i32]], align 4
  %t846 = bitcast [32 x [2 x i32]]* %t845 to i8*
  call void @llvm.memset.p0.i32(i8* %t846, i8 0, i32 256, i1 0)
  %t477 = call i32 @getint()
  %t478 = call i32 @getint()
  %t479 = call i32 @getint()
  %t480 = call i32 @getint()
  %t481 = call i32 @getint()
  %t482 = call i32 @getint()
  %t483 = call i32 @getint()
  %t484 = call i32 @getint()
  %t485 = call i32 @getint()
  %t486 = call i32 @getint()
  %t487 = call i32 @getint()
  %t488 = call i32 @getint()
  %t489 = call i32 @getint()
  %t490 = call i32 @getint()
  %t491 = call i32 @getint()
  %t492 = call i32 @getint()
  %t493 = call i32 @param16(i32 %t477, i32 %t478, i32 %t479, i32 %t480, i32 %t481, i32 %t482, i32 %t483, i32 %t484, i32 %t485, i32 %t486, i32 %t487, i32 %t488, i32 %t489, i32 %t490, i32 %t491, i32 %t492)
  %t847 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 0
  %t848 = getelementptr inbounds [2 x i32], [2 x i32]* %t847, i32 0, i32 0
  store i32 %t493, i32* %t848, align 4
  %t850 = getelementptr inbounds [2 x i32], [2 x i32]* %t847, i32 0, i32 1
  store i32 8848, i32* %t850, align 4
  br label %B976
B976:                               	; preds = %B844
  %t1117 = add i32 1, 0
  %t497 = icmp slt i32 1, 32
  br i1 %t497, label %B977, label %B981
B977:                               	; preds = %B976, %B1134
  %t501 = sub i32 %t1117, 1
  %t502 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 %t501
  %t982 = getelementptr inbounds [2 x i32], [2 x i32]* %t502, i32 0, i32 1
  %t983 = load i32, i32* %t982, align 4
  %t503 = sub i32 %t983, 1
  %t499 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 %t1117
  %t984 = getelementptr inbounds [2 x i32], [2 x i32]* %t499, i32 0, i32 0
  store i32 %t503, i32* %t984, align 4
  %t985 = getelementptr inbounds [2 x i32], [2 x i32]* %t502, i32 0, i32 0
  %t986 = load i32, i32* %t985, align 4
  %t509 = sub i32 %t986, 2
  %t505 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 %t1117
  %t987 = getelementptr inbounds [2 x i32], [2 x i32]* %t505, i32 0, i32 1
  store i32 %t509, i32* %t987, align 4
  %t512 = add i32 %t1117, 1
  %t989 = icmp slt i32 %t512, 32
  br i1 %t989, label %B1134, label %B992
B981:                               	; preds = %B976
  %t1118 = add i32 1, 0
  br label %B978
B992:                               	; preds = %B977
  %t1118 = add i32 %t512, 0
  br label %B978
B1134:                               	; preds = %B977
  %t1117 = add i32 %t512, 0
  br label %B977
B978:                               	; preds = %B981, %B992
  %t513 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 0
  %t994 = getelementptr inbounds [2 x i32], [2 x i32]* %t513, i32 0, i32 0
  %t514 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 1
  %t996 = getelementptr inbounds [2 x i32], [2 x i32]* %t514, i32 0, i32 0
  %t515 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 2
  %t998 = getelementptr inbounds [2 x i32], [2 x i32]* %t515, i32 0, i32 0
  %t516 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 3
  %t1000 = getelementptr inbounds [2 x i32], [2 x i32]* %t516, i32 0, i32 0
  %t517 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 4
  %t1002 = getelementptr inbounds [2 x i32], [2 x i32]* %t517, i32 0, i32 0
  %t518 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 5
  %t1004 = getelementptr inbounds [2 x i32], [2 x i32]* %t518, i32 0, i32 0
  %t519 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 6
  %t1006 = getelementptr inbounds [2 x i32], [2 x i32]* %t519, i32 0, i32 0
  %t520 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 7
  %t1008 = getelementptr inbounds [2 x i32], [2 x i32]* %t520, i32 0, i32 0
  %t521 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 8
  %t1010 = getelementptr inbounds [2 x i32], [2 x i32]* %t521, i32 0, i32 0
  %t522 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 9
  %t1012 = getelementptr inbounds [2 x i32], [2 x i32]* %t522, i32 0, i32 0
  %t523 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 10
  %t1014 = getelementptr inbounds [2 x i32], [2 x i32]* %t523, i32 0, i32 0
  %t524 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 11
  %t1016 = getelementptr inbounds [2 x i32], [2 x i32]* %t524, i32 0, i32 0
  %t525 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 12
  %t1018 = getelementptr inbounds [2 x i32], [2 x i32]* %t525, i32 0, i32 0
  %t526 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 13
  %t1020 = getelementptr inbounds [2 x i32], [2 x i32]* %t526, i32 0, i32 0
  %t527 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 14
  %t1022 = getelementptr inbounds [2 x i32], [2 x i32]* %t527, i32 0, i32 0
  %t528 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 15
  %t1024 = getelementptr inbounds [2 x i32], [2 x i32]* %t528, i32 0, i32 0
  %t529 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 16
  %t1026 = getelementptr inbounds [2 x i32], [2 x i32]* %t529, i32 0, i32 0
  %t530 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 17
  %t1028 = getelementptr inbounds [2 x i32], [2 x i32]* %t530, i32 0, i32 0
  %t531 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 18
  %t1030 = getelementptr inbounds [2 x i32], [2 x i32]* %t531, i32 0, i32 0
  %t532 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 19
  %t1032 = getelementptr inbounds [2 x i32], [2 x i32]* %t532, i32 0, i32 0
  %t533 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 20
  %t1034 = getelementptr inbounds [2 x i32], [2 x i32]* %t533, i32 0, i32 0
  %t534 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 21
  %t1036 = getelementptr inbounds [2 x i32], [2 x i32]* %t534, i32 0, i32 0
  %t535 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 22
  %t1038 = getelementptr inbounds [2 x i32], [2 x i32]* %t535, i32 0, i32 0
  %t536 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 23
  %t1040 = getelementptr inbounds [2 x i32], [2 x i32]* %t536, i32 0, i32 0
  %t537 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 24
  %t1042 = getelementptr inbounds [2 x i32], [2 x i32]* %t537, i32 0, i32 0
  %t538 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 25
  %t1044 = getelementptr inbounds [2 x i32], [2 x i32]* %t538, i32 0, i32 0
  %t539 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 26
  %t1046 = getelementptr inbounds [2 x i32], [2 x i32]* %t539, i32 0, i32 0
  %t540 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 27
  %t1048 = getelementptr inbounds [2 x i32], [2 x i32]* %t540, i32 0, i32 0
  %t541 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 28
  %t1050 = getelementptr inbounds [2 x i32], [2 x i32]* %t541, i32 0, i32 0
  %t542 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 29
  %t1052 = getelementptr inbounds [2 x i32], [2 x i32]* %t542, i32 0, i32 0
  %t543 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 30
  %t1054 = getelementptr inbounds [2 x i32], [2 x i32]* %t543, i32 0, i32 0
  %t544 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %t845, i32 0, i32 31
  %t1056 = getelementptr inbounds [2 x i32], [2 x i32]* %t544, i32 0, i32 0
  %t545 = call i32 @param32_arr(i32* %t994, i32* %t996, i32* %t998, i32* %t1000, i32* %t1002, i32* %t1004, i32* %t1006, i32* %t1008, i32* %t1010, i32* %t1012, i32* %t1014, i32* %t1016, i32* %t1018, i32* %t1020, i32* %t1022, i32* %t1024, i32* %t1026, i32* %t1028, i32* %t1030, i32* %t1032, i32* %t1034, i32* %t1036, i32* %t1038, i32* %t1040, i32* %t1042, i32* %t1044, i32* %t1046, i32* %t1048, i32* %t1050, i32* %t1052, i32* %t1054, i32* %t1056)
  call void @putint(i32 %t545)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
