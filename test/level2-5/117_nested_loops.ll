@arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer, align 4
@arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer, align 4
define void @loop1(i32 %t2, i32 %t4) {
B284:
  %t285 = alloca i32, align 4
  %t286 = alloca i32, align 4
  store i32 %t2, i32* %t285, align 4
  store i32 %t4, i32* %t286, align 4
  br label %B294
B294:                               	; preds = %B284
  %t15 = load i32, i32* %t285, align 4
  %t756 = add i32 0, 0
  %t727 = add i32 0, 0
  %t702 = add i32 0, 0
  %t681 = add i32 0, 0
  %t664 = add i32 0, 0
  %t651 = add i32 0, 0
  %t642 = add i32 0, 0
  %t16 = icmp slt i32 0, %t15
  br i1 %t16, label %B383, label %B300
B383:                               	; preds = %B294, %B306
  %t380 = load i32, i32* %t286, align 4
  %t381 = icmp slt i32 %t642, %t380
  br i1 %t381, label %B295, label %B389
B300:                               	; preds = %B294
  %t755 = add i32 0, 0
  %t726 = add i32 0, 0
  %t701 = add i32 0, 0
  %t680 = add i32 0, 0
  %t663 = add i32 0, 0
  %t650 = add i32 0, 0
  %t641 = add i32 0, 0
  br label %B296
B295:                               	; preds = %B383
  br label %B304
B389:                               	; preds = %B383
  %t755 = add i32 %t756, 0
  %t726 = add i32 %t727, 0
  %t701 = add i32 %t702, 0
  %t680 = add i32 %t681, 0
  %t663 = add i32 %t664, 0
  %t650 = add i32 %t651, 0
  %t641 = add i32 %t642, 0
  br label %B296
B296:                               	; preds = %B300, %B386, %B389
  ret void
B304:                               	; preds = %B295
  %t752 = add i32 %t756, 0
  %t723 = add i32 %t727, 0
  %t698 = add i32 %t702, 0
  %t677 = add i32 %t681, 0
  %t660 = add i32 %t664, 0
  %t647 = add i32 0, 0
  %t23 = icmp slt i32 0, 2
  br i1 %t23, label %B305, label %B309
B305:                               	; preds = %B304, %B312
  br label %B310
B309:                               	; preds = %B304
  %t753 = add i32 %t756, 0
  %t724 = add i32 %t727, 0
  %t699 = add i32 %t702, 0
  %t678 = add i32 %t681, 0
  %t661 = add i32 %t664, 0
  %t648 = add i32 0, 0
  br label %B306
B310:                               	; preds = %B305
  %t749 = add i32 %t752, 0
  %t720 = add i32 %t723, 0
  %t695 = add i32 %t698, 0
  %t674 = add i32 %t677, 0
  %t657 = add i32 0, 0
  %t26 = icmp slt i32 0, 3
  br i1 %t26, label %B311, label %B315
B306:                               	; preds = %B309, %B375
  %t84 = add i32 %t642, 1
  %t377 = load i32, i32* %t285, align 4
  %t756 = add i32 %t753, 0
  %t727 = add i32 %t724, 0
  %t702 = add i32 %t699, 0
  %t681 = add i32 %t678, 0
  %t664 = add i32 %t661, 0
  %t651 = add i32 %t648, 0
  %t642 = add i32 %t84, 0
  %t378 = icmp slt i32 %t84, %t377
  br i1 %t378, label %B383, label %B386
B311:                               	; preds = %B310, %B318
  br label %B316
B315:                               	; preds = %B310
  %t750 = add i32 %t752, 0
  %t721 = add i32 %t723, 0
  %t696 = add i32 %t698, 0
  %t675 = add i32 %t677, 0
  %t658 = add i32 0, 0
  br label %B312
B386:                               	; preds = %B306
  %t755 = add i32 %t753, 0
  %t726 = add i32 %t724, 0
  %t701 = add i32 %t699, 0
  %t680 = add i32 %t678, 0
  %t663 = add i32 %t661, 0
  %t650 = add i32 %t648, 0
  %t641 = add i32 %t84, 0
  br label %B296
B316:                               	; preds = %B311
  %t746 = add i32 %t749, 0
  %t717 = add i32 %t720, 0
  %t692 = add i32 %t695, 0
  %t671 = add i32 0, 0
  %t29 = icmp slt i32 0, 4
  br i1 %t29, label %B317, label %B321
B312:                               	; preds = %B315, %B370
  %t81 = add i32 %t647, 1
  %t752 = add i32 %t750, 0
  %t723 = add i32 %t721, 0
  %t698 = add i32 %t696, 0
  %t677 = add i32 %t675, 0
  %t660 = add i32 %t658, 0
  %t647 = add i32 %t81, 0
  %t372 = icmp slt i32 %t81, 2
  br i1 %t372, label %B305, label %B375
B317:                               	; preds = %B316, %B324
  br label %B322
B321:                               	; preds = %B316
  %t747 = add i32 %t749, 0
  %t718 = add i32 %t720, 0
  %t693 = add i32 %t695, 0
  %t672 = add i32 0, 0
  br label %B318
B375:                               	; preds = %B312
  %t753 = add i32 %t750, 0
  %t724 = add i32 %t721, 0
  %t699 = add i32 %t696, 0
  %t678 = add i32 %t675, 0
  %t661 = add i32 %t658, 0
  %t648 = add i32 %t81, 0
  br label %B306
B322:                               	; preds = %B317
  %t743 = add i32 %t746, 0
  %t714 = add i32 %t717, 0
  %t689 = add i32 0, 0
  %t32 = icmp slt i32 0, 5
  br i1 %t32, label %B323, label %B327
B318:                               	; preds = %B321, %B365
  %t78 = add i32 %t657, 1
  %t749 = add i32 %t747, 0
  %t720 = add i32 %t718, 0
  %t695 = add i32 %t693, 0
  %t674 = add i32 %t672, 0
  %t657 = add i32 %t78, 0
  %t367 = icmp slt i32 %t78, 3
  br i1 %t367, label %B311, label %B370
B323:                               	; preds = %B322, %B330
  br label %B328
B327:                               	; preds = %B322
  %t744 = add i32 %t746, 0
  %t715 = add i32 %t717, 0
  %t690 = add i32 0, 0
  br label %B324
B370:                               	; preds = %B318
  %t750 = add i32 %t747, 0
  %t721 = add i32 %t718, 0
  %t696 = add i32 %t693, 0
  %t675 = add i32 %t672, 0
  %t658 = add i32 %t78, 0
  br label %B312
B328:                               	; preds = %B323
  %t740 = add i32 %t743, 0
  %t711 = add i32 0, 0
  %t35 = icmp slt i32 0, 6
  br i1 %t35, label %B329, label %B333
B324:                               	; preds = %B327, %B360
  %t75 = add i32 %t671, 1
  %t746 = add i32 %t744, 0
  %t717 = add i32 %t715, 0
  %t692 = add i32 %t690, 0
  %t671 = add i32 %t75, 0
  %t362 = icmp slt i32 %t75, 4
  br i1 %t362, label %B317, label %B365
B329:                               	; preds = %B328, %B336
  br label %B334
B333:                               	; preds = %B328
  %t741 = add i32 %t743, 0
  %t712 = add i32 0, 0
  br label %B330
B365:                               	; preds = %B324
  %t747 = add i32 %t744, 0
  %t718 = add i32 %t715, 0
  %t693 = add i32 %t690, 0
  %t672 = add i32 %t75, 0
  br label %B318
B334:                               	; preds = %B329
  %t737 = add i32 0, 0
  %t38 = icmp slt i32 0, 2
  br i1 %t38, label %B335, label %B339
B330:                               	; preds = %B333, %B355
  %t72 = add i32 %t689, 1
  %t743 = add i32 %t741, 0
  %t714 = add i32 %t712, 0
  %t689 = add i32 %t72, 0
  %t357 = icmp slt i32 %t72, 5
  br i1 %t357, label %B323, label %B360
B335:                               	; preds = %B334, %B1105
  %t49 = add i32 %t642, %t647
  %t51 = add i32 %t49, %t657
  %t53 = add i32 %t51, %t671
  %t55 = add i32 %t53, %t689
  %t57 = add i32 %t55, %t711
  %t59 = add i32 %t57, %t737
  %t60 = load i32, i32* %t285, align 4
  %t61 = add i32 %t59, %t60
  %t62 = load i32, i32* %t286, align 4
  %t63 = add i32 %t61, %t62
  %t46 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %t642
  %t340 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %t46, i32 0, i32 %t647
  %t341 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %t340, i32 0, i32 %t657
  %t342 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %t341, i32 0, i32 %t671
  %t343 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %t342, i32 0, i32 %t689
  %t344 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %t343, i32 0, i32 %t711
  %t345 = getelementptr inbounds [2 x i32], [2 x i32]* %t344, i32 0, i32 %t737
  store i32 %t63, i32* %t345, align 4
  %t66 = add i32 %t737, 1
  %t347 = icmp slt i32 %t66, 2
  br i1 %t347, label %B1105, label %B350
B339:                               	; preds = %B334
  %t738 = add i32 0, 0
  br label %B336
B360:                               	; preds = %B330
  %t744 = add i32 %t741, 0
  %t715 = add i32 %t712, 0
  %t690 = add i32 %t72, 0
  br label %B324
B350:                               	; preds = %B335
  %t738 = add i32 %t66, 0
  br label %B336
B1105:                               	; preds = %B335
  %t737 = add i32 %t66, 0
  br label %B335
B336:                               	; preds = %B339, %B350
  %t69 = add i32 %t711, 1
  %t740 = add i32 %t738, 0
  %t711 = add i32 %t69, 0
  %t352 = icmp slt i32 %t69, 6
  br i1 %t352, label %B329, label %B355
B355:                               	; preds = %B336
  %t741 = add i32 %t738, 0
  %t712 = add i32 %t69, 0
  br label %B330
}
define void @loop2() {
B390:
  br label %B398
B398:                               	; preds = %B390
  %t883 = add i32 0, 0
  %t854 = add i32 0, 0
  %t829 = add i32 0, 0
  %t808 = add i32 0, 0
  %t791 = add i32 0, 0
  %t778 = add i32 0, 0
  %t768 = add i32 0, 0
  %t94 = icmp slt i32 0, 10
  br i1 %t94, label %B399, label %B403
B399:                               	; preds = %B398, %B406
  br label %B404
B403:                               	; preds = %B398
  %t882 = add i32 0, 0
  %t853 = add i32 0, 0
  %t828 = add i32 0, 0
  %t807 = add i32 0, 0
  %t790 = add i32 0, 0
  %t777 = add i32 0, 0
  %t767 = add i32 0, 0
  br label %B400
B404:                               	; preds = %B399
  %t879 = add i32 %t883, 0
  %t850 = add i32 %t854, 0
  %t825 = add i32 %t829, 0
  %t804 = add i32 %t808, 0
  %t787 = add i32 %t791, 0
  %t774 = add i32 0, 0
  %t97 = icmp slt i32 0, 2
  br i1 %t97, label %B405, label %B409
B400:                               	; preds = %B403, %B480
  ret void
B405:                               	; preds = %B404, %B412
  br label %B410
B409:                               	; preds = %B404
  %t878 = add i32 %t883, 0
  %t849 = add i32 %t854, 0
  %t824 = add i32 %t829, 0
  %t803 = add i32 %t808, 0
  %t786 = add i32 %t791, 0
  %t773 = add i32 0, 0
  br label %B406
B410:                               	; preds = %B405
  %t875 = add i32 %t879, 0
  %t846 = add i32 %t850, 0
  %t821 = add i32 %t825, 0
  %t800 = add i32 %t804, 0
  %t783 = add i32 0, 0
  %t100 = icmp slt i32 0, 3
  br i1 %t100, label %B411, label %B415
B406:                               	; preds = %B409, %B475
  %t148 = add i32 %t768, 1
  %t883 = add i32 %t878, 0
  %t854 = add i32 %t849, 0
  %t829 = add i32 %t824, 0
  %t808 = add i32 %t803, 0
  %t791 = add i32 %t786, 0
  %t778 = add i32 %t773, 0
  %t768 = add i32 %t148, 0
  %t477 = icmp slt i32 %t148, 10
  br i1 %t477, label %B399, label %B480
B411:                               	; preds = %B410, %B418
  br label %B416
B415:                               	; preds = %B410
  %t876 = add i32 %t879, 0
  %t847 = add i32 %t850, 0
  %t822 = add i32 %t825, 0
  %t801 = add i32 %t804, 0
  %t784 = add i32 0, 0
  br label %B412
B480:                               	; preds = %B406
  %t882 = add i32 %t878, 0
  %t853 = add i32 %t849, 0
  %t828 = add i32 %t824, 0
  %t807 = add i32 %t803, 0
  %t790 = add i32 %t786, 0
  %t777 = add i32 %t773, 0
  %t767 = add i32 %t148, 0
  br label %B400
B416:                               	; preds = %B411
  %t872 = add i32 %t875, 0
  %t843 = add i32 %t846, 0
  %t818 = add i32 %t821, 0
  %t797 = add i32 0, 0
  %t103 = icmp slt i32 0, 2
  br i1 %t103, label %B417, label %B421
B412:                               	; preds = %B415, %B470
  %t145 = add i32 %t774, 1
  %t879 = add i32 %t876, 0
  %t850 = add i32 %t847, 0
  %t825 = add i32 %t822, 0
  %t804 = add i32 %t801, 0
  %t787 = add i32 %t784, 0
  %t774 = add i32 %t145, 0
  %t472 = icmp slt i32 %t145, 2
  br i1 %t472, label %B405, label %B475
B417:                               	; preds = %B416, %B424
  br label %B422
B421:                               	; preds = %B416
  %t873 = add i32 %t875, 0
  %t844 = add i32 %t846, 0
  %t819 = add i32 %t821, 0
  %t798 = add i32 0, 0
  br label %B418
B475:                               	; preds = %B412
  %t878 = add i32 %t876, 0
  %t849 = add i32 %t847, 0
  %t824 = add i32 %t822, 0
  %t803 = add i32 %t801, 0
  %t786 = add i32 %t784, 0
  %t773 = add i32 %t145, 0
  br label %B406
B422:                               	; preds = %B417
  %t869 = add i32 %t872, 0
  %t840 = add i32 %t843, 0
  %t815 = add i32 0, 0
  %t106 = icmp slt i32 0, 4
  br i1 %t106, label %B423, label %B427
B418:                               	; preds = %B421, %B465
  %t142 = add i32 %t783, 1
  %t875 = add i32 %t873, 0
  %t846 = add i32 %t844, 0
  %t821 = add i32 %t819, 0
  %t800 = add i32 %t798, 0
  %t783 = add i32 %t142, 0
  %t467 = icmp slt i32 %t142, 3
  br i1 %t467, label %B411, label %B470
B423:                               	; preds = %B422, %B430
  br label %B428
B427:                               	; preds = %B422
  %t870 = add i32 %t872, 0
  %t841 = add i32 %t843, 0
  %t816 = add i32 0, 0
  br label %B424
B470:                               	; preds = %B418
  %t876 = add i32 %t873, 0
  %t847 = add i32 %t844, 0
  %t822 = add i32 %t819, 0
  %t801 = add i32 %t798, 0
  %t784 = add i32 %t142, 0
  br label %B412
B428:                               	; preds = %B423
  %t866 = add i32 %t869, 0
  %t837 = add i32 0, 0
  %t109 = icmp slt i32 0, 8
  br i1 %t109, label %B429, label %B433
B424:                               	; preds = %B427, %B460
  %t139 = add i32 %t797, 1
  %t872 = add i32 %t870, 0
  %t843 = add i32 %t841, 0
  %t818 = add i32 %t816, 0
  %t797 = add i32 %t139, 0
  %t462 = icmp slt i32 %t139, 2
  br i1 %t462, label %B417, label %B465
B429:                               	; preds = %B428, %B436
  br label %B434
B433:                               	; preds = %B428
  %t867 = add i32 %t869, 0
  %t838 = add i32 0, 0
  br label %B430
B465:                               	; preds = %B424
  %t873 = add i32 %t870, 0
  %t844 = add i32 %t841, 0
  %t819 = add i32 %t816, 0
  %t798 = add i32 %t139, 0
  br label %B418
B434:                               	; preds = %B429
  %t863 = add i32 0, 0
  %t112 = icmp slt i32 0, 7
  br i1 %t112, label %B435, label %B439
B430:                               	; preds = %B433, %B455
  %t136 = add i32 %t815, 1
  %t869 = add i32 %t867, 0
  %t840 = add i32 %t838, 0
  %t815 = add i32 %t136, 0
  %t457 = icmp slt i32 %t136, 4
  br i1 %t457, label %B423, label %B460
B435:                               	; preds = %B434, %B1169
  %t123 = add i32 %t768, %t774
  %t125 = add i32 %t123, %t797
  %t127 = add i32 %t125, %t863
  %t120 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %t768
  %t440 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %t120, i32 0, i32 %t774
  %t441 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %t440, i32 0, i32 %t783
  %t442 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %t441, i32 0, i32 %t797
  %t443 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %t442, i32 0, i32 %t815
  %t444 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %t443, i32 0, i32 %t837
  %t445 = getelementptr inbounds [7 x i32], [7 x i32]* %t444, i32 0, i32 %t863
  store i32 %t127, i32* %t445, align 4
  %t130 = add i32 %t863, 1
  %t447 = icmp slt i32 %t130, 7
  br i1 %t447, label %B1169, label %B450
B439:                               	; preds = %B434
  %t864 = add i32 0, 0
  br label %B436
B460:                               	; preds = %B430
  %t870 = add i32 %t867, 0
  %t841 = add i32 %t838, 0
  %t816 = add i32 %t136, 0
  br label %B424
B450:                               	; preds = %B435
  %t864 = add i32 %t130, 0
  br label %B436
B1169:                               	; preds = %B435
  %t863 = add i32 %t130, 0
  br label %B435
B436:                               	; preds = %B439, %B450
  %t133 = add i32 %t837, 1
  %t866 = add i32 %t864, 0
  %t837 = add i32 %t133, 0
  %t452 = icmp slt i32 %t133, 8
  br i1 %t452, label %B429, label %B455
B455:                               	; preds = %B436
  %t867 = add i32 %t864, 0
  %t838 = add i32 %t133, 0
  br label %B430
}
define i32 @loop3(i32 %t149, i32 %t151, i32 %t153, i32 %t155, i32 %t157, i32 %t159, i32 %t161) {
B481:
  %t482 = alloca i32, align 4
  %t483 = alloca i32, align 4
  %t484 = alloca i32, align 4
  %t485 = alloca i32, align 4
  %t486 = alloca i32, align 4
  %t487 = alloca i32, align 4
  %t488 = alloca i32, align 4
  store i32 %t149, i32* %t482, align 4
  store i32 %t151, i32* %t483, align 4
  store i32 %t153, i32* %t484, align 4
  store i32 %t155, i32* %t485, align 4
  store i32 %t157, i32* %t486, align 4
  store i32 %t159, i32* %t487, align 4
  store i32 %t161, i32* %t488, align 4
  br label %B497
B497:                               	; preds = %B481
  %t1038 = add i32 0, 0
  %t1008 = add i32 0, 0
  %t979 = add i32 0, 0
  %t954 = add i32 0, 0
  %t933 = add i32 0, 0
  %t916 = add i32 0, 0
  %t903 = add i32 0, 0
  %t894 = add i32 0, 0
  %t173 = icmp slt i32 0, 10
  br i1 %t173, label %B498, label %B502
B498:                               	; preds = %B497, %B620
  br label %B503
B502:                               	; preds = %B497
  %t1037 = add i32 0, 0
  %t1007 = add i32 0, 0
  %t978 = add i32 0, 0
  %t953 = add i32 0, 0
  %t932 = add i32 0, 0
  %t915 = add i32 0, 0
  %t902 = add i32 0, 0
  %t893 = add i32 0, 0
  br label %B499
B503:                               	; preds = %B498
  %t1034 = add i32 %t1038, 0
  %t1004 = add i32 %t1008, 0
  %t975 = add i32 %t979, 0
  %t950 = add i32 %t954, 0
  %t929 = add i32 %t933, 0
  %t912 = add i32 %t916, 0
  %t899 = add i32 0, 0
  %t176 = icmp slt i32 0, 100
  br i1 %t176, label %B504, label %B508
B499:                               	; preds = %B502, %B619, %B629
  ret i32 %t1037
B504:                               	; preds = %B503, %B609
  br label %B509
B508:                               	; preds = %B503
  %t1035 = add i32 %t1038, 0
  %t1005 = add i32 %t1008, 0
  %t976 = add i32 %t979, 0
  %t951 = add i32 %t954, 0
  %t930 = add i32 %t933, 0
  %t913 = add i32 %t916, 0
  %t900 = add i32 0, 0
  br label %B505
B509:                               	; preds = %B504
  %t1031 = add i32 %t1034, 0
  %t1001 = add i32 %t1004, 0
  %t972 = add i32 %t975, 0
  %t947 = add i32 %t950, 0
  %t926 = add i32 %t929, 0
  %t909 = add i32 0, 0
  %t179 = icmp slt i32 0, 1000
  br i1 %t179, label %B510, label %B514
B505:                               	; preds = %B508, %B608, %B618
  %t251 = add i32 %t894, 1
  %t253 = load i32, i32* %t482, align 4
  %t254 = icmp sge i32 %t251, %t253
  br i1 %t254, label %B619, label %B623
B510:                               	; preds = %B509, %B598
  br label %B515
B514:                               	; preds = %B509
  %t1032 = add i32 %t1034, 0
  %t1002 = add i32 %t1004, 0
  %t973 = add i32 %t975, 0
  %t948 = add i32 %t950, 0
  %t927 = add i32 %t929, 0
  %t910 = add i32 0, 0
  br label %B511
B619:                               	; preds = %B505
  %t1037 = add i32 %t1035, 0
  %t1007 = add i32 %t1005, 0
  %t978 = add i32 %t976, 0
  %t953 = add i32 %t951, 0
  %t932 = add i32 %t930, 0
  %t915 = add i32 %t913, 0
  %t902 = add i32 %t900, 0
  %t893 = add i32 %t251, 0
  br label %B499
B623:                               	; preds = %B505
  br label %B620
B515:                               	; preds = %B510
  %t1028 = add i32 %t1031, 0
  %t998 = add i32 %t1001, 0
  %t969 = add i32 %t972, 0
  %t944 = add i32 %t947, 0
  %t923 = add i32 0, 0
  %t182 = icmp slt i32 0, 10000
  br i1 %t182, label %B516, label %B520
B511:                               	; preds = %B514, %B597, %B607
  %t245 = add i32 %t899, 1
  %t247 = load i32, i32* %t483, align 4
  %t248 = icmp sge i32 %t245, %t247
  br i1 %t248, label %B608, label %B612
B620:                               	; preds = %B623
  %t1038 = add i32 %t1035, 0
  %t1008 = add i32 %t1005, 0
  %t979 = add i32 %t976, 0
  %t954 = add i32 %t951, 0
  %t933 = add i32 %t930, 0
  %t916 = add i32 %t913, 0
  %t903 = add i32 %t900, 0
  %t894 = add i32 %t251, 0
  %t626 = icmp slt i32 %t251, 10
  br i1 %t626, label %B498, label %B629
B516:                               	; preds = %B515, %B587
  br label %B521
B520:                               	; preds = %B515
  %t1029 = add i32 %t1031, 0
  %t999 = add i32 %t1001, 0
  %t970 = add i32 %t972, 0
  %t945 = add i32 %t947, 0
  %t924 = add i32 0, 0
  br label %B517
B608:                               	; preds = %B511
  %t1035 = add i32 %t1032, 0
  %t1005 = add i32 %t1002, 0
  %t976 = add i32 %t973, 0
  %t951 = add i32 %t948, 0
  %t930 = add i32 %t927, 0
  %t913 = add i32 %t910, 0
  %t900 = add i32 %t245, 0
  br label %B505
B612:                               	; preds = %B511
  br label %B609
B629:                               	; preds = %B620
  %t1037 = add i32 %t1035, 0
  %t1007 = add i32 %t1005, 0
  %t978 = add i32 %t976, 0
  %t953 = add i32 %t951, 0
  %t932 = add i32 %t930, 0
  %t915 = add i32 %t913, 0
  %t902 = add i32 %t900, 0
  %t893 = add i32 %t251, 0
  br label %B499
B521:                               	; preds = %B516
  %t1025 = add i32 %t1028, 0
  %t995 = add i32 %t998, 0
  %t966 = add i32 %t969, 0
  %t941 = add i32 0, 0
  %t185 = icmp slt i32 0, 100000
  br i1 %t185, label %B522, label %B526
B517:                               	; preds = %B520, %B586, %B596
  %t239 = add i32 %t909, 1
  %t241 = load i32, i32* %t484, align 4
  %t242 = icmp sge i32 %t239, %t241
  br i1 %t242, label %B597, label %B601
B609:                               	; preds = %B612
  %t1034 = add i32 %t1032, 0
  %t1004 = add i32 %t1002, 0
  %t975 = add i32 %t973, 0
  %t950 = add i32 %t948, 0
  %t929 = add i32 %t927, 0
  %t912 = add i32 %t910, 0
  %t899 = add i32 %t245, 0
  %t615 = icmp slt i32 %t245, 100
  br i1 %t615, label %B504, label %B618
B522:                               	; preds = %B521, %B576
  br label %B527
B526:                               	; preds = %B521
  %t1026 = add i32 %t1028, 0
  %t996 = add i32 %t998, 0
  %t967 = add i32 %t969, 0
  %t942 = add i32 0, 0
  br label %B523
B597:                               	; preds = %B517
  %t1032 = add i32 %t1029, 0
  %t1002 = add i32 %t999, 0
  %t973 = add i32 %t970, 0
  %t948 = add i32 %t945, 0
  %t927 = add i32 %t924, 0
  %t910 = add i32 %t239, 0
  br label %B511
B601:                               	; preds = %B517
  br label %B598
B618:                               	; preds = %B609
  %t1035 = add i32 %t1032, 0
  %t1005 = add i32 %t1002, 0
  %t976 = add i32 %t973, 0
  %t951 = add i32 %t948, 0
  %t930 = add i32 %t927, 0
  %t913 = add i32 %t910, 0
  %t900 = add i32 %t245, 0
  br label %B505
B527:                               	; preds = %B522
  %t1022 = add i32 %t1025, 0
  %t992 = add i32 %t995, 0
  %t963 = add i32 0, 0
  %t188 = icmp slt i32 0, 1000000
  br i1 %t188, label %B528, label %B532
B523:                               	; preds = %B526, %B575, %B585
  %t233 = add i32 %t923, 1
  %t235 = load i32, i32* %t485, align 4
  %t236 = icmp sge i32 %t233, %t235
  br i1 %t236, label %B586, label %B590
B598:                               	; preds = %B601
  %t1031 = add i32 %t1029, 0
  %t1001 = add i32 %t999, 0
  %t972 = add i32 %t970, 0
  %t947 = add i32 %t945, 0
  %t926 = add i32 %t924, 0
  %t909 = add i32 %t239, 0
  %t604 = icmp slt i32 %t239, 1000
  br i1 %t604, label %B510, label %B607
B528:                               	; preds = %B527, %B565
  br label %B533
B532:                               	; preds = %B527
  %t1023 = add i32 %t1025, 0
  %t993 = add i32 %t995, 0
  %t964 = add i32 0, 0
  br label %B529
B586:                               	; preds = %B523
  %t1029 = add i32 %t1026, 0
  %t999 = add i32 %t996, 0
  %t970 = add i32 %t967, 0
  %t945 = add i32 %t942, 0
  %t924 = add i32 %t233, 0
  br label %B517
B590:                               	; preds = %B523
  br label %B587
B607:                               	; preds = %B598
  %t1032 = add i32 %t1029, 0
  %t1002 = add i32 %t999, 0
  %t973 = add i32 %t970, 0
  %t948 = add i32 %t945, 0
  %t927 = add i32 %t924, 0
  %t910 = add i32 %t239, 0
  br label %B511
B533:                               	; preds = %B528
  %t1019 = add i32 %t1022, 0
  %t989 = add i32 0, 0
  %t191 = icmp slt i32 0, 10000000
  br i1 %t191, label %B534, label %B538
B529:                               	; preds = %B532, %B564, %B574
  %t227 = add i32 %t941, 1
  %t229 = load i32, i32* %t486, align 4
  %t230 = icmp sge i32 %t227, %t229
  br i1 %t230, label %B575, label %B579
B587:                               	; preds = %B590
  %t1028 = add i32 %t1026, 0
  %t998 = add i32 %t996, 0
  %t969 = add i32 %t967, 0
  %t944 = add i32 %t942, 0
  %t923 = add i32 %t233, 0
  %t593 = icmp slt i32 %t233, 10000
  br i1 %t593, label %B516, label %B596
B534:                               	; preds = %B533, %B554
  %t194 = srem i32 %t1019, 817
  %t202 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %t894
  %t539 = getelementptr inbounds [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]* %t202, i32 0, i32 %t899
  %t540 = getelementptr inbounds [3 x [4 x [5 x [6 x [2 x i32]]]]], [3 x [4 x [5 x [6 x [2 x i32]]]]]* %t539, i32 0, i32 %t909
  %t541 = getelementptr inbounds [4 x [5 x [6 x [2 x i32]]]], [4 x [5 x [6 x [2 x i32]]]]* %t540, i32 0, i32 %t923
  %t542 = getelementptr inbounds [5 x [6 x [2 x i32]]], [5 x [6 x [2 x i32]]]* %t541, i32 0, i32 %t941
  %t543 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %t542, i32 0, i32 %t963
  %t544 = getelementptr inbounds [2 x i32], [2 x i32]* %t543, i32 0, i32 %t989
  %t545 = load i32, i32* %t544, align 4
  %t203 = add i32 %t194, %t545
  %t211 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %t894
  %t546 = getelementptr inbounds [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]* %t211, i32 0, i32 %t899
  %t547 = getelementptr inbounds [3 x [2 x [4 x [8 x [7 x i32]]]]], [3 x [2 x [4 x [8 x [7 x i32]]]]]* %t546, i32 0, i32 %t909
  %t548 = getelementptr inbounds [2 x [4 x [8 x [7 x i32]]]], [2 x [4 x [8 x [7 x i32]]]]* %t547, i32 0, i32 %t923
  %t549 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* %t548, i32 0, i32 %t941
  %t550 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %t549, i32 0, i32 %t963
  %t551 = getelementptr inbounds [7 x i32], [7 x i32]* %t550, i32 0, i32 %t989
  %t552 = load i32, i32* %t551, align 4
  %t212 = add i32 %t203, %t552
  %t215 = add i32 %t989, 1
  %t217 = load i32, i32* %t488, align 4
  %t218 = icmp sge i32 %t215, %t217
  br i1 %t218, label %B553, label %B557
B538:                               	; preds = %B533
  %t1020 = add i32 %t1022, 0
  %t990 = add i32 0, 0
  br label %B535
B575:                               	; preds = %B529
  %t1026 = add i32 %t1023, 0
  %t996 = add i32 %t993, 0
  %t967 = add i32 %t964, 0
  %t942 = add i32 %t227, 0
  br label %B523
B579:                               	; preds = %B529
  br label %B576
B596:                               	; preds = %B587
  %t1029 = add i32 %t1026, 0
  %t999 = add i32 %t996, 0
  %t970 = add i32 %t967, 0
  %t945 = add i32 %t942, 0
  %t924 = add i32 %t233, 0
  br label %B517
B553:                               	; preds = %B534
  %t1020 = add i32 %t212, 0
  %t990 = add i32 %t215, 0
  br label %B535
B557:                               	; preds = %B534
  br label %B554
B535:                               	; preds = %B538, %B553, %B563
  %t221 = add i32 %t963, 1
  %t223 = load i32, i32* %t487, align 4
  %t224 = icmp sge i32 %t221, %t223
  br i1 %t224, label %B564, label %B568
B576:                               	; preds = %B579
  %t1025 = add i32 %t1023, 0
  %t995 = add i32 %t993, 0
  %t966 = add i32 %t964, 0
  %t941 = add i32 %t227, 0
  %t582 = icmp slt i32 %t227, 100000
  br i1 %t582, label %B522, label %B585
B554:                               	; preds = %B557
  %t1019 = add i32 %t212, 0
  %t989 = add i32 %t215, 0
  %t560 = icmp slt i32 %t215, 10000000
  br i1 %t560, label %B534, label %B563
B564:                               	; preds = %B535
  %t1023 = add i32 %t1020, 0
  %t993 = add i32 %t990, 0
  %t964 = add i32 %t221, 0
  br label %B529
B568:                               	; preds = %B535
  br label %B565
B585:                               	; preds = %B576
  %t1026 = add i32 %t1023, 0
  %t996 = add i32 %t993, 0
  %t967 = add i32 %t964, 0
  %t942 = add i32 %t227, 0
  br label %B523
B563:                               	; preds = %B554
  %t1020 = add i32 %t212, 0
  %t990 = add i32 %t215, 0
  br label %B535
B565:                               	; preds = %B568
  %t1022 = add i32 %t1020, 0
  %t992 = add i32 %t990, 0
  %t963 = add i32 %t221, 0
  %t571 = icmp slt i32 %t221, 1000000
  br i1 %t571, label %B528, label %B574
B574:                               	; preds = %B565
  %t1023 = add i32 %t1020, 0
  %t993 = add i32 %t990, 0
  %t964 = add i32 %t221, 0
  br label %B529
}
define i32 @main() {
B630:
  %t256 = call i32 @getint()
  %t258 = call i32 @getint()
  %t260 = call i32 @getint()
  %t262 = call i32 @getint()
  %t264 = call i32 @getint()
  %t266 = call i32 @getint()
  %t268 = call i32 @getint()
  %t270 = call i32 @getint()
  %t272 = call i32 @getint()
  call void @loop1(i32 %t256, i32 %t258)
  call void @loop2()
  %t283 = call i32 @loop3(i32 %t260, i32 %t262, i32 %t264, i32 %t266, i32 %t268, i32 %t270, i32 %t272)
  ret i32 %t283
}
declare i32 @getint()
