@SHIFT_TABLE = global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 4
define i32 @long_func() {
B2856:
  %t2857 = alloca i32, align 4
  %t2858 = alloca i32, align 4
  %t2859 = alloca i32, align 4
  %t2860 = alloca i32, align 4
  %t2861 = alloca i32, align 4
  %t2862 = alloca i32, align 4
  %t2863 = alloca i32, align 4
  %t2864 = alloca i32, align 4
  %t2897 = alloca i32, align 4
  %t2898 = alloca i32, align 4
  %t2899 = alloca i32, align 4
  %t2932 = alloca i32, align 4
  %t2933 = alloca i32, align 4
  %t2934 = alloca i32, align 4
  %t3024 = alloca i32, align 4
  %t3025 = alloca i32, align 4
  %t3026 = alloca i32, align 4
  %t3148 = alloca i32, align 4
  %t3149 = alloca i32, align 4
  %t3150 = alloca i32, align 4
  %t3183 = alloca i32, align 4
  %t3184 = alloca i32, align 4
  %t3185 = alloca i32, align 4
  %t3275 = alloca i32, align 4
  %t3276 = alloca i32, align 4
  %t3277 = alloca i32, align 4
  %t3431 = alloca i32, align 4
  %t3432 = alloca i32, align 4
  %t3433 = alloca i32, align 4
  %t3466 = alloca i32, align 4
  %t3467 = alloca i32, align 4
  %t3468 = alloca i32, align 4
  %t3501 = alloca i32, align 4
  %t3502 = alloca i32, align 4
  %t3503 = alloca i32, align 4
  %t3593 = alloca i32, align 4
  %t3594 = alloca i32, align 4
  %t3595 = alloca i32, align 4
  %t3717 = alloca i32, align 4
  %t3718 = alloca i32, align 4
  %t3719 = alloca i32, align 4
  %t3752 = alloca i32, align 4
  %t3753 = alloca i32, align 4
  %t3754 = alloca i32, align 4
  %t3844 = alloca i32, align 4
  %t3845 = alloca i32, align 4
  %t3846 = alloca i32, align 4
  %t4006 = alloca i32, align 4
  %t4007 = alloca i32, align 4
  %t4008 = alloca i32, align 4
  %t4041 = alloca i32, align 4
  %t4042 = alloca i32, align 4
  %t4043 = alloca i32, align 4
  %t4076 = alloca i32, align 4
  %t4077 = alloca i32, align 4
  %t4078 = alloca i32, align 4
  %t4168 = alloca i32, align 4
  %t4169 = alloca i32, align 4
  %t4170 = alloca i32, align 4
  %t4292 = alloca i32, align 4
  %t4293 = alloca i32, align 4
  %t4294 = alloca i32, align 4
  %t4327 = alloca i32, align 4
  %t4328 = alloca i32, align 4
  %t4329 = alloca i32, align 4
  %t4419 = alloca i32, align 4
  %t4420 = alloca i32, align 4
  %t4421 = alloca i32, align 4
  %t4586 = alloca i32, align 4
  %t4587 = alloca i32, align 4
  %t4588 = alloca i32, align 4
  %t4621 = alloca i32, align 4
  %t4622 = alloca i32, align 4
  %t4623 = alloca i32, align 4
  %t4656 = alloca i32, align 4
  %t4657 = alloca i32, align 4
  %t4658 = alloca i32, align 4
  %t4748 = alloca i32, align 4
  %t4749 = alloca i32, align 4
  %t4750 = alloca i32, align 4
  %t4872 = alloca i32, align 4
  %t4873 = alloca i32, align 4
  %t4874 = alloca i32, align 4
  %t4907 = alloca i32, align 4
  %t4908 = alloca i32, align 4
  %t4909 = alloca i32, align 4
  %t4999 = alloca i32, align 4
  %t5000 = alloca i32, align 4
  %t5001 = alloca i32, align 4
  store i32 2, i32* %t2862, align 4
  store i32 0, i32* %t2863, align 4
  store i32 1, i32* %t2864, align 4
  br label %B2865
B2865:                               	; preds = %B2856
  %t9 = load i32, i32* %t2863, align 4
  %t10 = icmp sgt i32 %t9, 0
  br i1 %t10, label %B2866, label %B2870
B2866:                               	; preds = %B2865, %B3401
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t14 = load i32, i32* %t2863, align 4
  store i32 %t14, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B2871
B2870:                               	; preds = %B2865
  br label %B2867
B2871:                               	; preds = %B2866
  %t16 = load i32, i32* %t2858, align 4
  %t17 = icmp slt i32 %t16, 16
  br i1 %t17, label %B2872, label %B2876
B2867:                               	; preds = %B2870, %B3430
  %t712 = load i32, i32* %t2864, align 4
  store i32 %t712, i32* %t2857, align 4
  %t713 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t713)
  call void @putch(i32 10)
  store i32 2, i32* %t3431, align 4
  store i32 1, i32* %t3432, align 4
  store i32 1, i32* %t3433, align 4
  br label %B3434
B2872:                               	; preds = %B2871, %B2878
  %t18 = load i32, i32* %t2859, align 4
  %t19 = srem i32 %t18, 2
  %t23 = icmp ne i32 %t19, 0
  br i1 %t23, label %B2879, label %B2881
B2876:                               	; preds = %B2871
  br label %B2873
B3434:                               	; preds = %B2867
  %t717 = load i32, i32* %t3432, align 4
  %t718 = icmp sgt i32 %t717, 0
  br i1 %t718, label %B3435, label %B3439
B2879:                               	; preds = %B2872
  %t20 = load i32, i32* %t2860, align 4
  %t21 = srem i32 %t20, 2
  %t24 = icmp ne i32 %t21, 0
  br i1 %t24, label %B2877, label %B2884
B2881:                               	; preds = %B2872
  br label %B2878
B2873:                               	; preds = %B2876, %B2891
  %t40 = load i32, i32* %t2857, align 4
  %t358 = icmp ne i32 %t40, 0
  br i1 %t358, label %B2892, label %B2895
B3435:                               	; preds = %B3434, %B3970
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t722 = load i32, i32* %t3432, align 4
  store i32 %t722, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3440
B3439:                               	; preds = %B3434
  br label %B3436
B2877:                               	; preds = %B2879
  %t26 = load i32, i32* %t2857, align 4
  %t27 = load i32, i32* %t2858, align 4
  %t28 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t27
  %t2886 = load i32, i32* %t28, align 4
  %t29 = mul i32 1, %t2886
  %t30 = add i32 %t26, %t29
  store i32 %t30, i32* %t2857, align 4
  br label %B2878
B2884:                               	; preds = %B2879
  br label %B2878
B2878:                               	; preds = %B2877, %B2881, %B2884
  %t32 = load i32, i32* %t2859, align 4
  %t33 = sdiv i32 %t32, 2
  store i32 %t33, i32* %t2859, align 4
  %t35 = load i32, i32* %t2860, align 4
  %t36 = sdiv i32 %t35, 2
  store i32 %t36, i32* %t2860, align 4
  %t38 = load i32, i32* %t2858, align 4
  %t39 = add i32 %t38, 1
  store i32 %t39, i32* %t2858, align 4
  %t2887 = load i32, i32* %t2858, align 4
  %t2888 = icmp slt i32 %t2887, 16
  br i1 %t2888, label %B2872, label %B2891
B2892:                               	; preds = %B2873
  %t41 = load i32, i32* %t2864, align 4
  store i32 %t41, i32* %t2897, align 4
  %t43 = load i32, i32* %t2862, align 4
  store i32 %t43, i32* %t2898, align 4
  store i32 0, i32* %t2899, align 4
  br label %B2900
B2895:                               	; preds = %B2873
  br label %B2893
B3440:                               	; preds = %B3435
  %t724 = load i32, i32* %t2858, align 4
  %t725 = icmp slt i32 %t724, 16
  br i1 %t725, label %B3441, label %B3445
B3436:                               	; preds = %B3439, %B3999
  %t1420 = load i32, i32* %t3433, align 4
  store i32 %t1420, i32* %t2857, align 4
  %t1421 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t1421)
  call void @putch(i32 10)
  store i32 2, i32* %t2861, align 4
  br label %B4000
B2891:                               	; preds = %B2878
  br label %B2873
B2900:                               	; preds = %B2892
  %t46 = load i32, i32* %t2898, align 4
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %B2901, label %B2904
B2893:                               	; preds = %B2895, %B2902
  %t359 = load i32, i32* %t2862, align 4
  store i32 %t359, i32* %t3148, align 4
  %t361 = load i32, i32* %t2862, align 4
  store i32 %t361, i32* %t3149, align 4
  store i32 0, i32* %t3150, align 4
  br label %B3151
B3441:                               	; preds = %B3440, %B3447
  %t726 = load i32, i32* %t2859, align 4
  %t727 = srem i32 %t726, 2
  %t731 = icmp ne i32 %t727, 0
  br i1 %t731, label %B3448, label %B3450
B3445:                               	; preds = %B3440
  br label %B3442
B4000:                               	; preds = %B3436
  %t1423 = load i32, i32* %t2861, align 4
  %t1424 = icmp slt i32 %t1423, 16
  br i1 %t1424, label %B4001, label %B4005
B2901:                               	; preds = %B2900, %B3118
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t51 = load i32, i32* %t2898, align 4
  store i32 %t51, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B2906
B2904:                               	; preds = %B2900
  br label %B2902
B3151:                               	; preds = %B2893
  %t364 = load i32, i32* %t3149, align 4
  %t365 = icmp ne i32 %t364, 0
  br i1 %t365, label %B3152, label %B3155
B3448:                               	; preds = %B3441
  %t728 = load i32, i32* %t2860, align 4
  %t729 = srem i32 %t728, 2
  %t732 = icmp ne i32 %t729, 0
  br i1 %t732, label %B3446, label %B3453
B3450:                               	; preds = %B3441
  br label %B3447
B3442:                               	; preds = %B3445, %B3460
  %t748 = load i32, i32* %t2857, align 4
  %t1066 = icmp ne i32 %t748, 0
  br i1 %t1066, label %B3461, label %B3464
B4001:                               	; preds = %B4000, %B4011
  store i32 2, i32* %t4006, align 4
  %t1426 = load i32, i32* %t2861, align 4
  store i32 %t1426, i32* %t4007, align 4
  store i32 1, i32* %t4008, align 4
  br label %B4009
B4005:                               	; preds = %B4000
  br label %B4002
B2906:                               	; preds = %B2901
  %t53 = load i32, i32* %t2858, align 4
  %t54 = icmp slt i32 %t53, 16
  br i1 %t54, label %B2907, label %B2911
B2902:                               	; preds = %B2904, %B3146
  %t355 = load i32, i32* %t2899, align 4
  store i32 %t355, i32* %t2857, align 4
  %t357 = load i32, i32* %t2857, align 4
  store i32 %t357, i32* %t2864, align 4
  br label %B2893
B3152:                               	; preds = %B3151, %B3369
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t369 = load i32, i32* %t3149, align 4
  store i32 %t369, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3157
B3155:                               	; preds = %B3151
  br label %B3153
B3446:                               	; preds = %B3448
  %t734 = load i32, i32* %t2857, align 4
  %t735 = load i32, i32* %t2858, align 4
  %t736 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t735
  %t3455 = load i32, i32* %t736, align 4
  %t737 = mul i32 1, %t3455
  %t738 = add i32 %t734, %t737
  store i32 %t738, i32* %t2857, align 4
  br label %B3447
B3453:                               	; preds = %B3448
  br label %B3447
B3447:                               	; preds = %B3446, %B3450, %B3453
  %t740 = load i32, i32* %t2859, align 4
  %t741 = sdiv i32 %t740, 2
  store i32 %t741, i32* %t2859, align 4
  %t743 = load i32, i32* %t2860, align 4
  %t744 = sdiv i32 %t743, 2
  store i32 %t744, i32* %t2860, align 4
  %t746 = load i32, i32* %t2858, align 4
  %t747 = add i32 %t746, 1
  store i32 %t747, i32* %t2858, align 4
  %t3456 = load i32, i32* %t2858, align 4
  %t3457 = icmp slt i32 %t3456, 16
  br i1 %t3457, label %B3441, label %B3460
B3461:                               	; preds = %B3442
  %t749 = load i32, i32* %t3433, align 4
  store i32 %t749, i32* %t3466, align 4
  %t751 = load i32, i32* %t3431, align 4
  store i32 %t751, i32* %t3467, align 4
  store i32 0, i32* %t3468, align 4
  br label %B3469
B3464:                               	; preds = %B3442
  br label %B3462
B4009:                               	; preds = %B4001
  %t1429 = load i32, i32* %t4007, align 4
  %t1430 = icmp sgt i32 %t1429, 0
  br i1 %t1430, label %B4010, label %B4014
B4002:                               	; preds = %B4005, %B4579
  store i32 0, i32* %t2861, align 4
  br label %B4580
B2907:                               	; preds = %B2906, %B2913
  %t55 = load i32, i32* %t2859, align 4
  %t56 = srem i32 %t55, 2
  %t60 = icmp ne i32 %t56, 0
  br i1 %t60, label %B2914, label %B2916
B2911:                               	; preds = %B2906
  br label %B2908
B3157:                               	; preds = %B3152
  %t371 = load i32, i32* %t2858, align 4
  %t372 = icmp slt i32 %t371, 16
  br i1 %t372, label %B3158, label %B3162
B3153:                               	; preds = %B3155, %B3397
  %t673 = load i32, i32* %t3150, align 4
  store i32 %t673, i32* %t2857, align 4
  %t675 = load i32, i32* %t2857, align 4
  store i32 %t675, i32* %t2862, align 4
  %t677 = load i32, i32* %t2863, align 4
  store i32 %t677, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t679 = load i32, i32* %t2860, align 4
  %t680 = icmp sge i32 %t679, 15
  br i1 %t680, label %B3399, label %B3404
B3460:                               	; preds = %B3447
  br label %B3442
B3469:                               	; preds = %B3461
  %t754 = load i32, i32* %t3467, align 4
  %t755 = icmp ne i32 %t754, 0
  br i1 %t755, label %B3470, label %B3473
B3462:                               	; preds = %B3464, %B3471
  %t1067 = load i32, i32* %t3431, align 4
  store i32 %t1067, i32* %t3717, align 4
  %t1069 = load i32, i32* %t3431, align 4
  store i32 %t1069, i32* %t3718, align 4
  store i32 0, i32* %t3719, align 4
  br label %B3720
B4010:                               	; preds = %B4009, %B4545
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1434 = load i32, i32* %t4007, align 4
  store i32 %t1434, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4015
B4014:                               	; preds = %B4009
  br label %B4011
B4580:                               	; preds = %B4002
  %t2138 = load i32, i32* %t2861, align 4
  %t2139 = icmp slt i32 %t2138, 16
  br i1 %t2139, label %B4581, label %B4585
B2914:                               	; preds = %B2907
  %t57 = load i32, i32* %t2860, align 4
  %t58 = srem i32 %t57, 2
  %t61 = icmp ne i32 %t58, 0
  br i1 %t61, label %B2912, label %B2919
B2916:                               	; preds = %B2907
  br label %B2913
B2908:                               	; preds = %B2911, %B2926
  %t77 = load i32, i32* %t2857, align 4
  %t198 = icmp ne i32 %t77, 0
  br i1 %t198, label %B2927, label %B2930
B3158:                               	; preds = %B3157, %B3164
  %t373 = load i32, i32* %t2859, align 4
  %t374 = srem i32 %t373, 2
  %t378 = icmp ne i32 %t374, 0
  br i1 %t378, label %B3165, label %B3167
B3162:                               	; preds = %B3157
  br label %B3159
B3399:                               	; preds = %B3153
  %t681 = load i32, i32* %t2859, align 4
  %t682 = icmp slt i32 %t681, 0
  br i1 %t682, label %B3405, label %B3410
B3404:                               	; preds = %B3153
  br label %B3400
B3470:                               	; preds = %B3469, %B3687
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t759 = load i32, i32* %t3467, align 4
  store i32 %t759, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3475
B3473:                               	; preds = %B3469
  br label %B3471
B3720:                               	; preds = %B3462
  %t1072 = load i32, i32* %t3718, align 4
  %t1073 = icmp ne i32 %t1072, 0
  br i1 %t1073, label %B3721, label %B3724
B4015:                               	; preds = %B4010
  %t1436 = load i32, i32* %t2858, align 4
  %t1437 = icmp slt i32 %t1436, 16
  br i1 %t1437, label %B4016, label %B4020
B4011:                               	; preds = %B4014, %B4574
  %t2132 = load i32, i32* %t4008, align 4
  store i32 %t2132, i32* %t2857, align 4
  %t2133 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t2133)
  call void @putch(i32 10)
  %t2135 = load i32, i32* %t2861, align 4
  %t2136 = add i32 %t2135, 1
  store i32 %t2136, i32* %t2861, align 4
  %t4575 = load i32, i32* %t2861, align 4
  %t4576 = icmp slt i32 %t4575, 16
  br i1 %t4576, label %B4001, label %B4579
B4581:                               	; preds = %B4580, %B5156
  store i32 2, i32* %t4586, align 4
  %t2141 = load i32, i32* %t2861, align 4
  store i32 %t2141, i32* %t4587, align 4
  store i32 1, i32* %t4588, align 4
  br label %B4589
B4585:                               	; preds = %B4580
  br label %B4582
B2912:                               	; preds = %B2914
  %t63 = load i32, i32* %t2857, align 4
  %t64 = load i32, i32* %t2858, align 4
  %t65 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t64
  %t2921 = load i32, i32* %t65, align 4
  %t66 = mul i32 1, %t2921
  %t67 = add i32 %t63, %t66
  store i32 %t67, i32* %t2857, align 4
  br label %B2913
B2919:                               	; preds = %B2914
  br label %B2913
B2913:                               	; preds = %B2912, %B2916, %B2919
  %t69 = load i32, i32* %t2859, align 4
  %t70 = sdiv i32 %t69, 2
  store i32 %t70, i32* %t2859, align 4
  %t72 = load i32, i32* %t2860, align 4
  %t73 = sdiv i32 %t72, 2
  store i32 %t73, i32* %t2860, align 4
  %t75 = load i32, i32* %t2858, align 4
  %t76 = add i32 %t75, 1
  store i32 %t76, i32* %t2858, align 4
  %t2922 = load i32, i32* %t2858, align 4
  %t2923 = icmp slt i32 %t2922, 16
  br i1 %t2923, label %B2907, label %B2926
B2927:                               	; preds = %B2908
  %t78 = load i32, i32* %t2899, align 4
  store i32 %t78, i32* %t2932, align 4
  %t80 = load i32, i32* %t2897, align 4
  store i32 %t80, i32* %t2933, align 4
  br label %B2935
B2930:                               	; preds = %B2908
  br label %B2928
B3165:                               	; preds = %B3158
  %t375 = load i32, i32* %t2860, align 4
  %t376 = srem i32 %t375, 2
  %t379 = icmp ne i32 %t376, 0
  br i1 %t379, label %B3163, label %B3170
B3167:                               	; preds = %B3158
  br label %B3164
B3159:                               	; preds = %B3162, %B3177
  %t395 = load i32, i32* %t2857, align 4
  %t516 = icmp ne i32 %t395, 0
  br i1 %t516, label %B3178, label %B3181
B3405:                               	; preds = %B3399
  store i32 65535, i32* %t2857, align 4
  br label %B3407
B3410:                               	; preds = %B3399
  br label %B3406
B3400:                               	; preds = %B3404
  %t685 = load i32, i32* %t2860, align 4
  %t686 = icmp sgt i32 %t685, 0
  br i1 %t686, label %B3411, label %B3416
B3475:                               	; preds = %B3470
  %t761 = load i32, i32* %t2858, align 4
  %t762 = icmp slt i32 %t761, 16
  br i1 %t762, label %B3476, label %B3480
B3471:                               	; preds = %B3473, %B3715
  %t1063 = load i32, i32* %t3468, align 4
  store i32 %t1063, i32* %t2857, align 4
  %t1065 = load i32, i32* %t2857, align 4
  store i32 %t1065, i32* %t3433, align 4
  br label %B3462
B3721:                               	; preds = %B3720, %B3938
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1077 = load i32, i32* %t3718, align 4
  store i32 %t1077, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3726
B3724:                               	; preds = %B3720
  br label %B3722
B4016:                               	; preds = %B4015, %B4022
  %t1438 = load i32, i32* %t2859, align 4
  %t1439 = srem i32 %t1438, 2
  %t1443 = icmp ne i32 %t1439, 0
  br i1 %t1443, label %B4023, label %B4025
B4020:                               	; preds = %B4015
  br label %B4017
B4579:                               	; preds = %B4011
  br label %B4002
B4589:                               	; preds = %B4581
  %t2144 = load i32, i32* %t4587, align 4
  %t2145 = icmp sgt i32 %t2144, 0
  br i1 %t2145, label %B4590, label %B4594
B4582:                               	; preds = %B4585, %B5165
  ret i32 0
B2926:                               	; preds = %B2913
  br label %B2908
B2935:                               	; preds = %B2927
  %t83 = load i32, i32* %t2933, align 4
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %B2936, label %B2939
B2928:                               	; preds = %B2930, %B2937
  %t199 = load i32, i32* %t2897, align 4
  store i32 %t199, i32* %t3024, align 4
  %t201 = load i32, i32* %t2897, align 4
  store i32 %t201, i32* %t3025, align 4
  br label %B3027
B3163:                               	; preds = %B3165
  %t381 = load i32, i32* %t2857, align 4
  %t382 = load i32, i32* %t2858, align 4
  %t383 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t382
  %t3172 = load i32, i32* %t383, align 4
  %t384 = mul i32 1, %t3172
  %t385 = add i32 %t381, %t384
  store i32 %t385, i32* %t2857, align 4
  br label %B3164
B3170:                               	; preds = %B3165
  br label %B3164
B3164:                               	; preds = %B3163, %B3167, %B3170
  %t387 = load i32, i32* %t2859, align 4
  %t388 = sdiv i32 %t387, 2
  store i32 %t388, i32* %t2859, align 4
  %t390 = load i32, i32* %t2860, align 4
  %t391 = sdiv i32 %t390, 2
  store i32 %t391, i32* %t2860, align 4
  %t393 = load i32, i32* %t2858, align 4
  %t394 = add i32 %t393, 1
  store i32 %t394, i32* %t2858, align 4
  %t3173 = load i32, i32* %t2858, align 4
  %t3174 = icmp slt i32 %t3173, 16
  br i1 %t3174, label %B3158, label %B3177
B3178:                               	; preds = %B3159
  %t396 = load i32, i32* %t3150, align 4
  store i32 %t396, i32* %t3183, align 4
  %t398 = load i32, i32* %t3148, align 4
  store i32 %t398, i32* %t3184, align 4
  br label %B3186
B3181:                               	; preds = %B3159
  br label %B3179
B3407:                               	; preds = %B3405, %B3406
  br label %B3401
B3406:                               	; preds = %B3410
  store i32 0, i32* %t2857, align 4
  br label %B3407
B3411:                               	; preds = %B3400
  %t687 = load i32, i32* %t2859, align 4
  %t688 = icmp sgt i32 %t687, 32767
  br i1 %t688, label %B3417, label %B3422
B3416:                               	; preds = %B3400
  br label %B3412
B3476:                               	; preds = %B3475, %B3482
  %t763 = load i32, i32* %t2859, align 4
  %t764 = srem i32 %t763, 2
  %t768 = icmp ne i32 %t764, 0
  br i1 %t768, label %B3483, label %B3485
B3480:                               	; preds = %B3475
  br label %B3477
B3726:                               	; preds = %B3721
  %t1079 = load i32, i32* %t2858, align 4
  %t1080 = icmp slt i32 %t1079, 16
  br i1 %t1080, label %B3727, label %B3731
B3722:                               	; preds = %B3724, %B3966
  %t1381 = load i32, i32* %t3719, align 4
  store i32 %t1381, i32* %t2857, align 4
  %t1383 = load i32, i32* %t2857, align 4
  store i32 %t1383, i32* %t3431, align 4
  %t1385 = load i32, i32* %t3432, align 4
  store i32 %t1385, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1387 = load i32, i32* %t2860, align 4
  %t1388 = icmp sge i32 %t1387, 15
  br i1 %t1388, label %B3968, label %B3973
B4023:                               	; preds = %B4016
  %t1440 = load i32, i32* %t2860, align 4
  %t1441 = srem i32 %t1440, 2
  %t1444 = icmp ne i32 %t1441, 0
  br i1 %t1444, label %B4021, label %B4028
B4025:                               	; preds = %B4016
  br label %B4022
B4017:                               	; preds = %B4020, %B4035
  %t1460 = load i32, i32* %t2857, align 4
  %t1778 = icmp ne i32 %t1460, 0
  br i1 %t1778, label %B4036, label %B4039
B4590:                               	; preds = %B4589, %B5125
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2149 = load i32, i32* %t4587, align 4
  store i32 %t2149, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4595
B4594:                               	; preds = %B4589
  br label %B4591
B2936:                               	; preds = %B2935, %B2993
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t88 = load i32, i32* %t2932, align 4
  store i32 %t88, i32* %t2859, align 4
  %t90 = load i32, i32* %t2933, align 4
  store i32 %t90, i32* %t2860, align 4
  br label %B2941
B2939:                               	; preds = %B2935
  br label %B2937
B3027:                               	; preds = %B2928
  %t204 = load i32, i32* %t3025, align 4
  %t205 = icmp ne i32 %t204, 0
  br i1 %t205, label %B3028, label %B3031
B3177:                               	; preds = %B3164
  br label %B3159
B3186:                               	; preds = %B3178
  %t401 = load i32, i32* %t3184, align 4
  %t402 = icmp ne i32 %t401, 0
  br i1 %t402, label %B3187, label %B3190
B3179:                               	; preds = %B3181, %B3188
  %t517 = load i32, i32* %t3148, align 4
  store i32 %t517, i32* %t3275, align 4
  %t519 = load i32, i32* %t3148, align 4
  store i32 %t519, i32* %t3276, align 4
  br label %B3278
B3401:                               	; preds = %B3407, %B3413
  %t710 = load i32, i32* %t2857, align 4
  store i32 %t710, i32* %t2863, align 4
  %t3426 = load i32, i32* %t2863, align 4
  %t3427 = icmp sgt i32 %t3426, 0
  br i1 %t3427, label %B2866, label %B3430
B3417:                               	; preds = %B3411
  %t690 = load i32, i32* %t2859, align 4
  %t691 = load i32, i32* %t2860, align 4
  %t692 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t691
  %t3423 = load i32, i32* %t692, align 4
  %t693 = sdiv i32 %t690, %t3423
  store i32 %t693, i32* %t2859, align 4
  %t695 = load i32, i32* %t2859, align 4
  %t696 = add i32 %t695, 65536
  %t697 = load i32, i32* %t2860, align 4
  %t698 = sub i32 15, %t697
  %t699 = add i32 %t698, 1
  %t700 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t699
  %t3424 = load i32, i32* %t700, align 4
  %t701 = sub i32 %t696, %t3424
  store i32 %t701, i32* %t2857, align 4
  br label %B3419
B3422:                               	; preds = %B3411
  br label %B3418
B3412:                               	; preds = %B3416
  %t708 = load i32, i32* %t2859, align 4
  store i32 %t708, i32* %t2857, align 4
  br label %B3413
B3483:                               	; preds = %B3476
  %t765 = load i32, i32* %t2860, align 4
  %t766 = srem i32 %t765, 2
  %t769 = icmp ne i32 %t766, 0
  br i1 %t769, label %B3481, label %B3488
B3485:                               	; preds = %B3476
  br label %B3482
B3477:                               	; preds = %B3480, %B3495
  %t785 = load i32, i32* %t2857, align 4
  %t906 = icmp ne i32 %t785, 0
  br i1 %t906, label %B3496, label %B3499
B3727:                               	; preds = %B3726, %B3733
  %t1081 = load i32, i32* %t2859, align 4
  %t1082 = srem i32 %t1081, 2
  %t1086 = icmp ne i32 %t1082, 0
  br i1 %t1086, label %B3734, label %B3736
B3731:                               	; preds = %B3726
  br label %B3728
B3968:                               	; preds = %B3722
  %t1389 = load i32, i32* %t2859, align 4
  %t1390 = icmp slt i32 %t1389, 0
  br i1 %t1390, label %B3974, label %B3979
B3973:                               	; preds = %B3722
  br label %B3969
B4021:                               	; preds = %B4023
  %t1446 = load i32, i32* %t2857, align 4
  %t1447 = load i32, i32* %t2858, align 4
  %t1448 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1447
  %t4030 = load i32, i32* %t1448, align 4
  %t1449 = mul i32 1, %t4030
  %t1450 = add i32 %t1446, %t1449
  store i32 %t1450, i32* %t2857, align 4
  br label %B4022
B4028:                               	; preds = %B4023
  br label %B4022
B4022:                               	; preds = %B4021, %B4025, %B4028
  %t1452 = load i32, i32* %t2859, align 4
  %t1453 = sdiv i32 %t1452, 2
  store i32 %t1453, i32* %t2859, align 4
  %t1455 = load i32, i32* %t2860, align 4
  %t1456 = sdiv i32 %t1455, 2
  store i32 %t1456, i32* %t2860, align 4
  %t1458 = load i32, i32* %t2858, align 4
  %t1459 = add i32 %t1458, 1
  store i32 %t1459, i32* %t2858, align 4
  %t4031 = load i32, i32* %t2858, align 4
  %t4032 = icmp slt i32 %t4031, 16
  br i1 %t4032, label %B4016, label %B4035
B4036:                               	; preds = %B4017
  %t1461 = load i32, i32* %t4008, align 4
  store i32 %t1461, i32* %t4041, align 4
  %t1463 = load i32, i32* %t4006, align 4
  store i32 %t1463, i32* %t4042, align 4
  store i32 0, i32* %t4043, align 4
  br label %B4044
B4039:                               	; preds = %B4017
  br label %B4037
B4595:                               	; preds = %B4590
  %t2151 = load i32, i32* %t2858, align 4
  %t2152 = icmp slt i32 %t2151, 16
  br i1 %t2152, label %B4596, label %B4600
B4591:                               	; preds = %B4594, %B5154
  %t2847 = load i32, i32* %t4588, align 4
  store i32 %t2847, i32* %t2857, align 4
  %t2848 = load i32, i32* %t2861, align 4
  %t2849 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2848
  %t5157 = load i32, i32* %t2849, align 4
  %t2850 = load i32, i32* %t2857, align 4
  %t2851 = icmp ne i32 %t5157, %t2850
  br i1 %t2851, label %B5155, label %B5160
B2941:                               	; preds = %B2936
  %t91 = load i32, i32* %t2858, align 4
  %t92 = icmp slt i32 %t91, 16
  br i1 %t92, label %B2942, label %B2946
B2937:                               	; preds = %B2939, %B3022
  %t195 = load i32, i32* %t2932, align 4
  store i32 %t195, i32* %t2857, align 4
  %t197 = load i32, i32* %t2857, align 4
  store i32 %t197, i32* %t2899, align 4
  br label %B2928
B3028:                               	; preds = %B3027, %B3085
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t209 = load i32, i32* %t3024, align 4
  store i32 %t209, i32* %t2859, align 4
  %t211 = load i32, i32* %t3025, align 4
  store i32 %t211, i32* %t2860, align 4
  br label %B3033
B3031:                               	; preds = %B3027
  br label %B3029
B3187:                               	; preds = %B3186, %B3244
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t406 = load i32, i32* %t3183, align 4
  store i32 %t406, i32* %t2859, align 4
  %t408 = load i32, i32* %t3184, align 4
  store i32 %t408, i32* %t2860, align 4
  br label %B3192
B3190:                               	; preds = %B3186
  br label %B3188
B3278:                               	; preds = %B3179
  %t522 = load i32, i32* %t3276, align 4
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %B3279, label %B3282
B3430:                               	; preds = %B3401
  br label %B2867
B3419:                               	; preds = %B3417, %B3418
  br label %B3413
B3418:                               	; preds = %B3422
  %t703 = load i32, i32* %t2859, align 4
  %t704 = load i32, i32* %t2860, align 4
  %t705 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t704
  %t3425 = load i32, i32* %t705, align 4
  %t706 = sdiv i32 %t703, %t3425
  store i32 %t706, i32* %t2857, align 4
  br label %B3419
B3413:                               	; preds = %B3412, %B3419
  br label %B3401
B3481:                               	; preds = %B3483
  %t771 = load i32, i32* %t2857, align 4
  %t772 = load i32, i32* %t2858, align 4
  %t773 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t772
  %t3490 = load i32, i32* %t773, align 4
  %t774 = mul i32 1, %t3490
  %t775 = add i32 %t771, %t774
  store i32 %t775, i32* %t2857, align 4
  br label %B3482
B3488:                               	; preds = %B3483
  br label %B3482
B3482:                               	; preds = %B3481, %B3485, %B3488
  %t777 = load i32, i32* %t2859, align 4
  %t778 = sdiv i32 %t777, 2
  store i32 %t778, i32* %t2859, align 4
  %t780 = load i32, i32* %t2860, align 4
  %t781 = sdiv i32 %t780, 2
  store i32 %t781, i32* %t2860, align 4
  %t783 = load i32, i32* %t2858, align 4
  %t784 = add i32 %t783, 1
  store i32 %t784, i32* %t2858, align 4
  %t3491 = load i32, i32* %t2858, align 4
  %t3492 = icmp slt i32 %t3491, 16
  br i1 %t3492, label %B3476, label %B3495
B3496:                               	; preds = %B3477
  %t786 = load i32, i32* %t3468, align 4
  store i32 %t786, i32* %t3501, align 4
  %t788 = load i32, i32* %t3466, align 4
  store i32 %t788, i32* %t3502, align 4
  br label %B3504
B3499:                               	; preds = %B3477
  br label %B3497
B3734:                               	; preds = %B3727
  %t1083 = load i32, i32* %t2860, align 4
  %t1084 = srem i32 %t1083, 2
  %t1087 = icmp ne i32 %t1084, 0
  br i1 %t1087, label %B3732, label %B3739
B3736:                               	; preds = %B3727
  br label %B3733
B3728:                               	; preds = %B3731, %B3746
  %t1103 = load i32, i32* %t2857, align 4
  %t1224 = icmp ne i32 %t1103, 0
  br i1 %t1224, label %B3747, label %B3750
B3974:                               	; preds = %B3968
  store i32 65535, i32* %t2857, align 4
  br label %B3976
B3979:                               	; preds = %B3968
  br label %B3975
B3969:                               	; preds = %B3973
  %t1393 = load i32, i32* %t2860, align 4
  %t1394 = icmp sgt i32 %t1393, 0
  br i1 %t1394, label %B3980, label %B3985
B4035:                               	; preds = %B4022
  br label %B4017
B4044:                               	; preds = %B4036
  %t1466 = load i32, i32* %t4042, align 4
  %t1467 = icmp ne i32 %t1466, 0
  br i1 %t1467, label %B4045, label %B4048
B4037:                               	; preds = %B4039, %B4046
  %t1779 = load i32, i32* %t4006, align 4
  store i32 %t1779, i32* %t4292, align 4
  %t1781 = load i32, i32* %t4006, align 4
  store i32 %t1781, i32* %t4293, align 4
  store i32 0, i32* %t4294, align 4
  br label %B4295
B4596:                               	; preds = %B4595, %B4602
  %t2153 = load i32, i32* %t2859, align 4
  %t2154 = srem i32 %t2153, 2
  %t2158 = icmp ne i32 %t2154, 0
  br i1 %t2158, label %B4603, label %B4605
B4600:                               	; preds = %B4595
  br label %B4597
B5155:                               	; preds = %B4591
  ret i32 1
B5160:                               	; preds = %B4591
  br label %B5156
B2942:                               	; preds = %B2941, %B2949
  %t93 = load i32, i32* %t2859, align 4
  %t94 = srem i32 %t93, 2
  %t113 = icmp ne i32 %t94, 0
  br i1 %t113, label %B2947, label %B2951
B2946:                               	; preds = %B2941
  br label %B2943
B3033:                               	; preds = %B3028
  %t212 = load i32, i32* %t2858, align 4
  %t213 = icmp slt i32 %t212, 16
  br i1 %t213, label %B3034, label %B3038
B3029:                               	; preds = %B3031, %B3114
  %t316 = load i32, i32* %t3024, align 4
  store i32 %t316, i32* %t2857, align 4
  %t318 = load i32, i32* %t2857, align 4
  store i32 %t318, i32* %t2897, align 4
  %t320 = load i32, i32* %t2898, align 4
  store i32 %t320, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t322 = load i32, i32* %t2860, align 4
  %t323 = icmp sge i32 %t322, 15
  br i1 %t323, label %B3116, label %B3121
B3192:                               	; preds = %B3187
  %t409 = load i32, i32* %t2858, align 4
  %t410 = icmp slt i32 %t409, 16
  br i1 %t410, label %B3193, label %B3197
B3188:                               	; preds = %B3190, %B3273
  %t513 = load i32, i32* %t3183, align 4
  store i32 %t513, i32* %t2857, align 4
  %t515 = load i32, i32* %t2857, align 4
  store i32 %t515, i32* %t3150, align 4
  br label %B3179
B3279:                               	; preds = %B3278, %B3336
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t527 = load i32, i32* %t3275, align 4
  store i32 %t527, i32* %t2859, align 4
  %t529 = load i32, i32* %t3276, align 4
  store i32 %t529, i32* %t2860, align 4
  br label %B3284
B3282:                               	; preds = %B3278
  br label %B3280
B3495:                               	; preds = %B3482
  br label %B3477
B3504:                               	; preds = %B3496
  %t791 = load i32, i32* %t3502, align 4
  %t792 = icmp ne i32 %t791, 0
  br i1 %t792, label %B3505, label %B3508
B3497:                               	; preds = %B3499, %B3506
  %t907 = load i32, i32* %t3466, align 4
  store i32 %t907, i32* %t3593, align 4
  %t909 = load i32, i32* %t3466, align 4
  store i32 %t909, i32* %t3594, align 4
  br label %B3596
B3732:                               	; preds = %B3734
  %t1089 = load i32, i32* %t2857, align 4
  %t1090 = load i32, i32* %t2858, align 4
  %t1091 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1090
  %t3741 = load i32, i32* %t1091, align 4
  %t1092 = mul i32 1, %t3741
  %t1093 = add i32 %t1089, %t1092
  store i32 %t1093, i32* %t2857, align 4
  br label %B3733
B3739:                               	; preds = %B3734
  br label %B3733
B3733:                               	; preds = %B3732, %B3736, %B3739
  %t1095 = load i32, i32* %t2859, align 4
  %t1096 = sdiv i32 %t1095, 2
  store i32 %t1096, i32* %t2859, align 4
  %t1098 = load i32, i32* %t2860, align 4
  %t1099 = sdiv i32 %t1098, 2
  store i32 %t1099, i32* %t2860, align 4
  %t1101 = load i32, i32* %t2858, align 4
  %t1102 = add i32 %t1101, 1
  store i32 %t1102, i32* %t2858, align 4
  %t3742 = load i32, i32* %t2858, align 4
  %t3743 = icmp slt i32 %t3742, 16
  br i1 %t3743, label %B3727, label %B3746
B3747:                               	; preds = %B3728
  %t1104 = load i32, i32* %t3719, align 4
  store i32 %t1104, i32* %t3752, align 4
  %t1106 = load i32, i32* %t3717, align 4
  store i32 %t1106, i32* %t3753, align 4
  br label %B3755
B3750:                               	; preds = %B3728
  br label %B3748
B3976:                               	; preds = %B3974, %B3975
  br label %B3970
B3975:                               	; preds = %B3979
  store i32 0, i32* %t2857, align 4
  br label %B3976
B3980:                               	; preds = %B3969
  %t1395 = load i32, i32* %t2859, align 4
  %t1396 = icmp sgt i32 %t1395, 32767
  br i1 %t1396, label %B3986, label %B3991
B3985:                               	; preds = %B3969
  br label %B3981
B4045:                               	; preds = %B4044, %B4262
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1471 = load i32, i32* %t4042, align 4
  store i32 %t1471, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4050
B4048:                               	; preds = %B4044
  br label %B4046
B4295:                               	; preds = %B4037
  %t1784 = load i32, i32* %t4293, align 4
  %t1785 = icmp ne i32 %t1784, 0
  br i1 %t1785, label %B4296, label %B4299
B4603:                               	; preds = %B4596
  %t2155 = load i32, i32* %t2860, align 4
  %t2156 = srem i32 %t2155, 2
  %t2159 = icmp ne i32 %t2156, 0
  br i1 %t2159, label %B4601, label %B4608
B4605:                               	; preds = %B4596
  br label %B4602
B4597:                               	; preds = %B4600, %B4615
  %t2175 = load i32, i32* %t2857, align 4
  %t2493 = icmp ne i32 %t2175, 0
  br i1 %t2493, label %B4616, label %B4619
B5156:                               	; preds = %B5160
  %t2853 = load i32, i32* %t2861, align 4
  %t2854 = add i32 %t2853, 1
  store i32 %t2854, i32* %t2861, align 4
  %t5161 = load i32, i32* %t2861, align 4
  %t5162 = icmp slt i32 %t5161, 16
  br i1 %t5162, label %B4581, label %B5165
B2947:                               	; preds = %B2942
  %t95 = load i32, i32* %t2860, align 4
  %t96 = srem i32 %t95, 2
  %t97 = icmp eq i32 %t96, 0
  br i1 %t97, label %B2953, label %B2957
B2951:                               	; preds = %B2942
  br label %B2948
B2943:                               	; preds = %B2946, %B2969
  %t124 = load i32, i32* %t2857, align 4
  store i32 %t124, i32* %t2934, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t128 = load i32, i32* %t2932, align 4
  store i32 %t128, i32* %t2859, align 4
  %t130 = load i32, i32* %t2933, align 4
  store i32 %t130, i32* %t2860, align 4
  br label %B2970
B3034:                               	; preds = %B3033, %B3041
  %t214 = load i32, i32* %t2859, align 4
  %t215 = srem i32 %t214, 2
  %t234 = icmp ne i32 %t215, 0
  br i1 %t234, label %B3039, label %B3043
B3038:                               	; preds = %B3033
  br label %B3035
B3116:                               	; preds = %B3029
  %t324 = load i32, i32* %t2859, align 4
  %t325 = icmp slt i32 %t324, 0
  br i1 %t325, label %B3122, label %B3127
B3121:                               	; preds = %B3029
  br label %B3117
B3193:                               	; preds = %B3192, %B3200
  %t411 = load i32, i32* %t2859, align 4
  %t412 = srem i32 %t411, 2
  %t431 = icmp ne i32 %t412, 0
  br i1 %t431, label %B3198, label %B3202
B3197:                               	; preds = %B3192
  br label %B3194
B3284:                               	; preds = %B3279
  %t530 = load i32, i32* %t2858, align 4
  %t531 = icmp slt i32 %t530, 16
  br i1 %t531, label %B3285, label %B3289
B3280:                               	; preds = %B3282, %B3365
  %t634 = load i32, i32* %t3275, align 4
  store i32 %t634, i32* %t2857, align 4
  %t636 = load i32, i32* %t2857, align 4
  store i32 %t636, i32* %t3148, align 4
  %t638 = load i32, i32* %t3149, align 4
  store i32 %t638, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t640 = load i32, i32* %t2860, align 4
  %t641 = icmp sge i32 %t640, 15
  br i1 %t641, label %B3367, label %B3372
B3505:                               	; preds = %B3504, %B3562
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t796 = load i32, i32* %t3501, align 4
  store i32 %t796, i32* %t2859, align 4
  %t798 = load i32, i32* %t3502, align 4
  store i32 %t798, i32* %t2860, align 4
  br label %B3510
B3508:                               	; preds = %B3504
  br label %B3506
B3596:                               	; preds = %B3497
  %t912 = load i32, i32* %t3594, align 4
  %t913 = icmp ne i32 %t912, 0
  br i1 %t913, label %B3597, label %B3600
B3746:                               	; preds = %B3733
  br label %B3728
B3755:                               	; preds = %B3747
  %t1109 = load i32, i32* %t3753, align 4
  %t1110 = icmp ne i32 %t1109, 0
  br i1 %t1110, label %B3756, label %B3759
B3748:                               	; preds = %B3750, %B3757
  %t1225 = load i32, i32* %t3717, align 4
  store i32 %t1225, i32* %t3844, align 4
  %t1227 = load i32, i32* %t3717, align 4
  store i32 %t1227, i32* %t3845, align 4
  br label %B3847
B3970:                               	; preds = %B3976, %B3982
  %t1418 = load i32, i32* %t2857, align 4
  store i32 %t1418, i32* %t3432, align 4
  %t3995 = load i32, i32* %t3432, align 4
  %t3996 = icmp sgt i32 %t3995, 0
  br i1 %t3996, label %B3435, label %B3999
B3986:                               	; preds = %B3980
  %t1398 = load i32, i32* %t2859, align 4
  %t1399 = load i32, i32* %t2860, align 4
  %t1400 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1399
  %t3992 = load i32, i32* %t1400, align 4
  %t1401 = sdiv i32 %t1398, %t3992
  store i32 %t1401, i32* %t2859, align 4
  %t1403 = load i32, i32* %t2859, align 4
  %t1404 = add i32 %t1403, 65536
  %t1405 = load i32, i32* %t2860, align 4
  %t1406 = sub i32 15, %t1405
  %t1407 = add i32 %t1406, 1
  %t1408 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1407
  %t3993 = load i32, i32* %t1408, align 4
  %t1409 = sub i32 %t1404, %t3993
  store i32 %t1409, i32* %t2857, align 4
  br label %B3988
B3991:                               	; preds = %B3980
  br label %B3987
B3981:                               	; preds = %B3985
  %t1416 = load i32, i32* %t2859, align 4
  store i32 %t1416, i32* %t2857, align 4
  br label %B3982
B4050:                               	; preds = %B4045
  %t1473 = load i32, i32* %t2858, align 4
  %t1474 = icmp slt i32 %t1473, 16
  br i1 %t1474, label %B4051, label %B4055
B4046:                               	; preds = %B4048, %B4290
  %t1775 = load i32, i32* %t4043, align 4
  store i32 %t1775, i32* %t2857, align 4
  %t1777 = load i32, i32* %t2857, align 4
  store i32 %t1777, i32* %t4008, align 4
  br label %B4037
B4296:                               	; preds = %B4295, %B4513
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1789 = load i32, i32* %t4293, align 4
  store i32 %t1789, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4301
B4299:                               	; preds = %B4295
  br label %B4297
B4601:                               	; preds = %B4603
  %t2161 = load i32, i32* %t2857, align 4
  %t2162 = load i32, i32* %t2858, align 4
  %t2163 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2162
  %t4610 = load i32, i32* %t2163, align 4
  %t2164 = mul i32 1, %t4610
  %t2165 = add i32 %t2161, %t2164
  store i32 %t2165, i32* %t2857, align 4
  br label %B4602
B4608:                               	; preds = %B4603
  br label %B4602
B4602:                               	; preds = %B4601, %B4605, %B4608
  %t2167 = load i32, i32* %t2859, align 4
  %t2168 = sdiv i32 %t2167, 2
  store i32 %t2168, i32* %t2859, align 4
  %t2170 = load i32, i32* %t2860, align 4
  %t2171 = sdiv i32 %t2170, 2
  store i32 %t2171, i32* %t2860, align 4
  %t2173 = load i32, i32* %t2858, align 4
  %t2174 = add i32 %t2173, 1
  store i32 %t2174, i32* %t2858, align 4
  %t4611 = load i32, i32* %t2858, align 4
  %t4612 = icmp slt i32 %t4611, 16
  br i1 %t4612, label %B4596, label %B4615
B4616:                               	; preds = %B4597
  %t2176 = load i32, i32* %t4588, align 4
  store i32 %t2176, i32* %t4621, align 4
  %t2178 = load i32, i32* %t4586, align 4
  store i32 %t2178, i32* %t4622, align 4
  store i32 0, i32* %t4623, align 4
  br label %B4624
B4619:                               	; preds = %B4597
  br label %B4617
B5165:                               	; preds = %B5156
  br label %B4582
B2953:                               	; preds = %B2947
  %t99 = load i32, i32* %t2857, align 4
  %t100 = load i32, i32* %t2858, align 4
  %t101 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t100
  %t2958 = load i32, i32* %t101, align 4
  %t102 = mul i32 1, %t2958
  %t103 = add i32 %t99, %t102
  store i32 %t103, i32* %t2857, align 4
  br label %B2954
B2957:                               	; preds = %B2947
  br label %B2954
B2948:                               	; preds = %B2951
  %t104 = load i32, i32* %t2860, align 4
  %t105 = srem i32 %t104, 2
  %t112 = icmp ne i32 %t105, 0
  br i1 %t112, label %B2959, label %B2962
B2970:                               	; preds = %B2943
  %t131 = load i32, i32* %t2858, align 4
  %t132 = icmp slt i32 %t131, 16
  br i1 %t132, label %B2971, label %B2975
B3039:                               	; preds = %B3034
  %t216 = load i32, i32* %t2860, align 4
  %t217 = srem i32 %t216, 2
  %t218 = icmp eq i32 %t217, 0
  br i1 %t218, label %B3045, label %B3049
B3043:                               	; preds = %B3034
  br label %B3040
B3035:                               	; preds = %B3038, %B3061
  %t245 = load i32, i32* %t2857, align 4
  store i32 %t245, i32* %t3026, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t249 = load i32, i32* %t3024, align 4
  store i32 %t249, i32* %t2859, align 4
  %t251 = load i32, i32* %t3025, align 4
  store i32 %t251, i32* %t2860, align 4
  br label %B3062
B3122:                               	; preds = %B3116
  store i32 65535, i32* %t2857, align 4
  br label %B3124
B3127:                               	; preds = %B3116
  br label %B3123
B3117:                               	; preds = %B3121
  %t328 = load i32, i32* %t2860, align 4
  %t329 = icmp sgt i32 %t328, 0
  br i1 %t329, label %B3128, label %B3133
B3198:                               	; preds = %B3193
  %t413 = load i32, i32* %t2860, align 4
  %t414 = srem i32 %t413, 2
  %t415 = icmp eq i32 %t414, 0
  br i1 %t415, label %B3204, label %B3208
B3202:                               	; preds = %B3193
  br label %B3199
B3194:                               	; preds = %B3197, %B3220
  %t442 = load i32, i32* %t2857, align 4
  store i32 %t442, i32* %t3185, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t446 = load i32, i32* %t3183, align 4
  store i32 %t446, i32* %t2859, align 4
  %t448 = load i32, i32* %t3184, align 4
  store i32 %t448, i32* %t2860, align 4
  br label %B3221
B3285:                               	; preds = %B3284, %B3292
  %t532 = load i32, i32* %t2859, align 4
  %t533 = srem i32 %t532, 2
  %t552 = icmp ne i32 %t533, 0
  br i1 %t552, label %B3290, label %B3294
B3289:                               	; preds = %B3284
  br label %B3286
B3367:                               	; preds = %B3280
  %t642 = load i32, i32* %t2859, align 4
  %t643 = icmp slt i32 %t642, 0
  br i1 %t643, label %B3373, label %B3378
B3372:                               	; preds = %B3280
  br label %B3368
B3510:                               	; preds = %B3505
  %t799 = load i32, i32* %t2858, align 4
  %t800 = icmp slt i32 %t799, 16
  br i1 %t800, label %B3511, label %B3515
B3506:                               	; preds = %B3508, %B3591
  %t903 = load i32, i32* %t3501, align 4
  store i32 %t903, i32* %t2857, align 4
  %t905 = load i32, i32* %t2857, align 4
  store i32 %t905, i32* %t3468, align 4
  br label %B3497
B3597:                               	; preds = %B3596, %B3654
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t917 = load i32, i32* %t3593, align 4
  store i32 %t917, i32* %t2859, align 4
  %t919 = load i32, i32* %t3594, align 4
  store i32 %t919, i32* %t2860, align 4
  br label %B3602
B3600:                               	; preds = %B3596
  br label %B3598
B3756:                               	; preds = %B3755, %B3813
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1114 = load i32, i32* %t3752, align 4
  store i32 %t1114, i32* %t2859, align 4
  %t1116 = load i32, i32* %t3753, align 4
  store i32 %t1116, i32* %t2860, align 4
  br label %B3761
B3759:                               	; preds = %B3755
  br label %B3757
B3847:                               	; preds = %B3748
  %t1230 = load i32, i32* %t3845, align 4
  %t1231 = icmp ne i32 %t1230, 0
  br i1 %t1231, label %B3848, label %B3851
B3999:                               	; preds = %B3970
  br label %B3436
B3988:                               	; preds = %B3986, %B3987
  br label %B3982
B3987:                               	; preds = %B3991
  %t1411 = load i32, i32* %t2859, align 4
  %t1412 = load i32, i32* %t2860, align 4
  %t1413 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1412
  %t3994 = load i32, i32* %t1413, align 4
  %t1414 = sdiv i32 %t1411, %t3994
  store i32 %t1414, i32* %t2857, align 4
  br label %B3988
B3982:                               	; preds = %B3981, %B3988
  br label %B3970
B4051:                               	; preds = %B4050, %B4057
  %t1475 = load i32, i32* %t2859, align 4
  %t1476 = srem i32 %t1475, 2
  %t1480 = icmp ne i32 %t1476, 0
  br i1 %t1480, label %B4058, label %B4060
B4055:                               	; preds = %B4050
  br label %B4052
B4301:                               	; preds = %B4296
  %t1791 = load i32, i32* %t2858, align 4
  %t1792 = icmp slt i32 %t1791, 16
  br i1 %t1792, label %B4302, label %B4306
B4297:                               	; preds = %B4299, %B4541
  %t2093 = load i32, i32* %t4294, align 4
  store i32 %t2093, i32* %t2857, align 4
  %t2095 = load i32, i32* %t2857, align 4
  store i32 %t2095, i32* %t4006, align 4
  %t2097 = load i32, i32* %t4007, align 4
  store i32 %t2097, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2099 = load i32, i32* %t2860, align 4
  %t2100 = icmp sge i32 %t2099, 15
  br i1 %t2100, label %B4543, label %B4548
B4615:                               	; preds = %B4602
  br label %B4597
B4624:                               	; preds = %B4616
  %t2181 = load i32, i32* %t4622, align 4
  %t2182 = icmp ne i32 %t2181, 0
  br i1 %t2182, label %B4625, label %B4628
B4617:                               	; preds = %B4619, %B4626
  %t2494 = load i32, i32* %t4586, align 4
  store i32 %t2494, i32* %t4872, align 4
  %t2496 = load i32, i32* %t4586, align 4
  store i32 %t2496, i32* %t4873, align 4
  store i32 0, i32* %t4874, align 4
  br label %B4875
B2954:                               	; preds = %B2953, %B2957
  br label %B2949
B2959:                               	; preds = %B2948
  %t107 = load i32, i32* %t2857, align 4
  %t108 = load i32, i32* %t2858, align 4
  %t109 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t108
  %t2964 = load i32, i32* %t109, align 4
  %t110 = mul i32 1, %t2964
  %t111 = add i32 %t107, %t110
  store i32 %t111, i32* %t2857, align 4
  br label %B2960
B2962:                               	; preds = %B2948
  br label %B2960
B2971:                               	; preds = %B2970, %B2977
  %t133 = load i32, i32* %t2859, align 4
  %t134 = srem i32 %t133, 2
  %t138 = icmp ne i32 %t134, 0
  br i1 %t138, label %B2978, label %B2980
B2975:                               	; preds = %B2970
  br label %B2972
B3045:                               	; preds = %B3039
  %t220 = load i32, i32* %t2857, align 4
  %t221 = load i32, i32* %t2858, align 4
  %t222 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t221
  %t3050 = load i32, i32* %t222, align 4
  %t223 = mul i32 1, %t3050
  %t224 = add i32 %t220, %t223
  store i32 %t224, i32* %t2857, align 4
  br label %B3046
B3049:                               	; preds = %B3039
  br label %B3046
B3040:                               	; preds = %B3043
  %t225 = load i32, i32* %t2860, align 4
  %t226 = srem i32 %t225, 2
  %t233 = icmp ne i32 %t226, 0
  br i1 %t233, label %B3051, label %B3054
B3062:                               	; preds = %B3035
  %t252 = load i32, i32* %t2858, align 4
  %t253 = icmp slt i32 %t252, 16
  br i1 %t253, label %B3063, label %B3067
B3124:                               	; preds = %B3122, %B3123
  br label %B3118
B3123:                               	; preds = %B3127
  store i32 0, i32* %t2857, align 4
  br label %B3124
B3128:                               	; preds = %B3117
  %t330 = load i32, i32* %t2859, align 4
  %t331 = icmp sgt i32 %t330, 32767
  br i1 %t331, label %B3134, label %B3139
B3133:                               	; preds = %B3117
  br label %B3129
B3204:                               	; preds = %B3198
  %t417 = load i32, i32* %t2857, align 4
  %t418 = load i32, i32* %t2858, align 4
  %t419 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t418
  %t3209 = load i32, i32* %t419, align 4
  %t420 = mul i32 1, %t3209
  %t421 = add i32 %t417, %t420
  store i32 %t421, i32* %t2857, align 4
  br label %B3205
B3208:                               	; preds = %B3198
  br label %B3205
B3199:                               	; preds = %B3202
  %t422 = load i32, i32* %t2860, align 4
  %t423 = srem i32 %t422, 2
  %t430 = icmp ne i32 %t423, 0
  br i1 %t430, label %B3210, label %B3213
B3221:                               	; preds = %B3194
  %t449 = load i32, i32* %t2858, align 4
  %t450 = icmp slt i32 %t449, 16
  br i1 %t450, label %B3222, label %B3226
B3290:                               	; preds = %B3285
  %t534 = load i32, i32* %t2860, align 4
  %t535 = srem i32 %t534, 2
  %t536 = icmp eq i32 %t535, 0
  br i1 %t536, label %B3296, label %B3300
B3294:                               	; preds = %B3285
  br label %B3291
B3286:                               	; preds = %B3289, %B3312
  %t563 = load i32, i32* %t2857, align 4
  store i32 %t563, i32* %t3277, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t567 = load i32, i32* %t3275, align 4
  store i32 %t567, i32* %t2859, align 4
  %t569 = load i32, i32* %t3276, align 4
  store i32 %t569, i32* %t2860, align 4
  br label %B3313
B3373:                               	; preds = %B3367
  store i32 65535, i32* %t2857, align 4
  br label %B3375
B3378:                               	; preds = %B3367
  br label %B3374
B3368:                               	; preds = %B3372
  %t646 = load i32, i32* %t2860, align 4
  %t647 = icmp sgt i32 %t646, 0
  br i1 %t647, label %B3379, label %B3384
B3511:                               	; preds = %B3510, %B3518
  %t801 = load i32, i32* %t2859, align 4
  %t802 = srem i32 %t801, 2
  %t821 = icmp ne i32 %t802, 0
  br i1 %t821, label %B3516, label %B3520
B3515:                               	; preds = %B3510
  br label %B3512
B3602:                               	; preds = %B3597
  %t920 = load i32, i32* %t2858, align 4
  %t921 = icmp slt i32 %t920, 16
  br i1 %t921, label %B3603, label %B3607
B3598:                               	; preds = %B3600, %B3683
  %t1024 = load i32, i32* %t3593, align 4
  store i32 %t1024, i32* %t2857, align 4
  %t1026 = load i32, i32* %t2857, align 4
  store i32 %t1026, i32* %t3466, align 4
  %t1028 = load i32, i32* %t3467, align 4
  store i32 %t1028, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1030 = load i32, i32* %t2860, align 4
  %t1031 = icmp sge i32 %t1030, 15
  br i1 %t1031, label %B3685, label %B3690
B3761:                               	; preds = %B3756
  %t1117 = load i32, i32* %t2858, align 4
  %t1118 = icmp slt i32 %t1117, 16
  br i1 %t1118, label %B3762, label %B3766
B3757:                               	; preds = %B3759, %B3842
  %t1221 = load i32, i32* %t3752, align 4
  store i32 %t1221, i32* %t2857, align 4
  %t1223 = load i32, i32* %t2857, align 4
  store i32 %t1223, i32* %t3719, align 4
  br label %B3748
B3848:                               	; preds = %B3847, %B3905
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1235 = load i32, i32* %t3844, align 4
  store i32 %t1235, i32* %t2859, align 4
  %t1237 = load i32, i32* %t3845, align 4
  store i32 %t1237, i32* %t2860, align 4
  br label %B3853
B3851:                               	; preds = %B3847
  br label %B3849
B4058:                               	; preds = %B4051
  %t1477 = load i32, i32* %t2860, align 4
  %t1478 = srem i32 %t1477, 2
  %t1481 = icmp ne i32 %t1478, 0
  br i1 %t1481, label %B4056, label %B4063
B4060:                               	; preds = %B4051
  br label %B4057
B4052:                               	; preds = %B4055, %B4070
  %t1497 = load i32, i32* %t2857, align 4
  %t1618 = icmp ne i32 %t1497, 0
  br i1 %t1618, label %B4071, label %B4074
B4302:                               	; preds = %B4301, %B4308
  %t1793 = load i32, i32* %t2859, align 4
  %t1794 = srem i32 %t1793, 2
  %t1798 = icmp ne i32 %t1794, 0
  br i1 %t1798, label %B4309, label %B4311
B4306:                               	; preds = %B4301
  br label %B4303
B4543:                               	; preds = %B4297
  %t2101 = load i32, i32* %t2859, align 4
  %t2102 = icmp slt i32 %t2101, 0
  br i1 %t2102, label %B4549, label %B4554
B4548:                               	; preds = %B4297
  br label %B4544
B4625:                               	; preds = %B4624, %B4842
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2186 = load i32, i32* %t4622, align 4
  store i32 %t2186, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4630
B4628:                               	; preds = %B4624
  br label %B4626
B4875:                               	; preds = %B4617
  %t2499 = load i32, i32* %t4873, align 4
  %t2500 = icmp ne i32 %t2499, 0
  br i1 %t2500, label %B4876, label %B4879
B2949:                               	; preds = %B2954, %B2960
  %t115 = load i32, i32* %t2859, align 4
  %t116 = sdiv i32 %t115, 2
  store i32 %t116, i32* %t2859, align 4
  %t118 = load i32, i32* %t2860, align 4
  %t119 = sdiv i32 %t118, 2
  store i32 %t119, i32* %t2860, align 4
  %t121 = load i32, i32* %t2858, align 4
  %t122 = add i32 %t121, 1
  store i32 %t122, i32* %t2858, align 4
  %t2965 = load i32, i32* %t2858, align 4
  %t2966 = icmp slt i32 %t2965, 16
  br i1 %t2966, label %B2942, label %B2969
B2960:                               	; preds = %B2959, %B2962
  br label %B2949
B2978:                               	; preds = %B2971
  %t135 = load i32, i32* %t2860, align 4
  %t136 = srem i32 %t135, 2
  %t139 = icmp ne i32 %t136, 0
  br i1 %t139, label %B2976, label %B2983
B2980:                               	; preds = %B2971
  br label %B2977
B2972:                               	; preds = %B2975, %B2990
  %t156 = load i32, i32* %t2857, align 4
  store i32 %t156, i32* %t2933, align 4
  %t157 = icmp sgt i32 1, 15
  br i1 %t157, label %B2991, label %B2996
B3046:                               	; preds = %B3045, %B3049
  br label %B3041
B3051:                               	; preds = %B3040
  %t228 = load i32, i32* %t2857, align 4
  %t229 = load i32, i32* %t2858, align 4
  %t230 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t229
  %t3056 = load i32, i32* %t230, align 4
  %t231 = mul i32 1, %t3056
  %t232 = add i32 %t228, %t231
  store i32 %t232, i32* %t2857, align 4
  br label %B3052
B3054:                               	; preds = %B3040
  br label %B3052
B3063:                               	; preds = %B3062, %B3069
  %t254 = load i32, i32* %t2859, align 4
  %t255 = srem i32 %t254, 2
  %t259 = icmp ne i32 %t255, 0
  br i1 %t259, label %B3070, label %B3072
B3067:                               	; preds = %B3062
  br label %B3064
B3118:                               	; preds = %B3124, %B3130
  %t353 = load i32, i32* %t2857, align 4
  store i32 %t353, i32* %t2898, align 4
  %t3143 = load i32, i32* %t2898, align 4
  %t3144 = icmp ne i32 %t3143, 0
  br i1 %t3144, label %B2901, label %B3146
B3134:                               	; preds = %B3128
  %t333 = load i32, i32* %t2859, align 4
  %t334 = load i32, i32* %t2860, align 4
  %t335 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t334
  %t3140 = load i32, i32* %t335, align 4
  %t336 = sdiv i32 %t333, %t3140
  store i32 %t336, i32* %t2859, align 4
  %t338 = load i32, i32* %t2859, align 4
  %t339 = add i32 %t338, 65536
  %t340 = load i32, i32* %t2860, align 4
  %t341 = sub i32 15, %t340
  %t342 = add i32 %t341, 1
  %t343 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t342
  %t3141 = load i32, i32* %t343, align 4
  %t344 = sub i32 %t339, %t3141
  store i32 %t344, i32* %t2857, align 4
  br label %B3136
B3139:                               	; preds = %B3128
  br label %B3135
B3129:                               	; preds = %B3133
  %t351 = load i32, i32* %t2859, align 4
  store i32 %t351, i32* %t2857, align 4
  br label %B3130
B3205:                               	; preds = %B3204, %B3208
  br label %B3200
B3210:                               	; preds = %B3199
  %t425 = load i32, i32* %t2857, align 4
  %t426 = load i32, i32* %t2858, align 4
  %t427 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t426
  %t3215 = load i32, i32* %t427, align 4
  %t428 = mul i32 1, %t3215
  %t429 = add i32 %t425, %t428
  store i32 %t429, i32* %t2857, align 4
  br label %B3211
B3213:                               	; preds = %B3199
  br label %B3211
B3222:                               	; preds = %B3221, %B3228
  %t451 = load i32, i32* %t2859, align 4
  %t452 = srem i32 %t451, 2
  %t456 = icmp ne i32 %t452, 0
  br i1 %t456, label %B3229, label %B3231
B3226:                               	; preds = %B3221
  br label %B3223
B3296:                               	; preds = %B3290
  %t538 = load i32, i32* %t2857, align 4
  %t539 = load i32, i32* %t2858, align 4
  %t540 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t539
  %t3301 = load i32, i32* %t540, align 4
  %t541 = mul i32 1, %t3301
  %t542 = add i32 %t538, %t541
  store i32 %t542, i32* %t2857, align 4
  br label %B3297
B3300:                               	; preds = %B3290
  br label %B3297
B3291:                               	; preds = %B3294
  %t543 = load i32, i32* %t2860, align 4
  %t544 = srem i32 %t543, 2
  %t551 = icmp ne i32 %t544, 0
  br i1 %t551, label %B3302, label %B3305
B3313:                               	; preds = %B3286
  %t570 = load i32, i32* %t2858, align 4
  %t571 = icmp slt i32 %t570, 16
  br i1 %t571, label %B3314, label %B3318
B3375:                               	; preds = %B3373, %B3374
  br label %B3369
B3374:                               	; preds = %B3378
  store i32 0, i32* %t2857, align 4
  br label %B3375
B3379:                               	; preds = %B3368
  %t648 = load i32, i32* %t2859, align 4
  %t649 = icmp sgt i32 %t648, 32767
  br i1 %t649, label %B3385, label %B3390
B3384:                               	; preds = %B3368
  br label %B3380
B3516:                               	; preds = %B3511
  %t803 = load i32, i32* %t2860, align 4
  %t804 = srem i32 %t803, 2
  %t805 = icmp eq i32 %t804, 0
  br i1 %t805, label %B3522, label %B3526
B3520:                               	; preds = %B3511
  br label %B3517
B3512:                               	; preds = %B3515, %B3538
  %t832 = load i32, i32* %t2857, align 4
  store i32 %t832, i32* %t3503, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t836 = load i32, i32* %t3501, align 4
  store i32 %t836, i32* %t2859, align 4
  %t838 = load i32, i32* %t3502, align 4
  store i32 %t838, i32* %t2860, align 4
  br label %B3539
B3603:                               	; preds = %B3602, %B3610
  %t922 = load i32, i32* %t2859, align 4
  %t923 = srem i32 %t922, 2
  %t942 = icmp ne i32 %t923, 0
  br i1 %t942, label %B3608, label %B3612
B3607:                               	; preds = %B3602
  br label %B3604
B3685:                               	; preds = %B3598
  %t1032 = load i32, i32* %t2859, align 4
  %t1033 = icmp slt i32 %t1032, 0
  br i1 %t1033, label %B3691, label %B3696
B3690:                               	; preds = %B3598
  br label %B3686
B3762:                               	; preds = %B3761, %B3769
  %t1119 = load i32, i32* %t2859, align 4
  %t1120 = srem i32 %t1119, 2
  %t1139 = icmp ne i32 %t1120, 0
  br i1 %t1139, label %B3767, label %B3771
B3766:                               	; preds = %B3761
  br label %B3763
B3853:                               	; preds = %B3848
  %t1238 = load i32, i32* %t2858, align 4
  %t1239 = icmp slt i32 %t1238, 16
  br i1 %t1239, label %B3854, label %B3858
B3849:                               	; preds = %B3851, %B3934
  %t1342 = load i32, i32* %t3844, align 4
  store i32 %t1342, i32* %t2857, align 4
  %t1344 = load i32, i32* %t2857, align 4
  store i32 %t1344, i32* %t3717, align 4
  %t1346 = load i32, i32* %t3718, align 4
  store i32 %t1346, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1348 = load i32, i32* %t2860, align 4
  %t1349 = icmp sge i32 %t1348, 15
  br i1 %t1349, label %B3936, label %B3941
B4056:                               	; preds = %B4058
  %t1483 = load i32, i32* %t2857, align 4
  %t1484 = load i32, i32* %t2858, align 4
  %t1485 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1484
  %t4065 = load i32, i32* %t1485, align 4
  %t1486 = mul i32 1, %t4065
  %t1487 = add i32 %t1483, %t1486
  store i32 %t1487, i32* %t2857, align 4
  br label %B4057
B4063:                               	; preds = %B4058
  br label %B4057
B4057:                               	; preds = %B4056, %B4060, %B4063
  %t1489 = load i32, i32* %t2859, align 4
  %t1490 = sdiv i32 %t1489, 2
  store i32 %t1490, i32* %t2859, align 4
  %t1492 = load i32, i32* %t2860, align 4
  %t1493 = sdiv i32 %t1492, 2
  store i32 %t1493, i32* %t2860, align 4
  %t1495 = load i32, i32* %t2858, align 4
  %t1496 = add i32 %t1495, 1
  store i32 %t1496, i32* %t2858, align 4
  %t4066 = load i32, i32* %t2858, align 4
  %t4067 = icmp slt i32 %t4066, 16
  br i1 %t4067, label %B4051, label %B4070
B4071:                               	; preds = %B4052
  %t1498 = load i32, i32* %t4043, align 4
  store i32 %t1498, i32* %t4076, align 4
  %t1500 = load i32, i32* %t4041, align 4
  store i32 %t1500, i32* %t4077, align 4
  br label %B4079
B4074:                               	; preds = %B4052
  br label %B4072
B4309:                               	; preds = %B4302
  %t1795 = load i32, i32* %t2860, align 4
  %t1796 = srem i32 %t1795, 2
  %t1799 = icmp ne i32 %t1796, 0
  br i1 %t1799, label %B4307, label %B4314
B4311:                               	; preds = %B4302
  br label %B4308
B4303:                               	; preds = %B4306, %B4321
  %t1815 = load i32, i32* %t2857, align 4
  %t1936 = icmp ne i32 %t1815, 0
  br i1 %t1936, label %B4322, label %B4325
B4549:                               	; preds = %B4543
  store i32 65535, i32* %t2857, align 4
  br label %B4551
B4554:                               	; preds = %B4543
  br label %B4550
B4544:                               	; preds = %B4548
  %t2105 = load i32, i32* %t2860, align 4
  %t2106 = icmp sgt i32 %t2105, 0
  br i1 %t2106, label %B4555, label %B4560
B4630:                               	; preds = %B4625
  %t2188 = load i32, i32* %t2858, align 4
  %t2189 = icmp slt i32 %t2188, 16
  br i1 %t2189, label %B4631, label %B4635
B4626:                               	; preds = %B4628, %B4870
  %t2490 = load i32, i32* %t4623, align 4
  store i32 %t2490, i32* %t2857, align 4
  %t2492 = load i32, i32* %t2857, align 4
  store i32 %t2492, i32* %t4588, align 4
  br label %B4617
B4876:                               	; preds = %B4875, %B5093
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2504 = load i32, i32* %t4873, align 4
  store i32 %t2504, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4881
B4879:                               	; preds = %B4875
  br label %B4877
B2969:                               	; preds = %B2949
  br label %B2943
B2976:                               	; preds = %B2978
  %t141 = load i32, i32* %t2857, align 4
  %t142 = load i32, i32* %t2858, align 4
  %t143 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t142
  %t2985 = load i32, i32* %t143, align 4
  %t144 = mul i32 1, %t2985
  %t145 = add i32 %t141, %t144
  store i32 %t145, i32* %t2857, align 4
  br label %B2977
B2983:                               	; preds = %B2978
  br label %B2977
B2977:                               	; preds = %B2976, %B2980, %B2983
  %t147 = load i32, i32* %t2859, align 4
  %t148 = sdiv i32 %t147, 2
  store i32 %t148, i32* %t2859, align 4
  %t150 = load i32, i32* %t2860, align 4
  %t151 = sdiv i32 %t150, 2
  store i32 %t151, i32* %t2860, align 4
  %t153 = load i32, i32* %t2858, align 4
  %t154 = add i32 %t153, 1
  store i32 %t154, i32* %t2858, align 4
  %t2986 = load i32, i32* %t2858, align 4
  %t2987 = icmp slt i32 %t2986, 16
  br i1 %t2987, label %B2971, label %B2990
B2991:                               	; preds = %B2972
  store i32 0, i32* %t2857, align 4
  br label %B2993
B2996:                               	; preds = %B2972
  br label %B2992
B3041:                               	; preds = %B3046, %B3052
  %t236 = load i32, i32* %t2859, align 4
  %t237 = sdiv i32 %t236, 2
  store i32 %t237, i32* %t2859, align 4
  %t239 = load i32, i32* %t2860, align 4
  %t240 = sdiv i32 %t239, 2
  store i32 %t240, i32* %t2860, align 4
  %t242 = load i32, i32* %t2858, align 4
  %t243 = add i32 %t242, 1
  store i32 %t243, i32* %t2858, align 4
  %t3057 = load i32, i32* %t2858, align 4
  %t3058 = icmp slt i32 %t3057, 16
  br i1 %t3058, label %B3034, label %B3061
B3052:                               	; preds = %B3051, %B3054
  br label %B3041
B3070:                               	; preds = %B3063
  %t256 = load i32, i32* %t2860, align 4
  %t257 = srem i32 %t256, 2
  %t260 = icmp ne i32 %t257, 0
  br i1 %t260, label %B3068, label %B3075
B3072:                               	; preds = %B3063
  br label %B3069
B3064:                               	; preds = %B3067, %B3082
  %t277 = load i32, i32* %t2857, align 4
  store i32 %t277, i32* %t3025, align 4
  %t278 = icmp sgt i32 1, 15
  br i1 %t278, label %B3083, label %B3088
B3146:                               	; preds = %B3118
  br label %B2902
B3136:                               	; preds = %B3134, %B3135
  br label %B3130
B3135:                               	; preds = %B3139
  %t346 = load i32, i32* %t2859, align 4
  %t347 = load i32, i32* %t2860, align 4
  %t348 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t347
  %t3142 = load i32, i32* %t348, align 4
  %t349 = sdiv i32 %t346, %t3142
  store i32 %t349, i32* %t2857, align 4
  br label %B3136
B3130:                               	; preds = %B3129, %B3136
  br label %B3118
B3200:                               	; preds = %B3205, %B3211
  %t433 = load i32, i32* %t2859, align 4
  %t434 = sdiv i32 %t433, 2
  store i32 %t434, i32* %t2859, align 4
  %t436 = load i32, i32* %t2860, align 4
  %t437 = sdiv i32 %t436, 2
  store i32 %t437, i32* %t2860, align 4
  %t439 = load i32, i32* %t2858, align 4
  %t440 = add i32 %t439, 1
  store i32 %t440, i32* %t2858, align 4
  %t3216 = load i32, i32* %t2858, align 4
  %t3217 = icmp slt i32 %t3216, 16
  br i1 %t3217, label %B3193, label %B3220
B3211:                               	; preds = %B3210, %B3213
  br label %B3200
B3229:                               	; preds = %B3222
  %t453 = load i32, i32* %t2860, align 4
  %t454 = srem i32 %t453, 2
  %t457 = icmp ne i32 %t454, 0
  br i1 %t457, label %B3227, label %B3234
B3231:                               	; preds = %B3222
  br label %B3228
B3223:                               	; preds = %B3226, %B3241
  %t474 = load i32, i32* %t2857, align 4
  store i32 %t474, i32* %t3184, align 4
  %t475 = icmp sgt i32 1, 15
  br i1 %t475, label %B3242, label %B3247
B3297:                               	; preds = %B3296, %B3300
  br label %B3292
B3302:                               	; preds = %B3291
  %t546 = load i32, i32* %t2857, align 4
  %t547 = load i32, i32* %t2858, align 4
  %t548 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t547
  %t3307 = load i32, i32* %t548, align 4
  %t549 = mul i32 1, %t3307
  %t550 = add i32 %t546, %t549
  store i32 %t550, i32* %t2857, align 4
  br label %B3303
B3305:                               	; preds = %B3291
  br label %B3303
B3314:                               	; preds = %B3313, %B3320
  %t572 = load i32, i32* %t2859, align 4
  %t573 = srem i32 %t572, 2
  %t577 = icmp ne i32 %t573, 0
  br i1 %t577, label %B3321, label %B3323
B3318:                               	; preds = %B3313
  br label %B3315
B3369:                               	; preds = %B3375, %B3381
  %t671 = load i32, i32* %t2857, align 4
  store i32 %t671, i32* %t3149, align 4
  %t3394 = load i32, i32* %t3149, align 4
  %t3395 = icmp ne i32 %t3394, 0
  br i1 %t3395, label %B3152, label %B3397
B3385:                               	; preds = %B3379
  %t651 = load i32, i32* %t2859, align 4
  %t652 = load i32, i32* %t2860, align 4
  %t653 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t652
  %t3391 = load i32, i32* %t653, align 4
  %t654 = sdiv i32 %t651, %t3391
  store i32 %t654, i32* %t2859, align 4
  %t656 = load i32, i32* %t2859, align 4
  %t657 = add i32 %t656, 65536
  %t658 = load i32, i32* %t2860, align 4
  %t659 = sub i32 15, %t658
  %t660 = add i32 %t659, 1
  %t661 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t660
  %t3392 = load i32, i32* %t661, align 4
  %t662 = sub i32 %t657, %t3392
  store i32 %t662, i32* %t2857, align 4
  br label %B3387
B3390:                               	; preds = %B3379
  br label %B3386
B3380:                               	; preds = %B3384
  %t669 = load i32, i32* %t2859, align 4
  store i32 %t669, i32* %t2857, align 4
  br label %B3381
B3522:                               	; preds = %B3516
  %t807 = load i32, i32* %t2857, align 4
  %t808 = load i32, i32* %t2858, align 4
  %t809 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t808
  %t3527 = load i32, i32* %t809, align 4
  %t810 = mul i32 1, %t3527
  %t811 = add i32 %t807, %t810
  store i32 %t811, i32* %t2857, align 4
  br label %B3523
B3526:                               	; preds = %B3516
  br label %B3523
B3517:                               	; preds = %B3520
  %t812 = load i32, i32* %t2860, align 4
  %t813 = srem i32 %t812, 2
  %t820 = icmp ne i32 %t813, 0
  br i1 %t820, label %B3528, label %B3531
B3539:                               	; preds = %B3512
  %t839 = load i32, i32* %t2858, align 4
  %t840 = icmp slt i32 %t839, 16
  br i1 %t840, label %B3540, label %B3544
B3608:                               	; preds = %B3603
  %t924 = load i32, i32* %t2860, align 4
  %t925 = srem i32 %t924, 2
  %t926 = icmp eq i32 %t925, 0
  br i1 %t926, label %B3614, label %B3618
B3612:                               	; preds = %B3603
  br label %B3609
B3604:                               	; preds = %B3607, %B3630
  %t953 = load i32, i32* %t2857, align 4
  store i32 %t953, i32* %t3595, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t957 = load i32, i32* %t3593, align 4
  store i32 %t957, i32* %t2859, align 4
  %t959 = load i32, i32* %t3594, align 4
  store i32 %t959, i32* %t2860, align 4
  br label %B3631
B3691:                               	; preds = %B3685
  store i32 65535, i32* %t2857, align 4
  br label %B3693
B3696:                               	; preds = %B3685
  br label %B3692
B3686:                               	; preds = %B3690
  %t1036 = load i32, i32* %t2860, align 4
  %t1037 = icmp sgt i32 %t1036, 0
  br i1 %t1037, label %B3697, label %B3702
B3767:                               	; preds = %B3762
  %t1121 = load i32, i32* %t2860, align 4
  %t1122 = srem i32 %t1121, 2
  %t1123 = icmp eq i32 %t1122, 0
  br i1 %t1123, label %B3773, label %B3777
B3771:                               	; preds = %B3762
  br label %B3768
B3763:                               	; preds = %B3766, %B3789
  %t1150 = load i32, i32* %t2857, align 4
  store i32 %t1150, i32* %t3754, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1154 = load i32, i32* %t3752, align 4
  store i32 %t1154, i32* %t2859, align 4
  %t1156 = load i32, i32* %t3753, align 4
  store i32 %t1156, i32* %t2860, align 4
  br label %B3790
B3854:                               	; preds = %B3853, %B3861
  %t1240 = load i32, i32* %t2859, align 4
  %t1241 = srem i32 %t1240, 2
  %t1260 = icmp ne i32 %t1241, 0
  br i1 %t1260, label %B3859, label %B3863
B3858:                               	; preds = %B3853
  br label %B3855
B3936:                               	; preds = %B3849
  %t1350 = load i32, i32* %t2859, align 4
  %t1351 = icmp slt i32 %t1350, 0
  br i1 %t1351, label %B3942, label %B3947
B3941:                               	; preds = %B3849
  br label %B3937
B4070:                               	; preds = %B4057
  br label %B4052
B4079:                               	; preds = %B4071
  %t1503 = load i32, i32* %t4077, align 4
  %t1504 = icmp ne i32 %t1503, 0
  br i1 %t1504, label %B4080, label %B4083
B4072:                               	; preds = %B4074, %B4081
  %t1619 = load i32, i32* %t4041, align 4
  store i32 %t1619, i32* %t4168, align 4
  %t1621 = load i32, i32* %t4041, align 4
  store i32 %t1621, i32* %t4169, align 4
  br label %B4171
B4307:                               	; preds = %B4309
  %t1801 = load i32, i32* %t2857, align 4
  %t1802 = load i32, i32* %t2858, align 4
  %t1803 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1802
  %t4316 = load i32, i32* %t1803, align 4
  %t1804 = mul i32 1, %t4316
  %t1805 = add i32 %t1801, %t1804
  store i32 %t1805, i32* %t2857, align 4
  br label %B4308
B4314:                               	; preds = %B4309
  br label %B4308
B4308:                               	; preds = %B4307, %B4311, %B4314
  %t1807 = load i32, i32* %t2859, align 4
  %t1808 = sdiv i32 %t1807, 2
  store i32 %t1808, i32* %t2859, align 4
  %t1810 = load i32, i32* %t2860, align 4
  %t1811 = sdiv i32 %t1810, 2
  store i32 %t1811, i32* %t2860, align 4
  %t1813 = load i32, i32* %t2858, align 4
  %t1814 = add i32 %t1813, 1
  store i32 %t1814, i32* %t2858, align 4
  %t4317 = load i32, i32* %t2858, align 4
  %t4318 = icmp slt i32 %t4317, 16
  br i1 %t4318, label %B4302, label %B4321
B4322:                               	; preds = %B4303
  %t1816 = load i32, i32* %t4294, align 4
  store i32 %t1816, i32* %t4327, align 4
  %t1818 = load i32, i32* %t4292, align 4
  store i32 %t1818, i32* %t4328, align 4
  br label %B4330
B4325:                               	; preds = %B4303
  br label %B4323
B4551:                               	; preds = %B4549, %B4550
  br label %B4545
B4550:                               	; preds = %B4554
  store i32 0, i32* %t2857, align 4
  br label %B4551
B4555:                               	; preds = %B4544
  %t2107 = load i32, i32* %t2859, align 4
  %t2108 = icmp sgt i32 %t2107, 32767
  br i1 %t2108, label %B4561, label %B4566
B4560:                               	; preds = %B4544
  br label %B4556
B4631:                               	; preds = %B4630, %B4637
  %t2190 = load i32, i32* %t2859, align 4
  %t2191 = srem i32 %t2190, 2
  %t2195 = icmp ne i32 %t2191, 0
  br i1 %t2195, label %B4638, label %B4640
B4635:                               	; preds = %B4630
  br label %B4632
B4881:                               	; preds = %B4876
  %t2506 = load i32, i32* %t2858, align 4
  %t2507 = icmp slt i32 %t2506, 16
  br i1 %t2507, label %B4882, label %B4886
B4877:                               	; preds = %B4879, %B5121
  %t2808 = load i32, i32* %t4874, align 4
  store i32 %t2808, i32* %t2857, align 4
  %t2810 = load i32, i32* %t2857, align 4
  store i32 %t2810, i32* %t4586, align 4
  %t2812 = load i32, i32* %t4587, align 4
  store i32 %t2812, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2814 = load i32, i32* %t2860, align 4
  %t2815 = icmp sge i32 %t2814, 15
  br i1 %t2815, label %B5123, label %B5128
B2990:                               	; preds = %B2977
  br label %B2972
B2993:                               	; preds = %B2991, %B3000
  %t191 = load i32, i32* %t2857, align 4
  store i32 %t191, i32* %t2933, align 4
  %t193 = load i32, i32* %t2934, align 4
  store i32 %t193, i32* %t2932, align 4
  %t3019 = load i32, i32* %t2933, align 4
  %t3020 = icmp ne i32 %t3019, 0
  br i1 %t3020, label %B2936, label %B3022
B2992:                               	; preds = %B2996
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t162 = load i32, i32* %t2933, align 4
  %t163 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t2997 = load i32, i32* %t163, align 4
  %t164 = mul i32 %t162, %t2997
  store i32 %t164, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B2998
B3061:                               	; preds = %B3041
  br label %B3035
B3068:                               	; preds = %B3070
  %t262 = load i32, i32* %t2857, align 4
  %t263 = load i32, i32* %t2858, align 4
  %t264 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t263
  %t3077 = load i32, i32* %t264, align 4
  %t265 = mul i32 1, %t3077
  %t266 = add i32 %t262, %t265
  store i32 %t266, i32* %t2857, align 4
  br label %B3069
B3075:                               	; preds = %B3070
  br label %B3069
B3069:                               	; preds = %B3068, %B3072, %B3075
  %t268 = load i32, i32* %t2859, align 4
  %t269 = sdiv i32 %t268, 2
  store i32 %t269, i32* %t2859, align 4
  %t271 = load i32, i32* %t2860, align 4
  %t272 = sdiv i32 %t271, 2
  store i32 %t272, i32* %t2860, align 4
  %t274 = load i32, i32* %t2858, align 4
  %t275 = add i32 %t274, 1
  store i32 %t275, i32* %t2858, align 4
  %t3078 = load i32, i32* %t2858, align 4
  %t3079 = icmp slt i32 %t3078, 16
  br i1 %t3079, label %B3063, label %B3082
B3083:                               	; preds = %B3064
  store i32 0, i32* %t2857, align 4
  br label %B3085
B3088:                               	; preds = %B3064
  br label %B3084
B3220:                               	; preds = %B3200
  br label %B3194
B3227:                               	; preds = %B3229
  %t459 = load i32, i32* %t2857, align 4
  %t460 = load i32, i32* %t2858, align 4
  %t461 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t460
  %t3236 = load i32, i32* %t461, align 4
  %t462 = mul i32 1, %t3236
  %t463 = add i32 %t459, %t462
  store i32 %t463, i32* %t2857, align 4
  br label %B3228
B3234:                               	; preds = %B3229
  br label %B3228
B3228:                               	; preds = %B3227, %B3231, %B3234
  %t465 = load i32, i32* %t2859, align 4
  %t466 = sdiv i32 %t465, 2
  store i32 %t466, i32* %t2859, align 4
  %t468 = load i32, i32* %t2860, align 4
  %t469 = sdiv i32 %t468, 2
  store i32 %t469, i32* %t2860, align 4
  %t471 = load i32, i32* %t2858, align 4
  %t472 = add i32 %t471, 1
  store i32 %t472, i32* %t2858, align 4
  %t3237 = load i32, i32* %t2858, align 4
  %t3238 = icmp slt i32 %t3237, 16
  br i1 %t3238, label %B3222, label %B3241
B3242:                               	; preds = %B3223
  store i32 0, i32* %t2857, align 4
  br label %B3244
B3247:                               	; preds = %B3223
  br label %B3243
B3292:                               	; preds = %B3297, %B3303
  %t554 = load i32, i32* %t2859, align 4
  %t555 = sdiv i32 %t554, 2
  store i32 %t555, i32* %t2859, align 4
  %t557 = load i32, i32* %t2860, align 4
  %t558 = sdiv i32 %t557, 2
  store i32 %t558, i32* %t2860, align 4
  %t560 = load i32, i32* %t2858, align 4
  %t561 = add i32 %t560, 1
  store i32 %t561, i32* %t2858, align 4
  %t3308 = load i32, i32* %t2858, align 4
  %t3309 = icmp slt i32 %t3308, 16
  br i1 %t3309, label %B3285, label %B3312
B3303:                               	; preds = %B3302, %B3305
  br label %B3292
B3321:                               	; preds = %B3314
  %t574 = load i32, i32* %t2860, align 4
  %t575 = srem i32 %t574, 2
  %t578 = icmp ne i32 %t575, 0
  br i1 %t578, label %B3319, label %B3326
B3323:                               	; preds = %B3314
  br label %B3320
B3315:                               	; preds = %B3318, %B3333
  %t595 = load i32, i32* %t2857, align 4
  store i32 %t595, i32* %t3276, align 4
  %t596 = icmp sgt i32 1, 15
  br i1 %t596, label %B3334, label %B3339
B3397:                               	; preds = %B3369
  br label %B3153
B3387:                               	; preds = %B3385, %B3386
  br label %B3381
B3386:                               	; preds = %B3390
  %t664 = load i32, i32* %t2859, align 4
  %t665 = load i32, i32* %t2860, align 4
  %t666 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t665
  %t3393 = load i32, i32* %t666, align 4
  %t667 = sdiv i32 %t664, %t3393
  store i32 %t667, i32* %t2857, align 4
  br label %B3387
B3381:                               	; preds = %B3380, %B3387
  br label %B3369
B3523:                               	; preds = %B3522, %B3526
  br label %B3518
B3528:                               	; preds = %B3517
  %t815 = load i32, i32* %t2857, align 4
  %t816 = load i32, i32* %t2858, align 4
  %t817 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t816
  %t3533 = load i32, i32* %t817, align 4
  %t818 = mul i32 1, %t3533
  %t819 = add i32 %t815, %t818
  store i32 %t819, i32* %t2857, align 4
  br label %B3529
B3531:                               	; preds = %B3517
  br label %B3529
B3540:                               	; preds = %B3539, %B3546
  %t841 = load i32, i32* %t2859, align 4
  %t842 = srem i32 %t841, 2
  %t846 = icmp ne i32 %t842, 0
  br i1 %t846, label %B3547, label %B3549
B3544:                               	; preds = %B3539
  br label %B3541
B3614:                               	; preds = %B3608
  %t928 = load i32, i32* %t2857, align 4
  %t929 = load i32, i32* %t2858, align 4
  %t930 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t929
  %t3619 = load i32, i32* %t930, align 4
  %t931 = mul i32 1, %t3619
  %t932 = add i32 %t928, %t931
  store i32 %t932, i32* %t2857, align 4
  br label %B3615
B3618:                               	; preds = %B3608
  br label %B3615
B3609:                               	; preds = %B3612
  %t933 = load i32, i32* %t2860, align 4
  %t934 = srem i32 %t933, 2
  %t941 = icmp ne i32 %t934, 0
  br i1 %t941, label %B3620, label %B3623
B3631:                               	; preds = %B3604
  %t960 = load i32, i32* %t2858, align 4
  %t961 = icmp slt i32 %t960, 16
  br i1 %t961, label %B3632, label %B3636
B3693:                               	; preds = %B3691, %B3692
  br label %B3687
B3692:                               	; preds = %B3696
  store i32 0, i32* %t2857, align 4
  br label %B3693
B3697:                               	; preds = %B3686
  %t1038 = load i32, i32* %t2859, align 4
  %t1039 = icmp sgt i32 %t1038, 32767
  br i1 %t1039, label %B3703, label %B3708
B3702:                               	; preds = %B3686
  br label %B3698
B3773:                               	; preds = %B3767
  %t1125 = load i32, i32* %t2857, align 4
  %t1126 = load i32, i32* %t2858, align 4
  %t1127 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1126
  %t3778 = load i32, i32* %t1127, align 4
  %t1128 = mul i32 1, %t3778
  %t1129 = add i32 %t1125, %t1128
  store i32 %t1129, i32* %t2857, align 4
  br label %B3774
B3777:                               	; preds = %B3767
  br label %B3774
B3768:                               	; preds = %B3771
  %t1130 = load i32, i32* %t2860, align 4
  %t1131 = srem i32 %t1130, 2
  %t1138 = icmp ne i32 %t1131, 0
  br i1 %t1138, label %B3779, label %B3782
B3790:                               	; preds = %B3763
  %t1157 = load i32, i32* %t2858, align 4
  %t1158 = icmp slt i32 %t1157, 16
  br i1 %t1158, label %B3791, label %B3795
B3859:                               	; preds = %B3854
  %t1242 = load i32, i32* %t2860, align 4
  %t1243 = srem i32 %t1242, 2
  %t1244 = icmp eq i32 %t1243, 0
  br i1 %t1244, label %B3865, label %B3869
B3863:                               	; preds = %B3854
  br label %B3860
B3855:                               	; preds = %B3858, %B3881
  %t1271 = load i32, i32* %t2857, align 4
  store i32 %t1271, i32* %t3846, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1275 = load i32, i32* %t3844, align 4
  store i32 %t1275, i32* %t2859, align 4
  %t1277 = load i32, i32* %t3845, align 4
  store i32 %t1277, i32* %t2860, align 4
  br label %B3882
B3942:                               	; preds = %B3936
  store i32 65535, i32* %t2857, align 4
  br label %B3944
B3947:                               	; preds = %B3936
  br label %B3943
B3937:                               	; preds = %B3941
  %t1354 = load i32, i32* %t2860, align 4
  %t1355 = icmp sgt i32 %t1354, 0
  br i1 %t1355, label %B3948, label %B3953
B4080:                               	; preds = %B4079, %B4137
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1508 = load i32, i32* %t4076, align 4
  store i32 %t1508, i32* %t2859, align 4
  %t1510 = load i32, i32* %t4077, align 4
  store i32 %t1510, i32* %t2860, align 4
  br label %B4085
B4083:                               	; preds = %B4079
  br label %B4081
B4171:                               	; preds = %B4072
  %t1624 = load i32, i32* %t4169, align 4
  %t1625 = icmp ne i32 %t1624, 0
  br i1 %t1625, label %B4172, label %B4175
B4321:                               	; preds = %B4308
  br label %B4303
B4330:                               	; preds = %B4322
  %t1821 = load i32, i32* %t4328, align 4
  %t1822 = icmp ne i32 %t1821, 0
  br i1 %t1822, label %B4331, label %B4334
B4323:                               	; preds = %B4325, %B4332
  %t1937 = load i32, i32* %t4292, align 4
  store i32 %t1937, i32* %t4419, align 4
  %t1939 = load i32, i32* %t4292, align 4
  store i32 %t1939, i32* %t4420, align 4
  br label %B4422
B4545:                               	; preds = %B4551, %B4557
  %t2130 = load i32, i32* %t2857, align 4
  store i32 %t2130, i32* %t4007, align 4
  %t4570 = load i32, i32* %t4007, align 4
  %t4571 = icmp sgt i32 %t4570, 0
  br i1 %t4571, label %B4010, label %B4574
B4561:                               	; preds = %B4555
  %t2110 = load i32, i32* %t2859, align 4
  %t2111 = load i32, i32* %t2860, align 4
  %t2112 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2111
  %t4567 = load i32, i32* %t2112, align 4
  %t2113 = sdiv i32 %t2110, %t4567
  store i32 %t2113, i32* %t2859, align 4
  %t2115 = load i32, i32* %t2859, align 4
  %t2116 = add i32 %t2115, 65536
  %t2117 = load i32, i32* %t2860, align 4
  %t2118 = sub i32 15, %t2117
  %t2119 = add i32 %t2118, 1
  %t2120 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2119
  %t4568 = load i32, i32* %t2120, align 4
  %t2121 = sub i32 %t2116, %t4568
  store i32 %t2121, i32* %t2857, align 4
  br label %B4563
B4566:                               	; preds = %B4555
  br label %B4562
B4556:                               	; preds = %B4560
  %t2128 = load i32, i32* %t2859, align 4
  store i32 %t2128, i32* %t2857, align 4
  br label %B4557
B4638:                               	; preds = %B4631
  %t2192 = load i32, i32* %t2860, align 4
  %t2193 = srem i32 %t2192, 2
  %t2196 = icmp ne i32 %t2193, 0
  br i1 %t2196, label %B4636, label %B4643
B4640:                               	; preds = %B4631
  br label %B4637
B4632:                               	; preds = %B4635, %B4650
  %t2212 = load i32, i32* %t2857, align 4
  %t2333 = icmp ne i32 %t2212, 0
  br i1 %t2333, label %B4651, label %B4654
B4882:                               	; preds = %B4881, %B4888
  %t2508 = load i32, i32* %t2859, align 4
  %t2509 = srem i32 %t2508, 2
  %t2513 = icmp ne i32 %t2509, 0
  br i1 %t2513, label %B4889, label %B4891
B4886:                               	; preds = %B4881
  br label %B4883
B5123:                               	; preds = %B4877
  %t2816 = load i32, i32* %t2859, align 4
  %t2817 = icmp slt i32 %t2816, 0
  br i1 %t2817, label %B5129, label %B5134
B5128:                               	; preds = %B4877
  br label %B5124
B3022:                               	; preds = %B2993
  br label %B2937
B2998:                               	; preds = %B2992
  %t166 = load i32, i32* %t2858, align 4
  %t167 = icmp slt i32 %t166, 16
  br i1 %t167, label %B2999, label %B3003
B3082:                               	; preds = %B3069
  br label %B3064
B3085:                               	; preds = %B3083, %B3092
  %t312 = load i32, i32* %t2857, align 4
  store i32 %t312, i32* %t3025, align 4
  %t314 = load i32, i32* %t3026, align 4
  store i32 %t314, i32* %t3024, align 4
  %t3111 = load i32, i32* %t3025, align 4
  %t3112 = icmp ne i32 %t3111, 0
  br i1 %t3112, label %B3028, label %B3114
B3084:                               	; preds = %B3088
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t283 = load i32, i32* %t3025, align 4
  %t284 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3089 = load i32, i32* %t284, align 4
  %t285 = mul i32 %t283, %t3089
  store i32 %t285, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3090
B3241:                               	; preds = %B3228
  br label %B3223
B3244:                               	; preds = %B3242, %B3251
  %t509 = load i32, i32* %t2857, align 4
  store i32 %t509, i32* %t3184, align 4
  %t511 = load i32, i32* %t3185, align 4
  store i32 %t511, i32* %t3183, align 4
  %t3270 = load i32, i32* %t3184, align 4
  %t3271 = icmp ne i32 %t3270, 0
  br i1 %t3271, label %B3187, label %B3273
B3243:                               	; preds = %B3247
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t480 = load i32, i32* %t3184, align 4
  %t481 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3248 = load i32, i32* %t481, align 4
  %t482 = mul i32 %t480, %t3248
  store i32 %t482, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3249
B3312:                               	; preds = %B3292
  br label %B3286
B3319:                               	; preds = %B3321
  %t580 = load i32, i32* %t2857, align 4
  %t581 = load i32, i32* %t2858, align 4
  %t582 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t581
  %t3328 = load i32, i32* %t582, align 4
  %t583 = mul i32 1, %t3328
  %t584 = add i32 %t580, %t583
  store i32 %t584, i32* %t2857, align 4
  br label %B3320
B3326:                               	; preds = %B3321
  br label %B3320
B3320:                               	; preds = %B3319, %B3323, %B3326
  %t586 = load i32, i32* %t2859, align 4
  %t587 = sdiv i32 %t586, 2
  store i32 %t587, i32* %t2859, align 4
  %t589 = load i32, i32* %t2860, align 4
  %t590 = sdiv i32 %t589, 2
  store i32 %t590, i32* %t2860, align 4
  %t592 = load i32, i32* %t2858, align 4
  %t593 = add i32 %t592, 1
  store i32 %t593, i32* %t2858, align 4
  %t3329 = load i32, i32* %t2858, align 4
  %t3330 = icmp slt i32 %t3329, 16
  br i1 %t3330, label %B3314, label %B3333
B3334:                               	; preds = %B3315
  store i32 0, i32* %t2857, align 4
  br label %B3336
B3339:                               	; preds = %B3315
  br label %B3335
B3518:                               	; preds = %B3523, %B3529
  %t823 = load i32, i32* %t2859, align 4
  %t824 = sdiv i32 %t823, 2
  store i32 %t824, i32* %t2859, align 4
  %t826 = load i32, i32* %t2860, align 4
  %t827 = sdiv i32 %t826, 2
  store i32 %t827, i32* %t2860, align 4
  %t829 = load i32, i32* %t2858, align 4
  %t830 = add i32 %t829, 1
  store i32 %t830, i32* %t2858, align 4
  %t3534 = load i32, i32* %t2858, align 4
  %t3535 = icmp slt i32 %t3534, 16
  br i1 %t3535, label %B3511, label %B3538
B3529:                               	; preds = %B3528, %B3531
  br label %B3518
B3547:                               	; preds = %B3540
  %t843 = load i32, i32* %t2860, align 4
  %t844 = srem i32 %t843, 2
  %t847 = icmp ne i32 %t844, 0
  br i1 %t847, label %B3545, label %B3552
B3549:                               	; preds = %B3540
  br label %B3546
B3541:                               	; preds = %B3544, %B3559
  %t864 = load i32, i32* %t2857, align 4
  store i32 %t864, i32* %t3502, align 4
  %t865 = icmp sgt i32 1, 15
  br i1 %t865, label %B3560, label %B3565
B3615:                               	; preds = %B3614, %B3618
  br label %B3610
B3620:                               	; preds = %B3609
  %t936 = load i32, i32* %t2857, align 4
  %t937 = load i32, i32* %t2858, align 4
  %t938 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t937
  %t3625 = load i32, i32* %t938, align 4
  %t939 = mul i32 1, %t3625
  %t940 = add i32 %t936, %t939
  store i32 %t940, i32* %t2857, align 4
  br label %B3621
B3623:                               	; preds = %B3609
  br label %B3621
B3632:                               	; preds = %B3631, %B3638
  %t962 = load i32, i32* %t2859, align 4
  %t963 = srem i32 %t962, 2
  %t967 = icmp ne i32 %t963, 0
  br i1 %t967, label %B3639, label %B3641
B3636:                               	; preds = %B3631
  br label %B3633
B3687:                               	; preds = %B3693, %B3699
  %t1061 = load i32, i32* %t2857, align 4
  store i32 %t1061, i32* %t3467, align 4
  %t3712 = load i32, i32* %t3467, align 4
  %t3713 = icmp ne i32 %t3712, 0
  br i1 %t3713, label %B3470, label %B3715
B3703:                               	; preds = %B3697
  %t1041 = load i32, i32* %t2859, align 4
  %t1042 = load i32, i32* %t2860, align 4
  %t1043 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1042
  %t3709 = load i32, i32* %t1043, align 4
  %t1044 = sdiv i32 %t1041, %t3709
  store i32 %t1044, i32* %t2859, align 4
  %t1046 = load i32, i32* %t2859, align 4
  %t1047 = add i32 %t1046, 65536
  %t1048 = load i32, i32* %t2860, align 4
  %t1049 = sub i32 15, %t1048
  %t1050 = add i32 %t1049, 1
  %t1051 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1050
  %t3710 = load i32, i32* %t1051, align 4
  %t1052 = sub i32 %t1047, %t3710
  store i32 %t1052, i32* %t2857, align 4
  br label %B3705
B3708:                               	; preds = %B3697
  br label %B3704
B3698:                               	; preds = %B3702
  %t1059 = load i32, i32* %t2859, align 4
  store i32 %t1059, i32* %t2857, align 4
  br label %B3699
B3774:                               	; preds = %B3773, %B3777
  br label %B3769
B3779:                               	; preds = %B3768
  %t1133 = load i32, i32* %t2857, align 4
  %t1134 = load i32, i32* %t2858, align 4
  %t1135 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1134
  %t3784 = load i32, i32* %t1135, align 4
  %t1136 = mul i32 1, %t3784
  %t1137 = add i32 %t1133, %t1136
  store i32 %t1137, i32* %t2857, align 4
  br label %B3780
B3782:                               	; preds = %B3768
  br label %B3780
B3791:                               	; preds = %B3790, %B3797
  %t1159 = load i32, i32* %t2859, align 4
  %t1160 = srem i32 %t1159, 2
  %t1164 = icmp ne i32 %t1160, 0
  br i1 %t1164, label %B3798, label %B3800
B3795:                               	; preds = %B3790
  br label %B3792
B3865:                               	; preds = %B3859
  %t1246 = load i32, i32* %t2857, align 4
  %t1247 = load i32, i32* %t2858, align 4
  %t1248 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1247
  %t3870 = load i32, i32* %t1248, align 4
  %t1249 = mul i32 1, %t3870
  %t1250 = add i32 %t1246, %t1249
  store i32 %t1250, i32* %t2857, align 4
  br label %B3866
B3869:                               	; preds = %B3859
  br label %B3866
B3860:                               	; preds = %B3863
  %t1251 = load i32, i32* %t2860, align 4
  %t1252 = srem i32 %t1251, 2
  %t1259 = icmp ne i32 %t1252, 0
  br i1 %t1259, label %B3871, label %B3874
B3882:                               	; preds = %B3855
  %t1278 = load i32, i32* %t2858, align 4
  %t1279 = icmp slt i32 %t1278, 16
  br i1 %t1279, label %B3883, label %B3887
B3944:                               	; preds = %B3942, %B3943
  br label %B3938
B3943:                               	; preds = %B3947
  store i32 0, i32* %t2857, align 4
  br label %B3944
B3948:                               	; preds = %B3937
  %t1356 = load i32, i32* %t2859, align 4
  %t1357 = icmp sgt i32 %t1356, 32767
  br i1 %t1357, label %B3954, label %B3959
B3953:                               	; preds = %B3937
  br label %B3949
B4085:                               	; preds = %B4080
  %t1511 = load i32, i32* %t2858, align 4
  %t1512 = icmp slt i32 %t1511, 16
  br i1 %t1512, label %B4086, label %B4090
B4081:                               	; preds = %B4083, %B4166
  %t1615 = load i32, i32* %t4076, align 4
  store i32 %t1615, i32* %t2857, align 4
  %t1617 = load i32, i32* %t2857, align 4
  store i32 %t1617, i32* %t4043, align 4
  br label %B4072
B4172:                               	; preds = %B4171, %B4229
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1629 = load i32, i32* %t4168, align 4
  store i32 %t1629, i32* %t2859, align 4
  %t1631 = load i32, i32* %t4169, align 4
  store i32 %t1631, i32* %t2860, align 4
  br label %B4177
B4175:                               	; preds = %B4171
  br label %B4173
B4331:                               	; preds = %B4330, %B4388
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1826 = load i32, i32* %t4327, align 4
  store i32 %t1826, i32* %t2859, align 4
  %t1828 = load i32, i32* %t4328, align 4
  store i32 %t1828, i32* %t2860, align 4
  br label %B4336
B4334:                               	; preds = %B4330
  br label %B4332
B4422:                               	; preds = %B4323
  %t1942 = load i32, i32* %t4420, align 4
  %t1943 = icmp ne i32 %t1942, 0
  br i1 %t1943, label %B4423, label %B4426
B4574:                               	; preds = %B4545
  br label %B4011
B4563:                               	; preds = %B4561, %B4562
  br label %B4557
B4562:                               	; preds = %B4566
  %t2123 = load i32, i32* %t2859, align 4
  %t2124 = load i32, i32* %t2860, align 4
  %t2125 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2124
  %t4569 = load i32, i32* %t2125, align 4
  %t2126 = sdiv i32 %t2123, %t4569
  store i32 %t2126, i32* %t2857, align 4
  br label %B4563
B4557:                               	; preds = %B4556, %B4563
  br label %B4545
B4636:                               	; preds = %B4638
  %t2198 = load i32, i32* %t2857, align 4
  %t2199 = load i32, i32* %t2858, align 4
  %t2200 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2199
  %t4645 = load i32, i32* %t2200, align 4
  %t2201 = mul i32 1, %t4645
  %t2202 = add i32 %t2198, %t2201
  store i32 %t2202, i32* %t2857, align 4
  br label %B4637
B4643:                               	; preds = %B4638
  br label %B4637
B4637:                               	; preds = %B4636, %B4640, %B4643
  %t2204 = load i32, i32* %t2859, align 4
  %t2205 = sdiv i32 %t2204, 2
  store i32 %t2205, i32* %t2859, align 4
  %t2207 = load i32, i32* %t2860, align 4
  %t2208 = sdiv i32 %t2207, 2
  store i32 %t2208, i32* %t2860, align 4
  %t2210 = load i32, i32* %t2858, align 4
  %t2211 = add i32 %t2210, 1
  store i32 %t2211, i32* %t2858, align 4
  %t4646 = load i32, i32* %t2858, align 4
  %t4647 = icmp slt i32 %t4646, 16
  br i1 %t4647, label %B4631, label %B4650
B4651:                               	; preds = %B4632
  %t2213 = load i32, i32* %t4623, align 4
  store i32 %t2213, i32* %t4656, align 4
  %t2215 = load i32, i32* %t4621, align 4
  store i32 %t2215, i32* %t4657, align 4
  br label %B4659
B4654:                               	; preds = %B4632
  br label %B4652
B4889:                               	; preds = %B4882
  %t2510 = load i32, i32* %t2860, align 4
  %t2511 = srem i32 %t2510, 2
  %t2514 = icmp ne i32 %t2511, 0
  br i1 %t2514, label %B4887, label %B4894
B4891:                               	; preds = %B4882
  br label %B4888
B4883:                               	; preds = %B4886, %B4901
  %t2530 = load i32, i32* %t2857, align 4
  %t2651 = icmp ne i32 %t2530, 0
  br i1 %t2651, label %B4902, label %B4905
B5129:                               	; preds = %B5123
  store i32 65535, i32* %t2857, align 4
  br label %B5131
B5134:                               	; preds = %B5123
  br label %B5130
B5124:                               	; preds = %B5128
  %t2820 = load i32, i32* %t2860, align 4
  %t2821 = icmp sgt i32 %t2820, 0
  br i1 %t2821, label %B5135, label %B5140
B2999:                               	; preds = %B2998, %B3005
  %t168 = load i32, i32* %t2859, align 4
  %t169 = srem i32 %t168, 2
  %t173 = icmp ne i32 %t169, 0
  br i1 %t173, label %B3006, label %B3008
B3003:                               	; preds = %B2998
  br label %B3000
B3114:                               	; preds = %B3085
  br label %B3029
B3090:                               	; preds = %B3084
  %t287 = load i32, i32* %t2858, align 4
  %t288 = icmp slt i32 %t287, 16
  br i1 %t288, label %B3091, label %B3095
B3273:                               	; preds = %B3244
  br label %B3188
B3249:                               	; preds = %B3243
  %t484 = load i32, i32* %t2858, align 4
  %t485 = icmp slt i32 %t484, 16
  br i1 %t485, label %B3250, label %B3254
B3333:                               	; preds = %B3320
  br label %B3315
B3336:                               	; preds = %B3334, %B3343
  %t630 = load i32, i32* %t2857, align 4
  store i32 %t630, i32* %t3276, align 4
  %t632 = load i32, i32* %t3277, align 4
  store i32 %t632, i32* %t3275, align 4
  %t3362 = load i32, i32* %t3276, align 4
  %t3363 = icmp ne i32 %t3362, 0
  br i1 %t3363, label %B3279, label %B3365
B3335:                               	; preds = %B3339
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t601 = load i32, i32* %t3276, align 4
  %t602 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3340 = load i32, i32* %t602, align 4
  %t603 = mul i32 %t601, %t3340
  store i32 %t603, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3341
B3538:                               	; preds = %B3518
  br label %B3512
B3545:                               	; preds = %B3547
  %t849 = load i32, i32* %t2857, align 4
  %t850 = load i32, i32* %t2858, align 4
  %t851 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t850
  %t3554 = load i32, i32* %t851, align 4
  %t852 = mul i32 1, %t3554
  %t853 = add i32 %t849, %t852
  store i32 %t853, i32* %t2857, align 4
  br label %B3546
B3552:                               	; preds = %B3547
  br label %B3546
B3546:                               	; preds = %B3545, %B3549, %B3552
  %t855 = load i32, i32* %t2859, align 4
  %t856 = sdiv i32 %t855, 2
  store i32 %t856, i32* %t2859, align 4
  %t858 = load i32, i32* %t2860, align 4
  %t859 = sdiv i32 %t858, 2
  store i32 %t859, i32* %t2860, align 4
  %t861 = load i32, i32* %t2858, align 4
  %t862 = add i32 %t861, 1
  store i32 %t862, i32* %t2858, align 4
  %t3555 = load i32, i32* %t2858, align 4
  %t3556 = icmp slt i32 %t3555, 16
  br i1 %t3556, label %B3540, label %B3559
B3560:                               	; preds = %B3541
  store i32 0, i32* %t2857, align 4
  br label %B3562
B3565:                               	; preds = %B3541
  br label %B3561
B3610:                               	; preds = %B3615, %B3621
  %t944 = load i32, i32* %t2859, align 4
  %t945 = sdiv i32 %t944, 2
  store i32 %t945, i32* %t2859, align 4
  %t947 = load i32, i32* %t2860, align 4
  %t948 = sdiv i32 %t947, 2
  store i32 %t948, i32* %t2860, align 4
  %t950 = load i32, i32* %t2858, align 4
  %t951 = add i32 %t950, 1
  store i32 %t951, i32* %t2858, align 4
  %t3626 = load i32, i32* %t2858, align 4
  %t3627 = icmp slt i32 %t3626, 16
  br i1 %t3627, label %B3603, label %B3630
B3621:                               	; preds = %B3620, %B3623
  br label %B3610
B3639:                               	; preds = %B3632
  %t964 = load i32, i32* %t2860, align 4
  %t965 = srem i32 %t964, 2
  %t968 = icmp ne i32 %t965, 0
  br i1 %t968, label %B3637, label %B3644
B3641:                               	; preds = %B3632
  br label %B3638
B3633:                               	; preds = %B3636, %B3651
  %t985 = load i32, i32* %t2857, align 4
  store i32 %t985, i32* %t3594, align 4
  %t986 = icmp sgt i32 1, 15
  br i1 %t986, label %B3652, label %B3657
B3715:                               	; preds = %B3687
  br label %B3471
B3705:                               	; preds = %B3703, %B3704
  br label %B3699
B3704:                               	; preds = %B3708
  %t1054 = load i32, i32* %t2859, align 4
  %t1055 = load i32, i32* %t2860, align 4
  %t1056 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1055
  %t3711 = load i32, i32* %t1056, align 4
  %t1057 = sdiv i32 %t1054, %t3711
  store i32 %t1057, i32* %t2857, align 4
  br label %B3705
B3699:                               	; preds = %B3698, %B3705
  br label %B3687
B3769:                               	; preds = %B3774, %B3780
  %t1141 = load i32, i32* %t2859, align 4
  %t1142 = sdiv i32 %t1141, 2
  store i32 %t1142, i32* %t2859, align 4
  %t1144 = load i32, i32* %t2860, align 4
  %t1145 = sdiv i32 %t1144, 2
  store i32 %t1145, i32* %t2860, align 4
  %t1147 = load i32, i32* %t2858, align 4
  %t1148 = add i32 %t1147, 1
  store i32 %t1148, i32* %t2858, align 4
  %t3785 = load i32, i32* %t2858, align 4
  %t3786 = icmp slt i32 %t3785, 16
  br i1 %t3786, label %B3762, label %B3789
B3780:                               	; preds = %B3779, %B3782
  br label %B3769
B3798:                               	; preds = %B3791
  %t1161 = load i32, i32* %t2860, align 4
  %t1162 = srem i32 %t1161, 2
  %t1165 = icmp ne i32 %t1162, 0
  br i1 %t1165, label %B3796, label %B3803
B3800:                               	; preds = %B3791
  br label %B3797
B3792:                               	; preds = %B3795, %B3810
  %t1182 = load i32, i32* %t2857, align 4
  store i32 %t1182, i32* %t3753, align 4
  %t1183 = icmp sgt i32 1, 15
  br i1 %t1183, label %B3811, label %B3816
B3866:                               	; preds = %B3865, %B3869
  br label %B3861
B3871:                               	; preds = %B3860
  %t1254 = load i32, i32* %t2857, align 4
  %t1255 = load i32, i32* %t2858, align 4
  %t1256 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1255
  %t3876 = load i32, i32* %t1256, align 4
  %t1257 = mul i32 1, %t3876
  %t1258 = add i32 %t1254, %t1257
  store i32 %t1258, i32* %t2857, align 4
  br label %B3872
B3874:                               	; preds = %B3860
  br label %B3872
B3883:                               	; preds = %B3882, %B3889
  %t1280 = load i32, i32* %t2859, align 4
  %t1281 = srem i32 %t1280, 2
  %t1285 = icmp ne i32 %t1281, 0
  br i1 %t1285, label %B3890, label %B3892
B3887:                               	; preds = %B3882
  br label %B3884
B3938:                               	; preds = %B3944, %B3950
  %t1379 = load i32, i32* %t2857, align 4
  store i32 %t1379, i32* %t3718, align 4
  %t3963 = load i32, i32* %t3718, align 4
  %t3964 = icmp ne i32 %t3963, 0
  br i1 %t3964, label %B3721, label %B3966
B3954:                               	; preds = %B3948
  %t1359 = load i32, i32* %t2859, align 4
  %t1360 = load i32, i32* %t2860, align 4
  %t1361 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1360
  %t3960 = load i32, i32* %t1361, align 4
  %t1362 = sdiv i32 %t1359, %t3960
  store i32 %t1362, i32* %t2859, align 4
  %t1364 = load i32, i32* %t2859, align 4
  %t1365 = add i32 %t1364, 65536
  %t1366 = load i32, i32* %t2860, align 4
  %t1367 = sub i32 15, %t1366
  %t1368 = add i32 %t1367, 1
  %t1369 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1368
  %t3961 = load i32, i32* %t1369, align 4
  %t1370 = sub i32 %t1365, %t3961
  store i32 %t1370, i32* %t2857, align 4
  br label %B3956
B3959:                               	; preds = %B3948
  br label %B3955
B3949:                               	; preds = %B3953
  %t1377 = load i32, i32* %t2859, align 4
  store i32 %t1377, i32* %t2857, align 4
  br label %B3950
B4086:                               	; preds = %B4085, %B4093
  %t1513 = load i32, i32* %t2859, align 4
  %t1514 = srem i32 %t1513, 2
  %t1533 = icmp ne i32 %t1514, 0
  br i1 %t1533, label %B4091, label %B4095
B4090:                               	; preds = %B4085
  br label %B4087
B4177:                               	; preds = %B4172
  %t1632 = load i32, i32* %t2858, align 4
  %t1633 = icmp slt i32 %t1632, 16
  br i1 %t1633, label %B4178, label %B4182
B4173:                               	; preds = %B4175, %B4258
  %t1736 = load i32, i32* %t4168, align 4
  store i32 %t1736, i32* %t2857, align 4
  %t1738 = load i32, i32* %t2857, align 4
  store i32 %t1738, i32* %t4041, align 4
  %t1740 = load i32, i32* %t4042, align 4
  store i32 %t1740, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1742 = load i32, i32* %t2860, align 4
  %t1743 = icmp sge i32 %t1742, 15
  br i1 %t1743, label %B4260, label %B4265
B4336:                               	; preds = %B4331
  %t1829 = load i32, i32* %t2858, align 4
  %t1830 = icmp slt i32 %t1829, 16
  br i1 %t1830, label %B4337, label %B4341
B4332:                               	; preds = %B4334, %B4417
  %t1933 = load i32, i32* %t4327, align 4
  store i32 %t1933, i32* %t2857, align 4
  %t1935 = load i32, i32* %t2857, align 4
  store i32 %t1935, i32* %t4294, align 4
  br label %B4323
B4423:                               	; preds = %B4422, %B4480
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1947 = load i32, i32* %t4419, align 4
  store i32 %t1947, i32* %t2859, align 4
  %t1949 = load i32, i32* %t4420, align 4
  store i32 %t1949, i32* %t2860, align 4
  br label %B4428
B4426:                               	; preds = %B4422
  br label %B4424
B4650:                               	; preds = %B4637
  br label %B4632
B4659:                               	; preds = %B4651
  %t2218 = load i32, i32* %t4657, align 4
  %t2219 = icmp ne i32 %t2218, 0
  br i1 %t2219, label %B4660, label %B4663
B4652:                               	; preds = %B4654, %B4661
  %t2334 = load i32, i32* %t4621, align 4
  store i32 %t2334, i32* %t4748, align 4
  %t2336 = load i32, i32* %t4621, align 4
  store i32 %t2336, i32* %t4749, align 4
  br label %B4751
B4887:                               	; preds = %B4889
  %t2516 = load i32, i32* %t2857, align 4
  %t2517 = load i32, i32* %t2858, align 4
  %t2518 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2517
  %t4896 = load i32, i32* %t2518, align 4
  %t2519 = mul i32 1, %t4896
  %t2520 = add i32 %t2516, %t2519
  store i32 %t2520, i32* %t2857, align 4
  br label %B4888
B4894:                               	; preds = %B4889
  br label %B4888
B4888:                               	; preds = %B4887, %B4891, %B4894
  %t2522 = load i32, i32* %t2859, align 4
  %t2523 = sdiv i32 %t2522, 2
  store i32 %t2523, i32* %t2859, align 4
  %t2525 = load i32, i32* %t2860, align 4
  %t2526 = sdiv i32 %t2525, 2
  store i32 %t2526, i32* %t2860, align 4
  %t2528 = load i32, i32* %t2858, align 4
  %t2529 = add i32 %t2528, 1
  store i32 %t2529, i32* %t2858, align 4
  %t4897 = load i32, i32* %t2858, align 4
  %t4898 = icmp slt i32 %t4897, 16
  br i1 %t4898, label %B4882, label %B4901
B4902:                               	; preds = %B4883
  %t2531 = load i32, i32* %t4874, align 4
  store i32 %t2531, i32* %t4907, align 4
  %t2533 = load i32, i32* %t4872, align 4
  store i32 %t2533, i32* %t4908, align 4
  br label %B4910
B4905:                               	; preds = %B4883
  br label %B4903
B5131:                               	; preds = %B5129, %B5130
  br label %B5125
B5130:                               	; preds = %B5134
  store i32 0, i32* %t2857, align 4
  br label %B5131
B5135:                               	; preds = %B5124
  %t2822 = load i32, i32* %t2859, align 4
  %t2823 = icmp sgt i32 %t2822, 32767
  br i1 %t2823, label %B5141, label %B5146
B5140:                               	; preds = %B5124
  br label %B5136
B3006:                               	; preds = %B2999
  %t170 = load i32, i32* %t2860, align 4
  %t171 = srem i32 %t170, 2
  %t174 = icmp ne i32 %t171, 0
  br i1 %t174, label %B3004, label %B3011
B3008:                               	; preds = %B2999
  br label %B3005
B3000:                               	; preds = %B3003, %B3018
  br label %B2993
B3091:                               	; preds = %B3090, %B3097
  %t289 = load i32, i32* %t2859, align 4
  %t290 = srem i32 %t289, 2
  %t294 = icmp ne i32 %t290, 0
  br i1 %t294, label %B3098, label %B3100
B3095:                               	; preds = %B3090
  br label %B3092
B3250:                               	; preds = %B3249, %B3256
  %t486 = load i32, i32* %t2859, align 4
  %t487 = srem i32 %t486, 2
  %t491 = icmp ne i32 %t487, 0
  br i1 %t491, label %B3257, label %B3259
B3254:                               	; preds = %B3249
  br label %B3251
B3365:                               	; preds = %B3336
  br label %B3280
B3341:                               	; preds = %B3335
  %t605 = load i32, i32* %t2858, align 4
  %t606 = icmp slt i32 %t605, 16
  br i1 %t606, label %B3342, label %B3346
B3559:                               	; preds = %B3546
  br label %B3541
B3562:                               	; preds = %B3560, %B3569
  %t899 = load i32, i32* %t2857, align 4
  store i32 %t899, i32* %t3502, align 4
  %t901 = load i32, i32* %t3503, align 4
  store i32 %t901, i32* %t3501, align 4
  %t3588 = load i32, i32* %t3502, align 4
  %t3589 = icmp ne i32 %t3588, 0
  br i1 %t3589, label %B3505, label %B3591
B3561:                               	; preds = %B3565
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t870 = load i32, i32* %t3502, align 4
  %t871 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3566 = load i32, i32* %t871, align 4
  %t872 = mul i32 %t870, %t3566
  store i32 %t872, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3567
B3630:                               	; preds = %B3610
  br label %B3604
B3637:                               	; preds = %B3639
  %t970 = load i32, i32* %t2857, align 4
  %t971 = load i32, i32* %t2858, align 4
  %t972 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t971
  %t3646 = load i32, i32* %t972, align 4
  %t973 = mul i32 1, %t3646
  %t974 = add i32 %t970, %t973
  store i32 %t974, i32* %t2857, align 4
  br label %B3638
B3644:                               	; preds = %B3639
  br label %B3638
B3638:                               	; preds = %B3637, %B3641, %B3644
  %t976 = load i32, i32* %t2859, align 4
  %t977 = sdiv i32 %t976, 2
  store i32 %t977, i32* %t2859, align 4
  %t979 = load i32, i32* %t2860, align 4
  %t980 = sdiv i32 %t979, 2
  store i32 %t980, i32* %t2860, align 4
  %t982 = load i32, i32* %t2858, align 4
  %t983 = add i32 %t982, 1
  store i32 %t983, i32* %t2858, align 4
  %t3647 = load i32, i32* %t2858, align 4
  %t3648 = icmp slt i32 %t3647, 16
  br i1 %t3648, label %B3632, label %B3651
B3652:                               	; preds = %B3633
  store i32 0, i32* %t2857, align 4
  br label %B3654
B3657:                               	; preds = %B3633
  br label %B3653
B3789:                               	; preds = %B3769
  br label %B3763
B3796:                               	; preds = %B3798
  %t1167 = load i32, i32* %t2857, align 4
  %t1168 = load i32, i32* %t2858, align 4
  %t1169 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1168
  %t3805 = load i32, i32* %t1169, align 4
  %t1170 = mul i32 1, %t3805
  %t1171 = add i32 %t1167, %t1170
  store i32 %t1171, i32* %t2857, align 4
  br label %B3797
B3803:                               	; preds = %B3798
  br label %B3797
B3797:                               	; preds = %B3796, %B3800, %B3803
  %t1173 = load i32, i32* %t2859, align 4
  %t1174 = sdiv i32 %t1173, 2
  store i32 %t1174, i32* %t2859, align 4
  %t1176 = load i32, i32* %t2860, align 4
  %t1177 = sdiv i32 %t1176, 2
  store i32 %t1177, i32* %t2860, align 4
  %t1179 = load i32, i32* %t2858, align 4
  %t1180 = add i32 %t1179, 1
  store i32 %t1180, i32* %t2858, align 4
  %t3806 = load i32, i32* %t2858, align 4
  %t3807 = icmp slt i32 %t3806, 16
  br i1 %t3807, label %B3791, label %B3810
B3811:                               	; preds = %B3792
  store i32 0, i32* %t2857, align 4
  br label %B3813
B3816:                               	; preds = %B3792
  br label %B3812
B3861:                               	; preds = %B3866, %B3872
  %t1262 = load i32, i32* %t2859, align 4
  %t1263 = sdiv i32 %t1262, 2
  store i32 %t1263, i32* %t2859, align 4
  %t1265 = load i32, i32* %t2860, align 4
  %t1266 = sdiv i32 %t1265, 2
  store i32 %t1266, i32* %t2860, align 4
  %t1268 = load i32, i32* %t2858, align 4
  %t1269 = add i32 %t1268, 1
  store i32 %t1269, i32* %t2858, align 4
  %t3877 = load i32, i32* %t2858, align 4
  %t3878 = icmp slt i32 %t3877, 16
  br i1 %t3878, label %B3854, label %B3881
B3872:                               	; preds = %B3871, %B3874
  br label %B3861
B3890:                               	; preds = %B3883
  %t1282 = load i32, i32* %t2860, align 4
  %t1283 = srem i32 %t1282, 2
  %t1286 = icmp ne i32 %t1283, 0
  br i1 %t1286, label %B3888, label %B3895
B3892:                               	; preds = %B3883
  br label %B3889
B3884:                               	; preds = %B3887, %B3902
  %t1303 = load i32, i32* %t2857, align 4
  store i32 %t1303, i32* %t3845, align 4
  %t1304 = icmp sgt i32 1, 15
  br i1 %t1304, label %B3903, label %B3908
B3966:                               	; preds = %B3938
  br label %B3722
B3956:                               	; preds = %B3954, %B3955
  br label %B3950
B3955:                               	; preds = %B3959
  %t1372 = load i32, i32* %t2859, align 4
  %t1373 = load i32, i32* %t2860, align 4
  %t1374 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1373
  %t3962 = load i32, i32* %t1374, align 4
  %t1375 = sdiv i32 %t1372, %t3962
  store i32 %t1375, i32* %t2857, align 4
  br label %B3956
B3950:                               	; preds = %B3949, %B3956
  br label %B3938
B4091:                               	; preds = %B4086
  %t1515 = load i32, i32* %t2860, align 4
  %t1516 = srem i32 %t1515, 2
  %t1517 = icmp eq i32 %t1516, 0
  br i1 %t1517, label %B4097, label %B4101
B4095:                               	; preds = %B4086
  br label %B4092
B4087:                               	; preds = %B4090, %B4113
  %t1544 = load i32, i32* %t2857, align 4
  store i32 %t1544, i32* %t4078, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1548 = load i32, i32* %t4076, align 4
  store i32 %t1548, i32* %t2859, align 4
  %t1550 = load i32, i32* %t4077, align 4
  store i32 %t1550, i32* %t2860, align 4
  br label %B4114
B4178:                               	; preds = %B4177, %B4185
  %t1634 = load i32, i32* %t2859, align 4
  %t1635 = srem i32 %t1634, 2
  %t1654 = icmp ne i32 %t1635, 0
  br i1 %t1654, label %B4183, label %B4187
B4182:                               	; preds = %B4177
  br label %B4179
B4260:                               	; preds = %B4173
  %t1744 = load i32, i32* %t2859, align 4
  %t1745 = icmp slt i32 %t1744, 0
  br i1 %t1745, label %B4266, label %B4271
B4265:                               	; preds = %B4173
  br label %B4261
B4337:                               	; preds = %B4336, %B4344
  %t1831 = load i32, i32* %t2859, align 4
  %t1832 = srem i32 %t1831, 2
  %t1851 = icmp ne i32 %t1832, 0
  br i1 %t1851, label %B4342, label %B4346
B4341:                               	; preds = %B4336
  br label %B4338
B4428:                               	; preds = %B4423
  %t1950 = load i32, i32* %t2858, align 4
  %t1951 = icmp slt i32 %t1950, 16
  br i1 %t1951, label %B4429, label %B4433
B4424:                               	; preds = %B4426, %B4509
  %t2054 = load i32, i32* %t4419, align 4
  store i32 %t2054, i32* %t2857, align 4
  %t2056 = load i32, i32* %t2857, align 4
  store i32 %t2056, i32* %t4292, align 4
  %t2058 = load i32, i32* %t4293, align 4
  store i32 %t2058, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2060 = load i32, i32* %t2860, align 4
  %t2061 = icmp sge i32 %t2060, 15
  br i1 %t2061, label %B4511, label %B4516
B4660:                               	; preds = %B4659, %B4717
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2223 = load i32, i32* %t4656, align 4
  store i32 %t2223, i32* %t2859, align 4
  %t2225 = load i32, i32* %t4657, align 4
  store i32 %t2225, i32* %t2860, align 4
  br label %B4665
B4663:                               	; preds = %B4659
  br label %B4661
B4751:                               	; preds = %B4652
  %t2339 = load i32, i32* %t4749, align 4
  %t2340 = icmp ne i32 %t2339, 0
  br i1 %t2340, label %B4752, label %B4755
B4901:                               	; preds = %B4888
  br label %B4883
B4910:                               	; preds = %B4902
  %t2536 = load i32, i32* %t4908, align 4
  %t2537 = icmp ne i32 %t2536, 0
  br i1 %t2537, label %B4911, label %B4914
B4903:                               	; preds = %B4905, %B4912
  %t2652 = load i32, i32* %t4872, align 4
  store i32 %t2652, i32* %t4999, align 4
  %t2654 = load i32, i32* %t4872, align 4
  store i32 %t2654, i32* %t5000, align 4
  br label %B5002
B5125:                               	; preds = %B5131, %B5137
  %t2845 = load i32, i32* %t2857, align 4
  store i32 %t2845, i32* %t4587, align 4
  %t5150 = load i32, i32* %t4587, align 4
  %t5151 = icmp sgt i32 %t5150, 0
  br i1 %t5151, label %B4590, label %B5154
B5141:                               	; preds = %B5135
  %t2825 = load i32, i32* %t2859, align 4
  %t2826 = load i32, i32* %t2860, align 4
  %t2827 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2826
  %t5147 = load i32, i32* %t2827, align 4
  %t2828 = sdiv i32 %t2825, %t5147
  store i32 %t2828, i32* %t2859, align 4
  %t2830 = load i32, i32* %t2859, align 4
  %t2831 = add i32 %t2830, 65536
  %t2832 = load i32, i32* %t2860, align 4
  %t2833 = sub i32 15, %t2832
  %t2834 = add i32 %t2833, 1
  %t2835 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2834
  %t5148 = load i32, i32* %t2835, align 4
  %t2836 = sub i32 %t2831, %t5148
  store i32 %t2836, i32* %t2857, align 4
  br label %B5143
B5146:                               	; preds = %B5135
  br label %B5142
B5136:                               	; preds = %B5140
  %t2843 = load i32, i32* %t2859, align 4
  store i32 %t2843, i32* %t2857, align 4
  br label %B5137
B3004:                               	; preds = %B3006
  %t176 = load i32, i32* %t2857, align 4
  %t177 = load i32, i32* %t2858, align 4
  %t178 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t177
  %t3013 = load i32, i32* %t178, align 4
  %t179 = mul i32 1, %t3013
  %t180 = add i32 %t176, %t179
  store i32 %t180, i32* %t2857, align 4
  br label %B3005
B3011:                               	; preds = %B3006
  br label %B3005
B3005:                               	; preds = %B3004, %B3008, %B3011
  %t182 = load i32, i32* %t2859, align 4
  %t183 = sdiv i32 %t182, 2
  store i32 %t183, i32* %t2859, align 4
  %t185 = load i32, i32* %t2860, align 4
  %t186 = sdiv i32 %t185, 2
  store i32 %t186, i32* %t2860, align 4
  %t188 = load i32, i32* %t2858, align 4
  %t189 = add i32 %t188, 1
  store i32 %t189, i32* %t2858, align 4
  %t3014 = load i32, i32* %t2858, align 4
  %t3015 = icmp slt i32 %t3014, 16
  br i1 %t3015, label %B2999, label %B3018
B3098:                               	; preds = %B3091
  %t291 = load i32, i32* %t2860, align 4
  %t292 = srem i32 %t291, 2
  %t295 = icmp ne i32 %t292, 0
  br i1 %t295, label %B3096, label %B3103
B3100:                               	; preds = %B3091
  br label %B3097
B3092:                               	; preds = %B3095, %B3110
  br label %B3085
B3257:                               	; preds = %B3250
  %t488 = load i32, i32* %t2860, align 4
  %t489 = srem i32 %t488, 2
  %t492 = icmp ne i32 %t489, 0
  br i1 %t492, label %B3255, label %B3262
B3259:                               	; preds = %B3250
  br label %B3256
B3251:                               	; preds = %B3254, %B3269
  br label %B3244
B3342:                               	; preds = %B3341, %B3348
  %t607 = load i32, i32* %t2859, align 4
  %t608 = srem i32 %t607, 2
  %t612 = icmp ne i32 %t608, 0
  br i1 %t612, label %B3349, label %B3351
B3346:                               	; preds = %B3341
  br label %B3343
B3591:                               	; preds = %B3562
  br label %B3506
B3567:                               	; preds = %B3561
  %t874 = load i32, i32* %t2858, align 4
  %t875 = icmp slt i32 %t874, 16
  br i1 %t875, label %B3568, label %B3572
B3651:                               	; preds = %B3638
  br label %B3633
B3654:                               	; preds = %B3652, %B3661
  %t1020 = load i32, i32* %t2857, align 4
  store i32 %t1020, i32* %t3594, align 4
  %t1022 = load i32, i32* %t3595, align 4
  store i32 %t1022, i32* %t3593, align 4
  %t3680 = load i32, i32* %t3594, align 4
  %t3681 = icmp ne i32 %t3680, 0
  br i1 %t3681, label %B3597, label %B3683
B3653:                               	; preds = %B3657
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t991 = load i32, i32* %t3594, align 4
  %t992 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3658 = load i32, i32* %t992, align 4
  %t993 = mul i32 %t991, %t3658
  store i32 %t993, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3659
B3810:                               	; preds = %B3797
  br label %B3792
B3813:                               	; preds = %B3811, %B3820
  %t1217 = load i32, i32* %t2857, align 4
  store i32 %t1217, i32* %t3753, align 4
  %t1219 = load i32, i32* %t3754, align 4
  store i32 %t1219, i32* %t3752, align 4
  %t3839 = load i32, i32* %t3753, align 4
  %t3840 = icmp ne i32 %t3839, 0
  br i1 %t3840, label %B3756, label %B3842
B3812:                               	; preds = %B3816
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1188 = load i32, i32* %t3753, align 4
  %t1189 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3817 = load i32, i32* %t1189, align 4
  %t1190 = mul i32 %t1188, %t3817
  store i32 %t1190, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3818
B3881:                               	; preds = %B3861
  br label %B3855
B3888:                               	; preds = %B3890
  %t1288 = load i32, i32* %t2857, align 4
  %t1289 = load i32, i32* %t2858, align 4
  %t1290 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1289
  %t3897 = load i32, i32* %t1290, align 4
  %t1291 = mul i32 1, %t3897
  %t1292 = add i32 %t1288, %t1291
  store i32 %t1292, i32* %t2857, align 4
  br label %B3889
B3895:                               	; preds = %B3890
  br label %B3889
B3889:                               	; preds = %B3888, %B3892, %B3895
  %t1294 = load i32, i32* %t2859, align 4
  %t1295 = sdiv i32 %t1294, 2
  store i32 %t1295, i32* %t2859, align 4
  %t1297 = load i32, i32* %t2860, align 4
  %t1298 = sdiv i32 %t1297, 2
  store i32 %t1298, i32* %t2860, align 4
  %t1300 = load i32, i32* %t2858, align 4
  %t1301 = add i32 %t1300, 1
  store i32 %t1301, i32* %t2858, align 4
  %t3898 = load i32, i32* %t2858, align 4
  %t3899 = icmp slt i32 %t3898, 16
  br i1 %t3899, label %B3883, label %B3902
B3903:                               	; preds = %B3884
  store i32 0, i32* %t2857, align 4
  br label %B3905
B3908:                               	; preds = %B3884
  br label %B3904
B4097:                               	; preds = %B4091
  %t1519 = load i32, i32* %t2857, align 4
  %t1520 = load i32, i32* %t2858, align 4
  %t1521 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1520
  %t4102 = load i32, i32* %t1521, align 4
  %t1522 = mul i32 1, %t4102
  %t1523 = add i32 %t1519, %t1522
  store i32 %t1523, i32* %t2857, align 4
  br label %B4098
B4101:                               	; preds = %B4091
  br label %B4098
B4092:                               	; preds = %B4095
  %t1524 = load i32, i32* %t2860, align 4
  %t1525 = srem i32 %t1524, 2
  %t1532 = icmp ne i32 %t1525, 0
  br i1 %t1532, label %B4103, label %B4106
B4114:                               	; preds = %B4087
  %t1551 = load i32, i32* %t2858, align 4
  %t1552 = icmp slt i32 %t1551, 16
  br i1 %t1552, label %B4115, label %B4119
B4183:                               	; preds = %B4178
  %t1636 = load i32, i32* %t2860, align 4
  %t1637 = srem i32 %t1636, 2
  %t1638 = icmp eq i32 %t1637, 0
  br i1 %t1638, label %B4189, label %B4193
B4187:                               	; preds = %B4178
  br label %B4184
B4179:                               	; preds = %B4182, %B4205
  %t1665 = load i32, i32* %t2857, align 4
  store i32 %t1665, i32* %t4170, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1669 = load i32, i32* %t4168, align 4
  store i32 %t1669, i32* %t2859, align 4
  %t1671 = load i32, i32* %t4169, align 4
  store i32 %t1671, i32* %t2860, align 4
  br label %B4206
B4266:                               	; preds = %B4260
  store i32 65535, i32* %t2857, align 4
  br label %B4268
B4271:                               	; preds = %B4260
  br label %B4267
B4261:                               	; preds = %B4265
  %t1748 = load i32, i32* %t2860, align 4
  %t1749 = icmp sgt i32 %t1748, 0
  br i1 %t1749, label %B4272, label %B4277
B4342:                               	; preds = %B4337
  %t1833 = load i32, i32* %t2860, align 4
  %t1834 = srem i32 %t1833, 2
  %t1835 = icmp eq i32 %t1834, 0
  br i1 %t1835, label %B4348, label %B4352
B4346:                               	; preds = %B4337
  br label %B4343
B4338:                               	; preds = %B4341, %B4364
  %t1862 = load i32, i32* %t2857, align 4
  store i32 %t1862, i32* %t4329, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1866 = load i32, i32* %t4327, align 4
  store i32 %t1866, i32* %t2859, align 4
  %t1868 = load i32, i32* %t4328, align 4
  store i32 %t1868, i32* %t2860, align 4
  br label %B4365
B4429:                               	; preds = %B4428, %B4436
  %t1952 = load i32, i32* %t2859, align 4
  %t1953 = srem i32 %t1952, 2
  %t1972 = icmp ne i32 %t1953, 0
  br i1 %t1972, label %B4434, label %B4438
B4433:                               	; preds = %B4428
  br label %B4430
B4511:                               	; preds = %B4424
  %t2062 = load i32, i32* %t2859, align 4
  %t2063 = icmp slt i32 %t2062, 0
  br i1 %t2063, label %B4517, label %B4522
B4516:                               	; preds = %B4424
  br label %B4512
B4665:                               	; preds = %B4660
  %t2226 = load i32, i32* %t2858, align 4
  %t2227 = icmp slt i32 %t2226, 16
  br i1 %t2227, label %B4666, label %B4670
B4661:                               	; preds = %B4663, %B4746
  %t2330 = load i32, i32* %t4656, align 4
  store i32 %t2330, i32* %t2857, align 4
  %t2332 = load i32, i32* %t2857, align 4
  store i32 %t2332, i32* %t4623, align 4
  br label %B4652
B4752:                               	; preds = %B4751, %B4809
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2344 = load i32, i32* %t4748, align 4
  store i32 %t2344, i32* %t2859, align 4
  %t2346 = load i32, i32* %t4749, align 4
  store i32 %t2346, i32* %t2860, align 4
  br label %B4757
B4755:                               	; preds = %B4751
  br label %B4753
B4911:                               	; preds = %B4910, %B4968
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2541 = load i32, i32* %t4907, align 4
  store i32 %t2541, i32* %t2859, align 4
  %t2543 = load i32, i32* %t4908, align 4
  store i32 %t2543, i32* %t2860, align 4
  br label %B4916
B4914:                               	; preds = %B4910
  br label %B4912
B5002:                               	; preds = %B4903
  %t2657 = load i32, i32* %t5000, align 4
  %t2658 = icmp ne i32 %t2657, 0
  br i1 %t2658, label %B5003, label %B5006
B5154:                               	; preds = %B5125
  br label %B4591
B5143:                               	; preds = %B5141, %B5142
  br label %B5137
B5142:                               	; preds = %B5146
  %t2838 = load i32, i32* %t2859, align 4
  %t2839 = load i32, i32* %t2860, align 4
  %t2840 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2839
  %t5149 = load i32, i32* %t2840, align 4
  %t2841 = sdiv i32 %t2838, %t5149
  store i32 %t2841, i32* %t2857, align 4
  br label %B5143
B5137:                               	; preds = %B5136, %B5143
  br label %B5125
B3018:                               	; preds = %B3005
  br label %B3000
B3096:                               	; preds = %B3098
  %t297 = load i32, i32* %t2857, align 4
  %t298 = load i32, i32* %t2858, align 4
  %t299 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t298
  %t3105 = load i32, i32* %t299, align 4
  %t300 = mul i32 1, %t3105
  %t301 = add i32 %t297, %t300
  store i32 %t301, i32* %t2857, align 4
  br label %B3097
B3103:                               	; preds = %B3098
  br label %B3097
B3097:                               	; preds = %B3096, %B3100, %B3103
  %t303 = load i32, i32* %t2859, align 4
  %t304 = sdiv i32 %t303, 2
  store i32 %t304, i32* %t2859, align 4
  %t306 = load i32, i32* %t2860, align 4
  %t307 = sdiv i32 %t306, 2
  store i32 %t307, i32* %t2860, align 4
  %t309 = load i32, i32* %t2858, align 4
  %t310 = add i32 %t309, 1
  store i32 %t310, i32* %t2858, align 4
  %t3106 = load i32, i32* %t2858, align 4
  %t3107 = icmp slt i32 %t3106, 16
  br i1 %t3107, label %B3091, label %B3110
B3255:                               	; preds = %B3257
  %t494 = load i32, i32* %t2857, align 4
  %t495 = load i32, i32* %t2858, align 4
  %t496 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t495
  %t3264 = load i32, i32* %t496, align 4
  %t497 = mul i32 1, %t3264
  %t498 = add i32 %t494, %t497
  store i32 %t498, i32* %t2857, align 4
  br label %B3256
B3262:                               	; preds = %B3257
  br label %B3256
B3256:                               	; preds = %B3255, %B3259, %B3262
  %t500 = load i32, i32* %t2859, align 4
  %t501 = sdiv i32 %t500, 2
  store i32 %t501, i32* %t2859, align 4
  %t503 = load i32, i32* %t2860, align 4
  %t504 = sdiv i32 %t503, 2
  store i32 %t504, i32* %t2860, align 4
  %t506 = load i32, i32* %t2858, align 4
  %t507 = add i32 %t506, 1
  store i32 %t507, i32* %t2858, align 4
  %t3265 = load i32, i32* %t2858, align 4
  %t3266 = icmp slt i32 %t3265, 16
  br i1 %t3266, label %B3250, label %B3269
B3349:                               	; preds = %B3342
  %t609 = load i32, i32* %t2860, align 4
  %t610 = srem i32 %t609, 2
  %t613 = icmp ne i32 %t610, 0
  br i1 %t613, label %B3347, label %B3354
B3351:                               	; preds = %B3342
  br label %B3348
B3343:                               	; preds = %B3346, %B3361
  br label %B3336
B3568:                               	; preds = %B3567, %B3574
  %t876 = load i32, i32* %t2859, align 4
  %t877 = srem i32 %t876, 2
  %t881 = icmp ne i32 %t877, 0
  br i1 %t881, label %B3575, label %B3577
B3572:                               	; preds = %B3567
  br label %B3569
B3683:                               	; preds = %B3654
  br label %B3598
B3659:                               	; preds = %B3653
  %t995 = load i32, i32* %t2858, align 4
  %t996 = icmp slt i32 %t995, 16
  br i1 %t996, label %B3660, label %B3664
B3842:                               	; preds = %B3813
  br label %B3757
B3818:                               	; preds = %B3812
  %t1192 = load i32, i32* %t2858, align 4
  %t1193 = icmp slt i32 %t1192, 16
  br i1 %t1193, label %B3819, label %B3823
B3902:                               	; preds = %B3889
  br label %B3884
B3905:                               	; preds = %B3903, %B3912
  %t1338 = load i32, i32* %t2857, align 4
  store i32 %t1338, i32* %t3845, align 4
  %t1340 = load i32, i32* %t3846, align 4
  store i32 %t1340, i32* %t3844, align 4
  %t3931 = load i32, i32* %t3845, align 4
  %t3932 = icmp ne i32 %t3931, 0
  br i1 %t3932, label %B3848, label %B3934
B3904:                               	; preds = %B3908
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1309 = load i32, i32* %t3845, align 4
  %t1310 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3909 = load i32, i32* %t1310, align 4
  %t1311 = mul i32 %t1309, %t3909
  store i32 %t1311, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3910
B4098:                               	; preds = %B4097, %B4101
  br label %B4093
B4103:                               	; preds = %B4092
  %t1527 = load i32, i32* %t2857, align 4
  %t1528 = load i32, i32* %t2858, align 4
  %t1529 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1528
  %t4108 = load i32, i32* %t1529, align 4
  %t1530 = mul i32 1, %t4108
  %t1531 = add i32 %t1527, %t1530
  store i32 %t1531, i32* %t2857, align 4
  br label %B4104
B4106:                               	; preds = %B4092
  br label %B4104
B4115:                               	; preds = %B4114, %B4121
  %t1553 = load i32, i32* %t2859, align 4
  %t1554 = srem i32 %t1553, 2
  %t1558 = icmp ne i32 %t1554, 0
  br i1 %t1558, label %B4122, label %B4124
B4119:                               	; preds = %B4114
  br label %B4116
B4189:                               	; preds = %B4183
  %t1640 = load i32, i32* %t2857, align 4
  %t1641 = load i32, i32* %t2858, align 4
  %t1642 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1641
  %t4194 = load i32, i32* %t1642, align 4
  %t1643 = mul i32 1, %t4194
  %t1644 = add i32 %t1640, %t1643
  store i32 %t1644, i32* %t2857, align 4
  br label %B4190
B4193:                               	; preds = %B4183
  br label %B4190
B4184:                               	; preds = %B4187
  %t1645 = load i32, i32* %t2860, align 4
  %t1646 = srem i32 %t1645, 2
  %t1653 = icmp ne i32 %t1646, 0
  br i1 %t1653, label %B4195, label %B4198
B4206:                               	; preds = %B4179
  %t1672 = load i32, i32* %t2858, align 4
  %t1673 = icmp slt i32 %t1672, 16
  br i1 %t1673, label %B4207, label %B4211
B4268:                               	; preds = %B4266, %B4267
  br label %B4262
B4267:                               	; preds = %B4271
  store i32 0, i32* %t2857, align 4
  br label %B4268
B4272:                               	; preds = %B4261
  %t1750 = load i32, i32* %t2859, align 4
  %t1751 = icmp sgt i32 %t1750, 32767
  br i1 %t1751, label %B4278, label %B4283
B4277:                               	; preds = %B4261
  br label %B4273
B4348:                               	; preds = %B4342
  %t1837 = load i32, i32* %t2857, align 4
  %t1838 = load i32, i32* %t2858, align 4
  %t1839 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1838
  %t4353 = load i32, i32* %t1839, align 4
  %t1840 = mul i32 1, %t4353
  %t1841 = add i32 %t1837, %t1840
  store i32 %t1841, i32* %t2857, align 4
  br label %B4349
B4352:                               	; preds = %B4342
  br label %B4349
B4343:                               	; preds = %B4346
  %t1842 = load i32, i32* %t2860, align 4
  %t1843 = srem i32 %t1842, 2
  %t1850 = icmp ne i32 %t1843, 0
  br i1 %t1850, label %B4354, label %B4357
B4365:                               	; preds = %B4338
  %t1869 = load i32, i32* %t2858, align 4
  %t1870 = icmp slt i32 %t1869, 16
  br i1 %t1870, label %B4366, label %B4370
B4434:                               	; preds = %B4429
  %t1954 = load i32, i32* %t2860, align 4
  %t1955 = srem i32 %t1954, 2
  %t1956 = icmp eq i32 %t1955, 0
  br i1 %t1956, label %B4440, label %B4444
B4438:                               	; preds = %B4429
  br label %B4435
B4430:                               	; preds = %B4433, %B4456
  %t1983 = load i32, i32* %t2857, align 4
  store i32 %t1983, i32* %t4421, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1987 = load i32, i32* %t4419, align 4
  store i32 %t1987, i32* %t2859, align 4
  %t1989 = load i32, i32* %t4420, align 4
  store i32 %t1989, i32* %t2860, align 4
  br label %B4457
B4517:                               	; preds = %B4511
  store i32 65535, i32* %t2857, align 4
  br label %B4519
B4522:                               	; preds = %B4511
  br label %B4518
B4512:                               	; preds = %B4516
  %t2066 = load i32, i32* %t2860, align 4
  %t2067 = icmp sgt i32 %t2066, 0
  br i1 %t2067, label %B4523, label %B4528
B4666:                               	; preds = %B4665, %B4673
  %t2228 = load i32, i32* %t2859, align 4
  %t2229 = srem i32 %t2228, 2
  %t2248 = icmp ne i32 %t2229, 0
  br i1 %t2248, label %B4671, label %B4675
B4670:                               	; preds = %B4665
  br label %B4667
B4757:                               	; preds = %B4752
  %t2347 = load i32, i32* %t2858, align 4
  %t2348 = icmp slt i32 %t2347, 16
  br i1 %t2348, label %B4758, label %B4762
B4753:                               	; preds = %B4755, %B4838
  %t2451 = load i32, i32* %t4748, align 4
  store i32 %t2451, i32* %t2857, align 4
  %t2453 = load i32, i32* %t2857, align 4
  store i32 %t2453, i32* %t4621, align 4
  %t2455 = load i32, i32* %t4622, align 4
  store i32 %t2455, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2457 = load i32, i32* %t2860, align 4
  %t2458 = icmp sge i32 %t2457, 15
  br i1 %t2458, label %B4840, label %B4845
B4916:                               	; preds = %B4911
  %t2544 = load i32, i32* %t2858, align 4
  %t2545 = icmp slt i32 %t2544, 16
  br i1 %t2545, label %B4917, label %B4921
B4912:                               	; preds = %B4914, %B4997
  %t2648 = load i32, i32* %t4907, align 4
  store i32 %t2648, i32* %t2857, align 4
  %t2650 = load i32, i32* %t2857, align 4
  store i32 %t2650, i32* %t4874, align 4
  br label %B4903
B5003:                               	; preds = %B5002, %B5060
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2662 = load i32, i32* %t4999, align 4
  store i32 %t2662, i32* %t2859, align 4
  %t2664 = load i32, i32* %t5000, align 4
  store i32 %t2664, i32* %t2860, align 4
  br label %B5008
B5006:                               	; preds = %B5002
  br label %B5004
B3110:                               	; preds = %B3097
  br label %B3092
B3269:                               	; preds = %B3256
  br label %B3251
B3347:                               	; preds = %B3349
  %t615 = load i32, i32* %t2857, align 4
  %t616 = load i32, i32* %t2858, align 4
  %t617 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t616
  %t3356 = load i32, i32* %t617, align 4
  %t618 = mul i32 1, %t3356
  %t619 = add i32 %t615, %t618
  store i32 %t619, i32* %t2857, align 4
  br label %B3348
B3354:                               	; preds = %B3349
  br label %B3348
B3348:                               	; preds = %B3347, %B3351, %B3354
  %t621 = load i32, i32* %t2859, align 4
  %t622 = sdiv i32 %t621, 2
  store i32 %t622, i32* %t2859, align 4
  %t624 = load i32, i32* %t2860, align 4
  %t625 = sdiv i32 %t624, 2
  store i32 %t625, i32* %t2860, align 4
  %t627 = load i32, i32* %t2858, align 4
  %t628 = add i32 %t627, 1
  store i32 %t628, i32* %t2858, align 4
  %t3357 = load i32, i32* %t2858, align 4
  %t3358 = icmp slt i32 %t3357, 16
  br i1 %t3358, label %B3342, label %B3361
B3575:                               	; preds = %B3568
  %t878 = load i32, i32* %t2860, align 4
  %t879 = srem i32 %t878, 2
  %t882 = icmp ne i32 %t879, 0
  br i1 %t882, label %B3573, label %B3580
B3577:                               	; preds = %B3568
  br label %B3574
B3569:                               	; preds = %B3572, %B3587
  br label %B3562
B3660:                               	; preds = %B3659, %B3666
  %t997 = load i32, i32* %t2859, align 4
  %t998 = srem i32 %t997, 2
  %t1002 = icmp ne i32 %t998, 0
  br i1 %t1002, label %B3667, label %B3669
B3664:                               	; preds = %B3659
  br label %B3661
B3819:                               	; preds = %B3818, %B3825
  %t1194 = load i32, i32* %t2859, align 4
  %t1195 = srem i32 %t1194, 2
  %t1199 = icmp ne i32 %t1195, 0
  br i1 %t1199, label %B3826, label %B3828
B3823:                               	; preds = %B3818
  br label %B3820
B3934:                               	; preds = %B3905
  br label %B3849
B3910:                               	; preds = %B3904
  %t1313 = load i32, i32* %t2858, align 4
  %t1314 = icmp slt i32 %t1313, 16
  br i1 %t1314, label %B3911, label %B3915
B4093:                               	; preds = %B4098, %B4104
  %t1535 = load i32, i32* %t2859, align 4
  %t1536 = sdiv i32 %t1535, 2
  store i32 %t1536, i32* %t2859, align 4
  %t1538 = load i32, i32* %t2860, align 4
  %t1539 = sdiv i32 %t1538, 2
  store i32 %t1539, i32* %t2860, align 4
  %t1541 = load i32, i32* %t2858, align 4
  %t1542 = add i32 %t1541, 1
  store i32 %t1542, i32* %t2858, align 4
  %t4109 = load i32, i32* %t2858, align 4
  %t4110 = icmp slt i32 %t4109, 16
  br i1 %t4110, label %B4086, label %B4113
B4104:                               	; preds = %B4103, %B4106
  br label %B4093
B4122:                               	; preds = %B4115
  %t1555 = load i32, i32* %t2860, align 4
  %t1556 = srem i32 %t1555, 2
  %t1559 = icmp ne i32 %t1556, 0
  br i1 %t1559, label %B4120, label %B4127
B4124:                               	; preds = %B4115
  br label %B4121
B4116:                               	; preds = %B4119, %B4134
  %t1576 = load i32, i32* %t2857, align 4
  store i32 %t1576, i32* %t4077, align 4
  %t1577 = icmp sgt i32 1, 15
  br i1 %t1577, label %B4135, label %B4140
B4190:                               	; preds = %B4189, %B4193
  br label %B4185
B4195:                               	; preds = %B4184
  %t1648 = load i32, i32* %t2857, align 4
  %t1649 = load i32, i32* %t2858, align 4
  %t1650 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1649
  %t4200 = load i32, i32* %t1650, align 4
  %t1651 = mul i32 1, %t4200
  %t1652 = add i32 %t1648, %t1651
  store i32 %t1652, i32* %t2857, align 4
  br label %B4196
B4198:                               	; preds = %B4184
  br label %B4196
B4207:                               	; preds = %B4206, %B4213
  %t1674 = load i32, i32* %t2859, align 4
  %t1675 = srem i32 %t1674, 2
  %t1679 = icmp ne i32 %t1675, 0
  br i1 %t1679, label %B4214, label %B4216
B4211:                               	; preds = %B4206
  br label %B4208
B4262:                               	; preds = %B4268, %B4274
  %t1773 = load i32, i32* %t2857, align 4
  store i32 %t1773, i32* %t4042, align 4
  %t4287 = load i32, i32* %t4042, align 4
  %t4288 = icmp ne i32 %t4287, 0
  br i1 %t4288, label %B4045, label %B4290
B4278:                               	; preds = %B4272
  %t1753 = load i32, i32* %t2859, align 4
  %t1754 = load i32, i32* %t2860, align 4
  %t1755 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1754
  %t4284 = load i32, i32* %t1755, align 4
  %t1756 = sdiv i32 %t1753, %t4284
  store i32 %t1756, i32* %t2859, align 4
  %t1758 = load i32, i32* %t2859, align 4
  %t1759 = add i32 %t1758, 65536
  %t1760 = load i32, i32* %t2860, align 4
  %t1761 = sub i32 15, %t1760
  %t1762 = add i32 %t1761, 1
  %t1763 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1762
  %t4285 = load i32, i32* %t1763, align 4
  %t1764 = sub i32 %t1759, %t4285
  store i32 %t1764, i32* %t2857, align 4
  br label %B4280
B4283:                               	; preds = %B4272
  br label %B4279
B4273:                               	; preds = %B4277
  %t1771 = load i32, i32* %t2859, align 4
  store i32 %t1771, i32* %t2857, align 4
  br label %B4274
B4349:                               	; preds = %B4348, %B4352
  br label %B4344
B4354:                               	; preds = %B4343
  %t1845 = load i32, i32* %t2857, align 4
  %t1846 = load i32, i32* %t2858, align 4
  %t1847 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1846
  %t4359 = load i32, i32* %t1847, align 4
  %t1848 = mul i32 1, %t4359
  %t1849 = add i32 %t1845, %t1848
  store i32 %t1849, i32* %t2857, align 4
  br label %B4355
B4357:                               	; preds = %B4343
  br label %B4355
B4366:                               	; preds = %B4365, %B4372
  %t1871 = load i32, i32* %t2859, align 4
  %t1872 = srem i32 %t1871, 2
  %t1876 = icmp ne i32 %t1872, 0
  br i1 %t1876, label %B4373, label %B4375
B4370:                               	; preds = %B4365
  br label %B4367
B4440:                               	; preds = %B4434
  %t1958 = load i32, i32* %t2857, align 4
  %t1959 = load i32, i32* %t2858, align 4
  %t1960 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1959
  %t4445 = load i32, i32* %t1960, align 4
  %t1961 = mul i32 1, %t4445
  %t1962 = add i32 %t1958, %t1961
  store i32 %t1962, i32* %t2857, align 4
  br label %B4441
B4444:                               	; preds = %B4434
  br label %B4441
B4435:                               	; preds = %B4438
  %t1963 = load i32, i32* %t2860, align 4
  %t1964 = srem i32 %t1963, 2
  %t1971 = icmp ne i32 %t1964, 0
  br i1 %t1971, label %B4446, label %B4449
B4457:                               	; preds = %B4430
  %t1990 = load i32, i32* %t2858, align 4
  %t1991 = icmp slt i32 %t1990, 16
  br i1 %t1991, label %B4458, label %B4462
B4519:                               	; preds = %B4517, %B4518
  br label %B4513
B4518:                               	; preds = %B4522
  store i32 0, i32* %t2857, align 4
  br label %B4519
B4523:                               	; preds = %B4512
  %t2068 = load i32, i32* %t2859, align 4
  %t2069 = icmp sgt i32 %t2068, 32767
  br i1 %t2069, label %B4529, label %B4534
B4528:                               	; preds = %B4512
  br label %B4524
B4671:                               	; preds = %B4666
  %t2230 = load i32, i32* %t2860, align 4
  %t2231 = srem i32 %t2230, 2
  %t2232 = icmp eq i32 %t2231, 0
  br i1 %t2232, label %B4677, label %B4681
B4675:                               	; preds = %B4666
  br label %B4672
B4667:                               	; preds = %B4670, %B4693
  %t2259 = load i32, i32* %t2857, align 4
  store i32 %t2259, i32* %t4658, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2263 = load i32, i32* %t4656, align 4
  store i32 %t2263, i32* %t2859, align 4
  %t2265 = load i32, i32* %t4657, align 4
  store i32 %t2265, i32* %t2860, align 4
  br label %B4694
B4758:                               	; preds = %B4757, %B4765
  %t2349 = load i32, i32* %t2859, align 4
  %t2350 = srem i32 %t2349, 2
  %t2369 = icmp ne i32 %t2350, 0
  br i1 %t2369, label %B4763, label %B4767
B4762:                               	; preds = %B4757
  br label %B4759
B4840:                               	; preds = %B4753
  %t2459 = load i32, i32* %t2859, align 4
  %t2460 = icmp slt i32 %t2459, 0
  br i1 %t2460, label %B4846, label %B4851
B4845:                               	; preds = %B4753
  br label %B4841
B4917:                               	; preds = %B4916, %B4924
  %t2546 = load i32, i32* %t2859, align 4
  %t2547 = srem i32 %t2546, 2
  %t2566 = icmp ne i32 %t2547, 0
  br i1 %t2566, label %B4922, label %B4926
B4921:                               	; preds = %B4916
  br label %B4918
B5008:                               	; preds = %B5003
  %t2665 = load i32, i32* %t2858, align 4
  %t2666 = icmp slt i32 %t2665, 16
  br i1 %t2666, label %B5009, label %B5013
B5004:                               	; preds = %B5006, %B5089
  %t2769 = load i32, i32* %t4999, align 4
  store i32 %t2769, i32* %t2857, align 4
  %t2771 = load i32, i32* %t2857, align 4
  store i32 %t2771, i32* %t4872, align 4
  %t2773 = load i32, i32* %t4873, align 4
  store i32 %t2773, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2775 = load i32, i32* %t2860, align 4
  %t2776 = icmp sge i32 %t2775, 15
  br i1 %t2776, label %B5091, label %B5096
B3361:                               	; preds = %B3348
  br label %B3343
B3573:                               	; preds = %B3575
  %t884 = load i32, i32* %t2857, align 4
  %t885 = load i32, i32* %t2858, align 4
  %t886 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t885
  %t3582 = load i32, i32* %t886, align 4
  %t887 = mul i32 1, %t3582
  %t888 = add i32 %t884, %t887
  store i32 %t888, i32* %t2857, align 4
  br label %B3574
B3580:                               	; preds = %B3575
  br label %B3574
B3574:                               	; preds = %B3573, %B3577, %B3580
  %t890 = load i32, i32* %t2859, align 4
  %t891 = sdiv i32 %t890, 2
  store i32 %t891, i32* %t2859, align 4
  %t893 = load i32, i32* %t2860, align 4
  %t894 = sdiv i32 %t893, 2
  store i32 %t894, i32* %t2860, align 4
  %t896 = load i32, i32* %t2858, align 4
  %t897 = add i32 %t896, 1
  store i32 %t897, i32* %t2858, align 4
  %t3583 = load i32, i32* %t2858, align 4
  %t3584 = icmp slt i32 %t3583, 16
  br i1 %t3584, label %B3568, label %B3587
B3667:                               	; preds = %B3660
  %t999 = load i32, i32* %t2860, align 4
  %t1000 = srem i32 %t999, 2
  %t1003 = icmp ne i32 %t1000, 0
  br i1 %t1003, label %B3665, label %B3672
B3669:                               	; preds = %B3660
  br label %B3666
B3661:                               	; preds = %B3664, %B3679
  br label %B3654
B3826:                               	; preds = %B3819
  %t1196 = load i32, i32* %t2860, align 4
  %t1197 = srem i32 %t1196, 2
  %t1200 = icmp ne i32 %t1197, 0
  br i1 %t1200, label %B3824, label %B3831
B3828:                               	; preds = %B3819
  br label %B3825
B3820:                               	; preds = %B3823, %B3838
  br label %B3813
B3911:                               	; preds = %B3910, %B3917
  %t1315 = load i32, i32* %t2859, align 4
  %t1316 = srem i32 %t1315, 2
  %t1320 = icmp ne i32 %t1316, 0
  br i1 %t1320, label %B3918, label %B3920
B3915:                               	; preds = %B3910
  br label %B3912
B4113:                               	; preds = %B4093
  br label %B4087
B4120:                               	; preds = %B4122
  %t1561 = load i32, i32* %t2857, align 4
  %t1562 = load i32, i32* %t2858, align 4
  %t1563 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1562
  %t4129 = load i32, i32* %t1563, align 4
  %t1564 = mul i32 1, %t4129
  %t1565 = add i32 %t1561, %t1564
  store i32 %t1565, i32* %t2857, align 4
  br label %B4121
B4127:                               	; preds = %B4122
  br label %B4121
B4121:                               	; preds = %B4120, %B4124, %B4127
  %t1567 = load i32, i32* %t2859, align 4
  %t1568 = sdiv i32 %t1567, 2
  store i32 %t1568, i32* %t2859, align 4
  %t1570 = load i32, i32* %t2860, align 4
  %t1571 = sdiv i32 %t1570, 2
  store i32 %t1571, i32* %t2860, align 4
  %t1573 = load i32, i32* %t2858, align 4
  %t1574 = add i32 %t1573, 1
  store i32 %t1574, i32* %t2858, align 4
  %t4130 = load i32, i32* %t2858, align 4
  %t4131 = icmp slt i32 %t4130, 16
  br i1 %t4131, label %B4115, label %B4134
B4135:                               	; preds = %B4116
  store i32 0, i32* %t2857, align 4
  br label %B4137
B4140:                               	; preds = %B4116
  br label %B4136
B4185:                               	; preds = %B4190, %B4196
  %t1656 = load i32, i32* %t2859, align 4
  %t1657 = sdiv i32 %t1656, 2
  store i32 %t1657, i32* %t2859, align 4
  %t1659 = load i32, i32* %t2860, align 4
  %t1660 = sdiv i32 %t1659, 2
  store i32 %t1660, i32* %t2860, align 4
  %t1662 = load i32, i32* %t2858, align 4
  %t1663 = add i32 %t1662, 1
  store i32 %t1663, i32* %t2858, align 4
  %t4201 = load i32, i32* %t2858, align 4
  %t4202 = icmp slt i32 %t4201, 16
  br i1 %t4202, label %B4178, label %B4205
B4196:                               	; preds = %B4195, %B4198
  br label %B4185
B4214:                               	; preds = %B4207
  %t1676 = load i32, i32* %t2860, align 4
  %t1677 = srem i32 %t1676, 2
  %t1680 = icmp ne i32 %t1677, 0
  br i1 %t1680, label %B4212, label %B4219
B4216:                               	; preds = %B4207
  br label %B4213
B4208:                               	; preds = %B4211, %B4226
  %t1697 = load i32, i32* %t2857, align 4
  store i32 %t1697, i32* %t4169, align 4
  %t1698 = icmp sgt i32 1, 15
  br i1 %t1698, label %B4227, label %B4232
B4290:                               	; preds = %B4262
  br label %B4046
B4280:                               	; preds = %B4278, %B4279
  br label %B4274
B4279:                               	; preds = %B4283
  %t1766 = load i32, i32* %t2859, align 4
  %t1767 = load i32, i32* %t2860, align 4
  %t1768 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1767
  %t4286 = load i32, i32* %t1768, align 4
  %t1769 = sdiv i32 %t1766, %t4286
  store i32 %t1769, i32* %t2857, align 4
  br label %B4280
B4274:                               	; preds = %B4273, %B4280
  br label %B4262
B4344:                               	; preds = %B4349, %B4355
  %t1853 = load i32, i32* %t2859, align 4
  %t1854 = sdiv i32 %t1853, 2
  store i32 %t1854, i32* %t2859, align 4
  %t1856 = load i32, i32* %t2860, align 4
  %t1857 = sdiv i32 %t1856, 2
  store i32 %t1857, i32* %t2860, align 4
  %t1859 = load i32, i32* %t2858, align 4
  %t1860 = add i32 %t1859, 1
  store i32 %t1860, i32* %t2858, align 4
  %t4360 = load i32, i32* %t2858, align 4
  %t4361 = icmp slt i32 %t4360, 16
  br i1 %t4361, label %B4337, label %B4364
B4355:                               	; preds = %B4354, %B4357
  br label %B4344
B4373:                               	; preds = %B4366
  %t1873 = load i32, i32* %t2860, align 4
  %t1874 = srem i32 %t1873, 2
  %t1877 = icmp ne i32 %t1874, 0
  br i1 %t1877, label %B4371, label %B4378
B4375:                               	; preds = %B4366
  br label %B4372
B4367:                               	; preds = %B4370, %B4385
  %t1894 = load i32, i32* %t2857, align 4
  store i32 %t1894, i32* %t4328, align 4
  %t1895 = icmp sgt i32 1, 15
  br i1 %t1895, label %B4386, label %B4391
B4441:                               	; preds = %B4440, %B4444
  br label %B4436
B4446:                               	; preds = %B4435
  %t1966 = load i32, i32* %t2857, align 4
  %t1967 = load i32, i32* %t2858, align 4
  %t1968 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1967
  %t4451 = load i32, i32* %t1968, align 4
  %t1969 = mul i32 1, %t4451
  %t1970 = add i32 %t1966, %t1969
  store i32 %t1970, i32* %t2857, align 4
  br label %B4447
B4449:                               	; preds = %B4435
  br label %B4447
B4458:                               	; preds = %B4457, %B4464
  %t1992 = load i32, i32* %t2859, align 4
  %t1993 = srem i32 %t1992, 2
  %t1997 = icmp ne i32 %t1993, 0
  br i1 %t1997, label %B4465, label %B4467
B4462:                               	; preds = %B4457
  br label %B4459
B4513:                               	; preds = %B4519, %B4525
  %t2091 = load i32, i32* %t2857, align 4
  store i32 %t2091, i32* %t4293, align 4
  %t4538 = load i32, i32* %t4293, align 4
  %t4539 = icmp ne i32 %t4538, 0
  br i1 %t4539, label %B4296, label %B4541
B4529:                               	; preds = %B4523
  %t2071 = load i32, i32* %t2859, align 4
  %t2072 = load i32, i32* %t2860, align 4
  %t2073 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2072
  %t4535 = load i32, i32* %t2073, align 4
  %t2074 = sdiv i32 %t2071, %t4535
  store i32 %t2074, i32* %t2859, align 4
  %t2076 = load i32, i32* %t2859, align 4
  %t2077 = add i32 %t2076, 65536
  %t2078 = load i32, i32* %t2860, align 4
  %t2079 = sub i32 15, %t2078
  %t2080 = add i32 %t2079, 1
  %t2081 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2080
  %t4536 = load i32, i32* %t2081, align 4
  %t2082 = sub i32 %t2077, %t4536
  store i32 %t2082, i32* %t2857, align 4
  br label %B4531
B4534:                               	; preds = %B4523
  br label %B4530
B4524:                               	; preds = %B4528
  %t2089 = load i32, i32* %t2859, align 4
  store i32 %t2089, i32* %t2857, align 4
  br label %B4525
B4677:                               	; preds = %B4671
  %t2234 = load i32, i32* %t2857, align 4
  %t2235 = load i32, i32* %t2858, align 4
  %t2236 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2235
  %t4682 = load i32, i32* %t2236, align 4
  %t2237 = mul i32 1, %t4682
  %t2238 = add i32 %t2234, %t2237
  store i32 %t2238, i32* %t2857, align 4
  br label %B4678
B4681:                               	; preds = %B4671
  br label %B4678
B4672:                               	; preds = %B4675
  %t2239 = load i32, i32* %t2860, align 4
  %t2240 = srem i32 %t2239, 2
  %t2247 = icmp ne i32 %t2240, 0
  br i1 %t2247, label %B4683, label %B4686
B4694:                               	; preds = %B4667
  %t2266 = load i32, i32* %t2858, align 4
  %t2267 = icmp slt i32 %t2266, 16
  br i1 %t2267, label %B4695, label %B4699
B4763:                               	; preds = %B4758
  %t2351 = load i32, i32* %t2860, align 4
  %t2352 = srem i32 %t2351, 2
  %t2353 = icmp eq i32 %t2352, 0
  br i1 %t2353, label %B4769, label %B4773
B4767:                               	; preds = %B4758
  br label %B4764
B4759:                               	; preds = %B4762, %B4785
  %t2380 = load i32, i32* %t2857, align 4
  store i32 %t2380, i32* %t4750, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2384 = load i32, i32* %t4748, align 4
  store i32 %t2384, i32* %t2859, align 4
  %t2386 = load i32, i32* %t4749, align 4
  store i32 %t2386, i32* %t2860, align 4
  br label %B4786
B4846:                               	; preds = %B4840
  store i32 65535, i32* %t2857, align 4
  br label %B4848
B4851:                               	; preds = %B4840
  br label %B4847
B4841:                               	; preds = %B4845
  %t2463 = load i32, i32* %t2860, align 4
  %t2464 = icmp sgt i32 %t2463, 0
  br i1 %t2464, label %B4852, label %B4857
B4922:                               	; preds = %B4917
  %t2548 = load i32, i32* %t2860, align 4
  %t2549 = srem i32 %t2548, 2
  %t2550 = icmp eq i32 %t2549, 0
  br i1 %t2550, label %B4928, label %B4932
B4926:                               	; preds = %B4917
  br label %B4923
B4918:                               	; preds = %B4921, %B4944
  %t2577 = load i32, i32* %t2857, align 4
  store i32 %t2577, i32* %t4909, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2581 = load i32, i32* %t4907, align 4
  store i32 %t2581, i32* %t2859, align 4
  %t2583 = load i32, i32* %t4908, align 4
  store i32 %t2583, i32* %t2860, align 4
  br label %B4945
B5009:                               	; preds = %B5008, %B5016
  %t2667 = load i32, i32* %t2859, align 4
  %t2668 = srem i32 %t2667, 2
  %t2687 = icmp ne i32 %t2668, 0
  br i1 %t2687, label %B5014, label %B5018
B5013:                               	; preds = %B5008
  br label %B5010
B5091:                               	; preds = %B5004
  %t2777 = load i32, i32* %t2859, align 4
  %t2778 = icmp slt i32 %t2777, 0
  br i1 %t2778, label %B5097, label %B5102
B5096:                               	; preds = %B5004
  br label %B5092
B3587:                               	; preds = %B3574
  br label %B3569
B3665:                               	; preds = %B3667
  %t1005 = load i32, i32* %t2857, align 4
  %t1006 = load i32, i32* %t2858, align 4
  %t1007 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1006
  %t3674 = load i32, i32* %t1007, align 4
  %t1008 = mul i32 1, %t3674
  %t1009 = add i32 %t1005, %t1008
  store i32 %t1009, i32* %t2857, align 4
  br label %B3666
B3672:                               	; preds = %B3667
  br label %B3666
B3666:                               	; preds = %B3665, %B3669, %B3672
  %t1011 = load i32, i32* %t2859, align 4
  %t1012 = sdiv i32 %t1011, 2
  store i32 %t1012, i32* %t2859, align 4
  %t1014 = load i32, i32* %t2860, align 4
  %t1015 = sdiv i32 %t1014, 2
  store i32 %t1015, i32* %t2860, align 4
  %t1017 = load i32, i32* %t2858, align 4
  %t1018 = add i32 %t1017, 1
  store i32 %t1018, i32* %t2858, align 4
  %t3675 = load i32, i32* %t2858, align 4
  %t3676 = icmp slt i32 %t3675, 16
  br i1 %t3676, label %B3660, label %B3679
B3824:                               	; preds = %B3826
  %t1202 = load i32, i32* %t2857, align 4
  %t1203 = load i32, i32* %t2858, align 4
  %t1204 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1203
  %t3833 = load i32, i32* %t1204, align 4
  %t1205 = mul i32 1, %t3833
  %t1206 = add i32 %t1202, %t1205
  store i32 %t1206, i32* %t2857, align 4
  br label %B3825
B3831:                               	; preds = %B3826
  br label %B3825
B3825:                               	; preds = %B3824, %B3828, %B3831
  %t1208 = load i32, i32* %t2859, align 4
  %t1209 = sdiv i32 %t1208, 2
  store i32 %t1209, i32* %t2859, align 4
  %t1211 = load i32, i32* %t2860, align 4
  %t1212 = sdiv i32 %t1211, 2
  store i32 %t1212, i32* %t2860, align 4
  %t1214 = load i32, i32* %t2858, align 4
  %t1215 = add i32 %t1214, 1
  store i32 %t1215, i32* %t2858, align 4
  %t3834 = load i32, i32* %t2858, align 4
  %t3835 = icmp slt i32 %t3834, 16
  br i1 %t3835, label %B3819, label %B3838
B3918:                               	; preds = %B3911
  %t1317 = load i32, i32* %t2860, align 4
  %t1318 = srem i32 %t1317, 2
  %t1321 = icmp ne i32 %t1318, 0
  br i1 %t1321, label %B3916, label %B3923
B3920:                               	; preds = %B3911
  br label %B3917
B3912:                               	; preds = %B3915, %B3930
  br label %B3905
B4134:                               	; preds = %B4121
  br label %B4116
B4137:                               	; preds = %B4135, %B4144
  %t1611 = load i32, i32* %t2857, align 4
  store i32 %t1611, i32* %t4077, align 4
  %t1613 = load i32, i32* %t4078, align 4
  store i32 %t1613, i32* %t4076, align 4
  %t4163 = load i32, i32* %t4077, align 4
  %t4164 = icmp ne i32 %t4163, 0
  br i1 %t4164, label %B4080, label %B4166
B4136:                               	; preds = %B4140
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1582 = load i32, i32* %t4077, align 4
  %t1583 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4141 = load i32, i32* %t1583, align 4
  %t1584 = mul i32 %t1582, %t4141
  store i32 %t1584, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4142
B4205:                               	; preds = %B4185
  br label %B4179
B4212:                               	; preds = %B4214
  %t1682 = load i32, i32* %t2857, align 4
  %t1683 = load i32, i32* %t2858, align 4
  %t1684 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1683
  %t4221 = load i32, i32* %t1684, align 4
  %t1685 = mul i32 1, %t4221
  %t1686 = add i32 %t1682, %t1685
  store i32 %t1686, i32* %t2857, align 4
  br label %B4213
B4219:                               	; preds = %B4214
  br label %B4213
B4213:                               	; preds = %B4212, %B4216, %B4219
  %t1688 = load i32, i32* %t2859, align 4
  %t1689 = sdiv i32 %t1688, 2
  store i32 %t1689, i32* %t2859, align 4
  %t1691 = load i32, i32* %t2860, align 4
  %t1692 = sdiv i32 %t1691, 2
  store i32 %t1692, i32* %t2860, align 4
  %t1694 = load i32, i32* %t2858, align 4
  %t1695 = add i32 %t1694, 1
  store i32 %t1695, i32* %t2858, align 4
  %t4222 = load i32, i32* %t2858, align 4
  %t4223 = icmp slt i32 %t4222, 16
  br i1 %t4223, label %B4207, label %B4226
B4227:                               	; preds = %B4208
  store i32 0, i32* %t2857, align 4
  br label %B4229
B4232:                               	; preds = %B4208
  br label %B4228
B4364:                               	; preds = %B4344
  br label %B4338
B4371:                               	; preds = %B4373
  %t1879 = load i32, i32* %t2857, align 4
  %t1880 = load i32, i32* %t2858, align 4
  %t1881 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1880
  %t4380 = load i32, i32* %t1881, align 4
  %t1882 = mul i32 1, %t4380
  %t1883 = add i32 %t1879, %t1882
  store i32 %t1883, i32* %t2857, align 4
  br label %B4372
B4378:                               	; preds = %B4373
  br label %B4372
B4372:                               	; preds = %B4371, %B4375, %B4378
  %t1885 = load i32, i32* %t2859, align 4
  %t1886 = sdiv i32 %t1885, 2
  store i32 %t1886, i32* %t2859, align 4
  %t1888 = load i32, i32* %t2860, align 4
  %t1889 = sdiv i32 %t1888, 2
  store i32 %t1889, i32* %t2860, align 4
  %t1891 = load i32, i32* %t2858, align 4
  %t1892 = add i32 %t1891, 1
  store i32 %t1892, i32* %t2858, align 4
  %t4381 = load i32, i32* %t2858, align 4
  %t4382 = icmp slt i32 %t4381, 16
  br i1 %t4382, label %B4366, label %B4385
B4386:                               	; preds = %B4367
  store i32 0, i32* %t2857, align 4
  br label %B4388
B4391:                               	; preds = %B4367
  br label %B4387
B4436:                               	; preds = %B4441, %B4447
  %t1974 = load i32, i32* %t2859, align 4
  %t1975 = sdiv i32 %t1974, 2
  store i32 %t1975, i32* %t2859, align 4
  %t1977 = load i32, i32* %t2860, align 4
  %t1978 = sdiv i32 %t1977, 2
  store i32 %t1978, i32* %t2860, align 4
  %t1980 = load i32, i32* %t2858, align 4
  %t1981 = add i32 %t1980, 1
  store i32 %t1981, i32* %t2858, align 4
  %t4452 = load i32, i32* %t2858, align 4
  %t4453 = icmp slt i32 %t4452, 16
  br i1 %t4453, label %B4429, label %B4456
B4447:                               	; preds = %B4446, %B4449
  br label %B4436
B4465:                               	; preds = %B4458
  %t1994 = load i32, i32* %t2860, align 4
  %t1995 = srem i32 %t1994, 2
  %t1998 = icmp ne i32 %t1995, 0
  br i1 %t1998, label %B4463, label %B4470
B4467:                               	; preds = %B4458
  br label %B4464
B4459:                               	; preds = %B4462, %B4477
  %t2015 = load i32, i32* %t2857, align 4
  store i32 %t2015, i32* %t4420, align 4
  %t2016 = icmp sgt i32 1, 15
  br i1 %t2016, label %B4478, label %B4483
B4541:                               	; preds = %B4513
  br label %B4297
B4531:                               	; preds = %B4529, %B4530
  br label %B4525
B4530:                               	; preds = %B4534
  %t2084 = load i32, i32* %t2859, align 4
  %t2085 = load i32, i32* %t2860, align 4
  %t2086 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2085
  %t4537 = load i32, i32* %t2086, align 4
  %t2087 = sdiv i32 %t2084, %t4537
  store i32 %t2087, i32* %t2857, align 4
  br label %B4531
B4525:                               	; preds = %B4524, %B4531
  br label %B4513
B4678:                               	; preds = %B4677, %B4681
  br label %B4673
B4683:                               	; preds = %B4672
  %t2242 = load i32, i32* %t2857, align 4
  %t2243 = load i32, i32* %t2858, align 4
  %t2244 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2243
  %t4688 = load i32, i32* %t2244, align 4
  %t2245 = mul i32 1, %t4688
  %t2246 = add i32 %t2242, %t2245
  store i32 %t2246, i32* %t2857, align 4
  br label %B4684
B4686:                               	; preds = %B4672
  br label %B4684
B4695:                               	; preds = %B4694, %B4701
  %t2268 = load i32, i32* %t2859, align 4
  %t2269 = srem i32 %t2268, 2
  %t2273 = icmp ne i32 %t2269, 0
  br i1 %t2273, label %B4702, label %B4704
B4699:                               	; preds = %B4694
  br label %B4696
B4769:                               	; preds = %B4763
  %t2355 = load i32, i32* %t2857, align 4
  %t2356 = load i32, i32* %t2858, align 4
  %t2357 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2356
  %t4774 = load i32, i32* %t2357, align 4
  %t2358 = mul i32 1, %t4774
  %t2359 = add i32 %t2355, %t2358
  store i32 %t2359, i32* %t2857, align 4
  br label %B4770
B4773:                               	; preds = %B4763
  br label %B4770
B4764:                               	; preds = %B4767
  %t2360 = load i32, i32* %t2860, align 4
  %t2361 = srem i32 %t2360, 2
  %t2368 = icmp ne i32 %t2361, 0
  br i1 %t2368, label %B4775, label %B4778
B4786:                               	; preds = %B4759
  %t2387 = load i32, i32* %t2858, align 4
  %t2388 = icmp slt i32 %t2387, 16
  br i1 %t2388, label %B4787, label %B4791
B4848:                               	; preds = %B4846, %B4847
  br label %B4842
B4847:                               	; preds = %B4851
  store i32 0, i32* %t2857, align 4
  br label %B4848
B4852:                               	; preds = %B4841
  %t2465 = load i32, i32* %t2859, align 4
  %t2466 = icmp sgt i32 %t2465, 32767
  br i1 %t2466, label %B4858, label %B4863
B4857:                               	; preds = %B4841
  br label %B4853
B4928:                               	; preds = %B4922
  %t2552 = load i32, i32* %t2857, align 4
  %t2553 = load i32, i32* %t2858, align 4
  %t2554 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2553
  %t4933 = load i32, i32* %t2554, align 4
  %t2555 = mul i32 1, %t4933
  %t2556 = add i32 %t2552, %t2555
  store i32 %t2556, i32* %t2857, align 4
  br label %B4929
B4932:                               	; preds = %B4922
  br label %B4929
B4923:                               	; preds = %B4926
  %t2557 = load i32, i32* %t2860, align 4
  %t2558 = srem i32 %t2557, 2
  %t2565 = icmp ne i32 %t2558, 0
  br i1 %t2565, label %B4934, label %B4937
B4945:                               	; preds = %B4918
  %t2584 = load i32, i32* %t2858, align 4
  %t2585 = icmp slt i32 %t2584, 16
  br i1 %t2585, label %B4946, label %B4950
B5014:                               	; preds = %B5009
  %t2669 = load i32, i32* %t2860, align 4
  %t2670 = srem i32 %t2669, 2
  %t2671 = icmp eq i32 %t2670, 0
  br i1 %t2671, label %B5020, label %B5024
B5018:                               	; preds = %B5009
  br label %B5015
B5010:                               	; preds = %B5013, %B5036
  %t2698 = load i32, i32* %t2857, align 4
  store i32 %t2698, i32* %t5001, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2702 = load i32, i32* %t4999, align 4
  store i32 %t2702, i32* %t2859, align 4
  %t2704 = load i32, i32* %t5000, align 4
  store i32 %t2704, i32* %t2860, align 4
  br label %B5037
B5097:                               	; preds = %B5091
  store i32 65535, i32* %t2857, align 4
  br label %B5099
B5102:                               	; preds = %B5091
  br label %B5098
B5092:                               	; preds = %B5096
  %t2781 = load i32, i32* %t2860, align 4
  %t2782 = icmp sgt i32 %t2781, 0
  br i1 %t2782, label %B5103, label %B5108
B3679:                               	; preds = %B3666
  br label %B3661
B3838:                               	; preds = %B3825
  br label %B3820
B3916:                               	; preds = %B3918
  %t1323 = load i32, i32* %t2857, align 4
  %t1324 = load i32, i32* %t2858, align 4
  %t1325 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1324
  %t3925 = load i32, i32* %t1325, align 4
  %t1326 = mul i32 1, %t3925
  %t1327 = add i32 %t1323, %t1326
  store i32 %t1327, i32* %t2857, align 4
  br label %B3917
B3923:                               	; preds = %B3918
  br label %B3917
B3917:                               	; preds = %B3916, %B3920, %B3923
  %t1329 = load i32, i32* %t2859, align 4
  %t1330 = sdiv i32 %t1329, 2
  store i32 %t1330, i32* %t2859, align 4
  %t1332 = load i32, i32* %t2860, align 4
  %t1333 = sdiv i32 %t1332, 2
  store i32 %t1333, i32* %t2860, align 4
  %t1335 = load i32, i32* %t2858, align 4
  %t1336 = add i32 %t1335, 1
  store i32 %t1336, i32* %t2858, align 4
  %t3926 = load i32, i32* %t2858, align 4
  %t3927 = icmp slt i32 %t3926, 16
  br i1 %t3927, label %B3911, label %B3930
B4166:                               	; preds = %B4137
  br label %B4081
B4142:                               	; preds = %B4136
  %t1586 = load i32, i32* %t2858, align 4
  %t1587 = icmp slt i32 %t1586, 16
  br i1 %t1587, label %B4143, label %B4147
B4226:                               	; preds = %B4213
  br label %B4208
B4229:                               	; preds = %B4227, %B4236
  %t1732 = load i32, i32* %t2857, align 4
  store i32 %t1732, i32* %t4169, align 4
  %t1734 = load i32, i32* %t4170, align 4
  store i32 %t1734, i32* %t4168, align 4
  %t4255 = load i32, i32* %t4169, align 4
  %t4256 = icmp ne i32 %t4255, 0
  br i1 %t4256, label %B4172, label %B4258
B4228:                               	; preds = %B4232
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1703 = load i32, i32* %t4169, align 4
  %t1704 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4233 = load i32, i32* %t1704, align 4
  %t1705 = mul i32 %t1703, %t4233
  store i32 %t1705, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4234
B4385:                               	; preds = %B4372
  br label %B4367
B4388:                               	; preds = %B4386, %B4395
  %t1929 = load i32, i32* %t2857, align 4
  store i32 %t1929, i32* %t4328, align 4
  %t1931 = load i32, i32* %t4329, align 4
  store i32 %t1931, i32* %t4327, align 4
  %t4414 = load i32, i32* %t4328, align 4
  %t4415 = icmp ne i32 %t4414, 0
  br i1 %t4415, label %B4331, label %B4417
B4387:                               	; preds = %B4391
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1900 = load i32, i32* %t4328, align 4
  %t1901 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4392 = load i32, i32* %t1901, align 4
  %t1902 = mul i32 %t1900, %t4392
  store i32 %t1902, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4393
B4456:                               	; preds = %B4436
  br label %B4430
B4463:                               	; preds = %B4465
  %t2000 = load i32, i32* %t2857, align 4
  %t2001 = load i32, i32* %t2858, align 4
  %t2002 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2001
  %t4472 = load i32, i32* %t2002, align 4
  %t2003 = mul i32 1, %t4472
  %t2004 = add i32 %t2000, %t2003
  store i32 %t2004, i32* %t2857, align 4
  br label %B4464
B4470:                               	; preds = %B4465
  br label %B4464
B4464:                               	; preds = %B4463, %B4467, %B4470
  %t2006 = load i32, i32* %t2859, align 4
  %t2007 = sdiv i32 %t2006, 2
  store i32 %t2007, i32* %t2859, align 4
  %t2009 = load i32, i32* %t2860, align 4
  %t2010 = sdiv i32 %t2009, 2
  store i32 %t2010, i32* %t2860, align 4
  %t2012 = load i32, i32* %t2858, align 4
  %t2013 = add i32 %t2012, 1
  store i32 %t2013, i32* %t2858, align 4
  %t4473 = load i32, i32* %t2858, align 4
  %t4474 = icmp slt i32 %t4473, 16
  br i1 %t4474, label %B4458, label %B4477
B4478:                               	; preds = %B4459
  store i32 0, i32* %t2857, align 4
  br label %B4480
B4483:                               	; preds = %B4459
  br label %B4479
B4673:                               	; preds = %B4678, %B4684
  %t2250 = load i32, i32* %t2859, align 4
  %t2251 = sdiv i32 %t2250, 2
  store i32 %t2251, i32* %t2859, align 4
  %t2253 = load i32, i32* %t2860, align 4
  %t2254 = sdiv i32 %t2253, 2
  store i32 %t2254, i32* %t2860, align 4
  %t2256 = load i32, i32* %t2858, align 4
  %t2257 = add i32 %t2256, 1
  store i32 %t2257, i32* %t2858, align 4
  %t4689 = load i32, i32* %t2858, align 4
  %t4690 = icmp slt i32 %t4689, 16
  br i1 %t4690, label %B4666, label %B4693
B4684:                               	; preds = %B4683, %B4686
  br label %B4673
B4702:                               	; preds = %B4695
  %t2270 = load i32, i32* %t2860, align 4
  %t2271 = srem i32 %t2270, 2
  %t2274 = icmp ne i32 %t2271, 0
  br i1 %t2274, label %B4700, label %B4707
B4704:                               	; preds = %B4695
  br label %B4701
B4696:                               	; preds = %B4699, %B4714
  %t2291 = load i32, i32* %t2857, align 4
  store i32 %t2291, i32* %t4657, align 4
  %t2292 = icmp sgt i32 1, 15
  br i1 %t2292, label %B4715, label %B4720
B4770:                               	; preds = %B4769, %B4773
  br label %B4765
B4775:                               	; preds = %B4764
  %t2363 = load i32, i32* %t2857, align 4
  %t2364 = load i32, i32* %t2858, align 4
  %t2365 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2364
  %t4780 = load i32, i32* %t2365, align 4
  %t2366 = mul i32 1, %t4780
  %t2367 = add i32 %t2363, %t2366
  store i32 %t2367, i32* %t2857, align 4
  br label %B4776
B4778:                               	; preds = %B4764
  br label %B4776
B4787:                               	; preds = %B4786, %B4793
  %t2389 = load i32, i32* %t2859, align 4
  %t2390 = srem i32 %t2389, 2
  %t2394 = icmp ne i32 %t2390, 0
  br i1 %t2394, label %B4794, label %B4796
B4791:                               	; preds = %B4786
  br label %B4788
B4842:                               	; preds = %B4848, %B4854
  %t2488 = load i32, i32* %t2857, align 4
  store i32 %t2488, i32* %t4622, align 4
  %t4867 = load i32, i32* %t4622, align 4
  %t4868 = icmp ne i32 %t4867, 0
  br i1 %t4868, label %B4625, label %B4870
B4858:                               	; preds = %B4852
  %t2468 = load i32, i32* %t2859, align 4
  %t2469 = load i32, i32* %t2860, align 4
  %t2470 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2469
  %t4864 = load i32, i32* %t2470, align 4
  %t2471 = sdiv i32 %t2468, %t4864
  store i32 %t2471, i32* %t2859, align 4
  %t2473 = load i32, i32* %t2859, align 4
  %t2474 = add i32 %t2473, 65536
  %t2475 = load i32, i32* %t2860, align 4
  %t2476 = sub i32 15, %t2475
  %t2477 = add i32 %t2476, 1
  %t2478 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2477
  %t4865 = load i32, i32* %t2478, align 4
  %t2479 = sub i32 %t2474, %t4865
  store i32 %t2479, i32* %t2857, align 4
  br label %B4860
B4863:                               	; preds = %B4852
  br label %B4859
B4853:                               	; preds = %B4857
  %t2486 = load i32, i32* %t2859, align 4
  store i32 %t2486, i32* %t2857, align 4
  br label %B4854
B4929:                               	; preds = %B4928, %B4932
  br label %B4924
B4934:                               	; preds = %B4923
  %t2560 = load i32, i32* %t2857, align 4
  %t2561 = load i32, i32* %t2858, align 4
  %t2562 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2561
  %t4939 = load i32, i32* %t2562, align 4
  %t2563 = mul i32 1, %t4939
  %t2564 = add i32 %t2560, %t2563
  store i32 %t2564, i32* %t2857, align 4
  br label %B4935
B4937:                               	; preds = %B4923
  br label %B4935
B4946:                               	; preds = %B4945, %B4952
  %t2586 = load i32, i32* %t2859, align 4
  %t2587 = srem i32 %t2586, 2
  %t2591 = icmp ne i32 %t2587, 0
  br i1 %t2591, label %B4953, label %B4955
B4950:                               	; preds = %B4945
  br label %B4947
B5020:                               	; preds = %B5014
  %t2673 = load i32, i32* %t2857, align 4
  %t2674 = load i32, i32* %t2858, align 4
  %t2675 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2674
  %t5025 = load i32, i32* %t2675, align 4
  %t2676 = mul i32 1, %t5025
  %t2677 = add i32 %t2673, %t2676
  store i32 %t2677, i32* %t2857, align 4
  br label %B5021
B5024:                               	; preds = %B5014
  br label %B5021
B5015:                               	; preds = %B5018
  %t2678 = load i32, i32* %t2860, align 4
  %t2679 = srem i32 %t2678, 2
  %t2686 = icmp ne i32 %t2679, 0
  br i1 %t2686, label %B5026, label %B5029
B5037:                               	; preds = %B5010
  %t2705 = load i32, i32* %t2858, align 4
  %t2706 = icmp slt i32 %t2705, 16
  br i1 %t2706, label %B5038, label %B5042
B5099:                               	; preds = %B5097, %B5098
  br label %B5093
B5098:                               	; preds = %B5102
  store i32 0, i32* %t2857, align 4
  br label %B5099
B5103:                               	; preds = %B5092
  %t2783 = load i32, i32* %t2859, align 4
  %t2784 = icmp sgt i32 %t2783, 32767
  br i1 %t2784, label %B5109, label %B5114
B5108:                               	; preds = %B5092
  br label %B5104
B3930:                               	; preds = %B3917
  br label %B3912
B4143:                               	; preds = %B4142, %B4149
  %t1588 = load i32, i32* %t2859, align 4
  %t1589 = srem i32 %t1588, 2
  %t1593 = icmp ne i32 %t1589, 0
  br i1 %t1593, label %B4150, label %B4152
B4147:                               	; preds = %B4142
  br label %B4144
B4258:                               	; preds = %B4229
  br label %B4173
B4234:                               	; preds = %B4228
  %t1707 = load i32, i32* %t2858, align 4
  %t1708 = icmp slt i32 %t1707, 16
  br i1 %t1708, label %B4235, label %B4239
B4417:                               	; preds = %B4388
  br label %B4332
B4393:                               	; preds = %B4387
  %t1904 = load i32, i32* %t2858, align 4
  %t1905 = icmp slt i32 %t1904, 16
  br i1 %t1905, label %B4394, label %B4398
B4477:                               	; preds = %B4464
  br label %B4459
B4480:                               	; preds = %B4478, %B4487
  %t2050 = load i32, i32* %t2857, align 4
  store i32 %t2050, i32* %t4420, align 4
  %t2052 = load i32, i32* %t4421, align 4
  store i32 %t2052, i32* %t4419, align 4
  %t4506 = load i32, i32* %t4420, align 4
  %t4507 = icmp ne i32 %t4506, 0
  br i1 %t4507, label %B4423, label %B4509
B4479:                               	; preds = %B4483
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2021 = load i32, i32* %t4420, align 4
  %t2022 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4484 = load i32, i32* %t2022, align 4
  %t2023 = mul i32 %t2021, %t4484
  store i32 %t2023, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4485
B4693:                               	; preds = %B4673
  br label %B4667
B4700:                               	; preds = %B4702
  %t2276 = load i32, i32* %t2857, align 4
  %t2277 = load i32, i32* %t2858, align 4
  %t2278 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2277
  %t4709 = load i32, i32* %t2278, align 4
  %t2279 = mul i32 1, %t4709
  %t2280 = add i32 %t2276, %t2279
  store i32 %t2280, i32* %t2857, align 4
  br label %B4701
B4707:                               	; preds = %B4702
  br label %B4701
B4701:                               	; preds = %B4700, %B4704, %B4707
  %t2282 = load i32, i32* %t2859, align 4
  %t2283 = sdiv i32 %t2282, 2
  store i32 %t2283, i32* %t2859, align 4
  %t2285 = load i32, i32* %t2860, align 4
  %t2286 = sdiv i32 %t2285, 2
  store i32 %t2286, i32* %t2860, align 4
  %t2288 = load i32, i32* %t2858, align 4
  %t2289 = add i32 %t2288, 1
  store i32 %t2289, i32* %t2858, align 4
  %t4710 = load i32, i32* %t2858, align 4
  %t4711 = icmp slt i32 %t4710, 16
  br i1 %t4711, label %B4695, label %B4714
B4715:                               	; preds = %B4696
  store i32 0, i32* %t2857, align 4
  br label %B4717
B4720:                               	; preds = %B4696
  br label %B4716
B4765:                               	; preds = %B4770, %B4776
  %t2371 = load i32, i32* %t2859, align 4
  %t2372 = sdiv i32 %t2371, 2
  store i32 %t2372, i32* %t2859, align 4
  %t2374 = load i32, i32* %t2860, align 4
  %t2375 = sdiv i32 %t2374, 2
  store i32 %t2375, i32* %t2860, align 4
  %t2377 = load i32, i32* %t2858, align 4
  %t2378 = add i32 %t2377, 1
  store i32 %t2378, i32* %t2858, align 4
  %t4781 = load i32, i32* %t2858, align 4
  %t4782 = icmp slt i32 %t4781, 16
  br i1 %t4782, label %B4758, label %B4785
B4776:                               	; preds = %B4775, %B4778
  br label %B4765
B4794:                               	; preds = %B4787
  %t2391 = load i32, i32* %t2860, align 4
  %t2392 = srem i32 %t2391, 2
  %t2395 = icmp ne i32 %t2392, 0
  br i1 %t2395, label %B4792, label %B4799
B4796:                               	; preds = %B4787
  br label %B4793
B4788:                               	; preds = %B4791, %B4806
  %t2412 = load i32, i32* %t2857, align 4
  store i32 %t2412, i32* %t4749, align 4
  %t2413 = icmp sgt i32 1, 15
  br i1 %t2413, label %B4807, label %B4812
B4870:                               	; preds = %B4842
  br label %B4626
B4860:                               	; preds = %B4858, %B4859
  br label %B4854
B4859:                               	; preds = %B4863
  %t2481 = load i32, i32* %t2859, align 4
  %t2482 = load i32, i32* %t2860, align 4
  %t2483 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2482
  %t4866 = load i32, i32* %t2483, align 4
  %t2484 = sdiv i32 %t2481, %t4866
  store i32 %t2484, i32* %t2857, align 4
  br label %B4860
B4854:                               	; preds = %B4853, %B4860
  br label %B4842
B4924:                               	; preds = %B4929, %B4935
  %t2568 = load i32, i32* %t2859, align 4
  %t2569 = sdiv i32 %t2568, 2
  store i32 %t2569, i32* %t2859, align 4
  %t2571 = load i32, i32* %t2860, align 4
  %t2572 = sdiv i32 %t2571, 2
  store i32 %t2572, i32* %t2860, align 4
  %t2574 = load i32, i32* %t2858, align 4
  %t2575 = add i32 %t2574, 1
  store i32 %t2575, i32* %t2858, align 4
  %t4940 = load i32, i32* %t2858, align 4
  %t4941 = icmp slt i32 %t4940, 16
  br i1 %t4941, label %B4917, label %B4944
B4935:                               	; preds = %B4934, %B4937
  br label %B4924
B4953:                               	; preds = %B4946
  %t2588 = load i32, i32* %t2860, align 4
  %t2589 = srem i32 %t2588, 2
  %t2592 = icmp ne i32 %t2589, 0
  br i1 %t2592, label %B4951, label %B4958
B4955:                               	; preds = %B4946
  br label %B4952
B4947:                               	; preds = %B4950, %B4965
  %t2609 = load i32, i32* %t2857, align 4
  store i32 %t2609, i32* %t4908, align 4
  %t2610 = icmp sgt i32 1, 15
  br i1 %t2610, label %B4966, label %B4971
B5021:                               	; preds = %B5020, %B5024
  br label %B5016
B5026:                               	; preds = %B5015
  %t2681 = load i32, i32* %t2857, align 4
  %t2682 = load i32, i32* %t2858, align 4
  %t2683 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2682
  %t5031 = load i32, i32* %t2683, align 4
  %t2684 = mul i32 1, %t5031
  %t2685 = add i32 %t2681, %t2684
  store i32 %t2685, i32* %t2857, align 4
  br label %B5027
B5029:                               	; preds = %B5015
  br label %B5027
B5038:                               	; preds = %B5037, %B5044
  %t2707 = load i32, i32* %t2859, align 4
  %t2708 = srem i32 %t2707, 2
  %t2712 = icmp ne i32 %t2708, 0
  br i1 %t2712, label %B5045, label %B5047
B5042:                               	; preds = %B5037
  br label %B5039
B5093:                               	; preds = %B5099, %B5105
  %t2806 = load i32, i32* %t2857, align 4
  store i32 %t2806, i32* %t4873, align 4
  %t5118 = load i32, i32* %t4873, align 4
  %t5119 = icmp ne i32 %t5118, 0
  br i1 %t5119, label %B4876, label %B5121
B5109:                               	; preds = %B5103
  %t2786 = load i32, i32* %t2859, align 4
  %t2787 = load i32, i32* %t2860, align 4
  %t2788 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2787
  %t5115 = load i32, i32* %t2788, align 4
  %t2789 = sdiv i32 %t2786, %t5115
  store i32 %t2789, i32* %t2859, align 4
  %t2791 = load i32, i32* %t2859, align 4
  %t2792 = add i32 %t2791, 65536
  %t2793 = load i32, i32* %t2860, align 4
  %t2794 = sub i32 15, %t2793
  %t2795 = add i32 %t2794, 1
  %t2796 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2795
  %t5116 = load i32, i32* %t2796, align 4
  %t2797 = sub i32 %t2792, %t5116
  store i32 %t2797, i32* %t2857, align 4
  br label %B5111
B5114:                               	; preds = %B5103
  br label %B5110
B5104:                               	; preds = %B5108
  %t2804 = load i32, i32* %t2859, align 4
  store i32 %t2804, i32* %t2857, align 4
  br label %B5105
B4150:                               	; preds = %B4143
  %t1590 = load i32, i32* %t2860, align 4
  %t1591 = srem i32 %t1590, 2
  %t1594 = icmp ne i32 %t1591, 0
  br i1 %t1594, label %B4148, label %B4155
B4152:                               	; preds = %B4143
  br label %B4149
B4144:                               	; preds = %B4147, %B4162
  br label %B4137
B4235:                               	; preds = %B4234, %B4241
  %t1709 = load i32, i32* %t2859, align 4
  %t1710 = srem i32 %t1709, 2
  %t1714 = icmp ne i32 %t1710, 0
  br i1 %t1714, label %B4242, label %B4244
B4239:                               	; preds = %B4234
  br label %B4236
B4394:                               	; preds = %B4393, %B4400
  %t1906 = load i32, i32* %t2859, align 4
  %t1907 = srem i32 %t1906, 2
  %t1911 = icmp ne i32 %t1907, 0
  br i1 %t1911, label %B4401, label %B4403
B4398:                               	; preds = %B4393
  br label %B4395
B4509:                               	; preds = %B4480
  br label %B4424
B4485:                               	; preds = %B4479
  %t2025 = load i32, i32* %t2858, align 4
  %t2026 = icmp slt i32 %t2025, 16
  br i1 %t2026, label %B4486, label %B4490
B4714:                               	; preds = %B4701
  br label %B4696
B4717:                               	; preds = %B4715, %B4724
  %t2326 = load i32, i32* %t2857, align 4
  store i32 %t2326, i32* %t4657, align 4
  %t2328 = load i32, i32* %t4658, align 4
  store i32 %t2328, i32* %t4656, align 4
  %t4743 = load i32, i32* %t4657, align 4
  %t4744 = icmp ne i32 %t4743, 0
  br i1 %t4744, label %B4660, label %B4746
B4716:                               	; preds = %B4720
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2297 = load i32, i32* %t4657, align 4
  %t2298 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4721 = load i32, i32* %t2298, align 4
  %t2299 = mul i32 %t2297, %t4721
  store i32 %t2299, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4722
B4785:                               	; preds = %B4765
  br label %B4759
B4792:                               	; preds = %B4794
  %t2397 = load i32, i32* %t2857, align 4
  %t2398 = load i32, i32* %t2858, align 4
  %t2399 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2398
  %t4801 = load i32, i32* %t2399, align 4
  %t2400 = mul i32 1, %t4801
  %t2401 = add i32 %t2397, %t2400
  store i32 %t2401, i32* %t2857, align 4
  br label %B4793
B4799:                               	; preds = %B4794
  br label %B4793
B4793:                               	; preds = %B4792, %B4796, %B4799
  %t2403 = load i32, i32* %t2859, align 4
  %t2404 = sdiv i32 %t2403, 2
  store i32 %t2404, i32* %t2859, align 4
  %t2406 = load i32, i32* %t2860, align 4
  %t2407 = sdiv i32 %t2406, 2
  store i32 %t2407, i32* %t2860, align 4
  %t2409 = load i32, i32* %t2858, align 4
  %t2410 = add i32 %t2409, 1
  store i32 %t2410, i32* %t2858, align 4
  %t4802 = load i32, i32* %t2858, align 4
  %t4803 = icmp slt i32 %t4802, 16
  br i1 %t4803, label %B4787, label %B4806
B4807:                               	; preds = %B4788
  store i32 0, i32* %t2857, align 4
  br label %B4809
B4812:                               	; preds = %B4788
  br label %B4808
B4944:                               	; preds = %B4924
  br label %B4918
B4951:                               	; preds = %B4953
  %t2594 = load i32, i32* %t2857, align 4
  %t2595 = load i32, i32* %t2858, align 4
  %t2596 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2595
  %t4960 = load i32, i32* %t2596, align 4
  %t2597 = mul i32 1, %t4960
  %t2598 = add i32 %t2594, %t2597
  store i32 %t2598, i32* %t2857, align 4
  br label %B4952
B4958:                               	; preds = %B4953
  br label %B4952
B4952:                               	; preds = %B4951, %B4955, %B4958
  %t2600 = load i32, i32* %t2859, align 4
  %t2601 = sdiv i32 %t2600, 2
  store i32 %t2601, i32* %t2859, align 4
  %t2603 = load i32, i32* %t2860, align 4
  %t2604 = sdiv i32 %t2603, 2
  store i32 %t2604, i32* %t2860, align 4
  %t2606 = load i32, i32* %t2858, align 4
  %t2607 = add i32 %t2606, 1
  store i32 %t2607, i32* %t2858, align 4
  %t4961 = load i32, i32* %t2858, align 4
  %t4962 = icmp slt i32 %t4961, 16
  br i1 %t4962, label %B4946, label %B4965
B4966:                               	; preds = %B4947
  store i32 0, i32* %t2857, align 4
  br label %B4968
B4971:                               	; preds = %B4947
  br label %B4967
B5016:                               	; preds = %B5021, %B5027
  %t2689 = load i32, i32* %t2859, align 4
  %t2690 = sdiv i32 %t2689, 2
  store i32 %t2690, i32* %t2859, align 4
  %t2692 = load i32, i32* %t2860, align 4
  %t2693 = sdiv i32 %t2692, 2
  store i32 %t2693, i32* %t2860, align 4
  %t2695 = load i32, i32* %t2858, align 4
  %t2696 = add i32 %t2695, 1
  store i32 %t2696, i32* %t2858, align 4
  %t5032 = load i32, i32* %t2858, align 4
  %t5033 = icmp slt i32 %t5032, 16
  br i1 %t5033, label %B5009, label %B5036
B5027:                               	; preds = %B5026, %B5029
  br label %B5016
B5045:                               	; preds = %B5038
  %t2709 = load i32, i32* %t2860, align 4
  %t2710 = srem i32 %t2709, 2
  %t2713 = icmp ne i32 %t2710, 0
  br i1 %t2713, label %B5043, label %B5050
B5047:                               	; preds = %B5038
  br label %B5044
B5039:                               	; preds = %B5042, %B5057
  %t2730 = load i32, i32* %t2857, align 4
  store i32 %t2730, i32* %t5000, align 4
  %t2731 = icmp sgt i32 1, 15
  br i1 %t2731, label %B5058, label %B5063
B5121:                               	; preds = %B5093
  br label %B4877
B5111:                               	; preds = %B5109, %B5110
  br label %B5105
B5110:                               	; preds = %B5114
  %t2799 = load i32, i32* %t2859, align 4
  %t2800 = load i32, i32* %t2860, align 4
  %t2801 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2800
  %t5117 = load i32, i32* %t2801, align 4
  %t2802 = sdiv i32 %t2799, %t5117
  store i32 %t2802, i32* %t2857, align 4
  br label %B5111
B5105:                               	; preds = %B5104, %B5111
  br label %B5093
B4148:                               	; preds = %B4150
  %t1596 = load i32, i32* %t2857, align 4
  %t1597 = load i32, i32* %t2858, align 4
  %t1598 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1597
  %t4157 = load i32, i32* %t1598, align 4
  %t1599 = mul i32 1, %t4157
  %t1600 = add i32 %t1596, %t1599
  store i32 %t1600, i32* %t2857, align 4
  br label %B4149
B4155:                               	; preds = %B4150
  br label %B4149
B4149:                               	; preds = %B4148, %B4152, %B4155
  %t1602 = load i32, i32* %t2859, align 4
  %t1603 = sdiv i32 %t1602, 2
  store i32 %t1603, i32* %t2859, align 4
  %t1605 = load i32, i32* %t2860, align 4
  %t1606 = sdiv i32 %t1605, 2
  store i32 %t1606, i32* %t2860, align 4
  %t1608 = load i32, i32* %t2858, align 4
  %t1609 = add i32 %t1608, 1
  store i32 %t1609, i32* %t2858, align 4
  %t4158 = load i32, i32* %t2858, align 4
  %t4159 = icmp slt i32 %t4158, 16
  br i1 %t4159, label %B4143, label %B4162
B4242:                               	; preds = %B4235
  %t1711 = load i32, i32* %t2860, align 4
  %t1712 = srem i32 %t1711, 2
  %t1715 = icmp ne i32 %t1712, 0
  br i1 %t1715, label %B4240, label %B4247
B4244:                               	; preds = %B4235
  br label %B4241
B4236:                               	; preds = %B4239, %B4254
  br label %B4229
B4401:                               	; preds = %B4394
  %t1908 = load i32, i32* %t2860, align 4
  %t1909 = srem i32 %t1908, 2
  %t1912 = icmp ne i32 %t1909, 0
  br i1 %t1912, label %B4399, label %B4406
B4403:                               	; preds = %B4394
  br label %B4400
B4395:                               	; preds = %B4398, %B4413
  br label %B4388
B4486:                               	; preds = %B4485, %B4492
  %t2027 = load i32, i32* %t2859, align 4
  %t2028 = srem i32 %t2027, 2
  %t2032 = icmp ne i32 %t2028, 0
  br i1 %t2032, label %B4493, label %B4495
B4490:                               	; preds = %B4485
  br label %B4487
B4746:                               	; preds = %B4717
  br label %B4661
B4722:                               	; preds = %B4716
  %t2301 = load i32, i32* %t2858, align 4
  %t2302 = icmp slt i32 %t2301, 16
  br i1 %t2302, label %B4723, label %B4727
B4806:                               	; preds = %B4793
  br label %B4788
B4809:                               	; preds = %B4807, %B4816
  %t2447 = load i32, i32* %t2857, align 4
  store i32 %t2447, i32* %t4749, align 4
  %t2449 = load i32, i32* %t4750, align 4
  store i32 %t2449, i32* %t4748, align 4
  %t4835 = load i32, i32* %t4749, align 4
  %t4836 = icmp ne i32 %t4835, 0
  br i1 %t4836, label %B4752, label %B4838
B4808:                               	; preds = %B4812
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2418 = load i32, i32* %t4749, align 4
  %t2419 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4813 = load i32, i32* %t2419, align 4
  %t2420 = mul i32 %t2418, %t4813
  store i32 %t2420, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4814
B4965:                               	; preds = %B4952
  br label %B4947
B4968:                               	; preds = %B4966, %B4975
  %t2644 = load i32, i32* %t2857, align 4
  store i32 %t2644, i32* %t4908, align 4
  %t2646 = load i32, i32* %t4909, align 4
  store i32 %t2646, i32* %t4907, align 4
  %t4994 = load i32, i32* %t4908, align 4
  %t4995 = icmp ne i32 %t4994, 0
  br i1 %t4995, label %B4911, label %B4997
B4967:                               	; preds = %B4971
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2615 = load i32, i32* %t4908, align 4
  %t2616 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4972 = load i32, i32* %t2616, align 4
  %t2617 = mul i32 %t2615, %t4972
  store i32 %t2617, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4973
B5036:                               	; preds = %B5016
  br label %B5010
B5043:                               	; preds = %B5045
  %t2715 = load i32, i32* %t2857, align 4
  %t2716 = load i32, i32* %t2858, align 4
  %t2717 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2716
  %t5052 = load i32, i32* %t2717, align 4
  %t2718 = mul i32 1, %t5052
  %t2719 = add i32 %t2715, %t2718
  store i32 %t2719, i32* %t2857, align 4
  br label %B5044
B5050:                               	; preds = %B5045
  br label %B5044
B5044:                               	; preds = %B5043, %B5047, %B5050
  %t2721 = load i32, i32* %t2859, align 4
  %t2722 = sdiv i32 %t2721, 2
  store i32 %t2722, i32* %t2859, align 4
  %t2724 = load i32, i32* %t2860, align 4
  %t2725 = sdiv i32 %t2724, 2
  store i32 %t2725, i32* %t2860, align 4
  %t2727 = load i32, i32* %t2858, align 4
  %t2728 = add i32 %t2727, 1
  store i32 %t2728, i32* %t2858, align 4
  %t5053 = load i32, i32* %t2858, align 4
  %t5054 = icmp slt i32 %t5053, 16
  br i1 %t5054, label %B5038, label %B5057
B5058:                               	; preds = %B5039
  store i32 0, i32* %t2857, align 4
  br label %B5060
B5063:                               	; preds = %B5039
  br label %B5059
B4162:                               	; preds = %B4149
  br label %B4144
B4240:                               	; preds = %B4242
  %t1717 = load i32, i32* %t2857, align 4
  %t1718 = load i32, i32* %t2858, align 4
  %t1719 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1718
  %t4249 = load i32, i32* %t1719, align 4
  %t1720 = mul i32 1, %t4249
  %t1721 = add i32 %t1717, %t1720
  store i32 %t1721, i32* %t2857, align 4
  br label %B4241
B4247:                               	; preds = %B4242
  br label %B4241
B4241:                               	; preds = %B4240, %B4244, %B4247
  %t1723 = load i32, i32* %t2859, align 4
  %t1724 = sdiv i32 %t1723, 2
  store i32 %t1724, i32* %t2859, align 4
  %t1726 = load i32, i32* %t2860, align 4
  %t1727 = sdiv i32 %t1726, 2
  store i32 %t1727, i32* %t2860, align 4
  %t1729 = load i32, i32* %t2858, align 4
  %t1730 = add i32 %t1729, 1
  store i32 %t1730, i32* %t2858, align 4
  %t4250 = load i32, i32* %t2858, align 4
  %t4251 = icmp slt i32 %t4250, 16
  br i1 %t4251, label %B4235, label %B4254
B4399:                               	; preds = %B4401
  %t1914 = load i32, i32* %t2857, align 4
  %t1915 = load i32, i32* %t2858, align 4
  %t1916 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1915
  %t4408 = load i32, i32* %t1916, align 4
  %t1917 = mul i32 1, %t4408
  %t1918 = add i32 %t1914, %t1917
  store i32 %t1918, i32* %t2857, align 4
  br label %B4400
B4406:                               	; preds = %B4401
  br label %B4400
B4400:                               	; preds = %B4399, %B4403, %B4406
  %t1920 = load i32, i32* %t2859, align 4
  %t1921 = sdiv i32 %t1920, 2
  store i32 %t1921, i32* %t2859, align 4
  %t1923 = load i32, i32* %t2860, align 4
  %t1924 = sdiv i32 %t1923, 2
  store i32 %t1924, i32* %t2860, align 4
  %t1926 = load i32, i32* %t2858, align 4
  %t1927 = add i32 %t1926, 1
  store i32 %t1927, i32* %t2858, align 4
  %t4409 = load i32, i32* %t2858, align 4
  %t4410 = icmp slt i32 %t4409, 16
  br i1 %t4410, label %B4394, label %B4413
B4493:                               	; preds = %B4486
  %t2029 = load i32, i32* %t2860, align 4
  %t2030 = srem i32 %t2029, 2
  %t2033 = icmp ne i32 %t2030, 0
  br i1 %t2033, label %B4491, label %B4498
B4495:                               	; preds = %B4486
  br label %B4492
B4487:                               	; preds = %B4490, %B4505
  br label %B4480
B4723:                               	; preds = %B4722, %B4729
  %t2303 = load i32, i32* %t2859, align 4
  %t2304 = srem i32 %t2303, 2
  %t2308 = icmp ne i32 %t2304, 0
  br i1 %t2308, label %B4730, label %B4732
B4727:                               	; preds = %B4722
  br label %B4724
B4838:                               	; preds = %B4809
  br label %B4753
B4814:                               	; preds = %B4808
  %t2422 = load i32, i32* %t2858, align 4
  %t2423 = icmp slt i32 %t2422, 16
  br i1 %t2423, label %B4815, label %B4819
B4997:                               	; preds = %B4968
  br label %B4912
B4973:                               	; preds = %B4967
  %t2619 = load i32, i32* %t2858, align 4
  %t2620 = icmp slt i32 %t2619, 16
  br i1 %t2620, label %B4974, label %B4978
B5057:                               	; preds = %B5044
  br label %B5039
B5060:                               	; preds = %B5058, %B5067
  %t2765 = load i32, i32* %t2857, align 4
  store i32 %t2765, i32* %t5000, align 4
  %t2767 = load i32, i32* %t5001, align 4
  store i32 %t2767, i32* %t4999, align 4
  %t5086 = load i32, i32* %t5000, align 4
  %t5087 = icmp ne i32 %t5086, 0
  br i1 %t5087, label %B5003, label %B5089
B5059:                               	; preds = %B5063
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2736 = load i32, i32* %t5000, align 4
  %t2737 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t5064 = load i32, i32* %t2737, align 4
  %t2738 = mul i32 %t2736, %t5064
  store i32 %t2738, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B5065
B4254:                               	; preds = %B4241
  br label %B4236
B4413:                               	; preds = %B4400
  br label %B4395
B4491:                               	; preds = %B4493
  %t2035 = load i32, i32* %t2857, align 4
  %t2036 = load i32, i32* %t2858, align 4
  %t2037 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2036
  %t4500 = load i32, i32* %t2037, align 4
  %t2038 = mul i32 1, %t4500
  %t2039 = add i32 %t2035, %t2038
  store i32 %t2039, i32* %t2857, align 4
  br label %B4492
B4498:                               	; preds = %B4493
  br label %B4492
B4492:                               	; preds = %B4491, %B4495, %B4498
  %t2041 = load i32, i32* %t2859, align 4
  %t2042 = sdiv i32 %t2041, 2
  store i32 %t2042, i32* %t2859, align 4
  %t2044 = load i32, i32* %t2860, align 4
  %t2045 = sdiv i32 %t2044, 2
  store i32 %t2045, i32* %t2860, align 4
  %t2047 = load i32, i32* %t2858, align 4
  %t2048 = add i32 %t2047, 1
  store i32 %t2048, i32* %t2858, align 4
  %t4501 = load i32, i32* %t2858, align 4
  %t4502 = icmp slt i32 %t4501, 16
  br i1 %t4502, label %B4486, label %B4505
B4730:                               	; preds = %B4723
  %t2305 = load i32, i32* %t2860, align 4
  %t2306 = srem i32 %t2305, 2
  %t2309 = icmp ne i32 %t2306, 0
  br i1 %t2309, label %B4728, label %B4735
B4732:                               	; preds = %B4723
  br label %B4729
B4724:                               	; preds = %B4727, %B4742
  br label %B4717
B4815:                               	; preds = %B4814, %B4821
  %t2424 = load i32, i32* %t2859, align 4
  %t2425 = srem i32 %t2424, 2
  %t2429 = icmp ne i32 %t2425, 0
  br i1 %t2429, label %B4822, label %B4824
B4819:                               	; preds = %B4814
  br label %B4816
B4974:                               	; preds = %B4973, %B4980
  %t2621 = load i32, i32* %t2859, align 4
  %t2622 = srem i32 %t2621, 2
  %t2626 = icmp ne i32 %t2622, 0
  br i1 %t2626, label %B4981, label %B4983
B4978:                               	; preds = %B4973
  br label %B4975
B5089:                               	; preds = %B5060
  br label %B5004
B5065:                               	; preds = %B5059
  %t2740 = load i32, i32* %t2858, align 4
  %t2741 = icmp slt i32 %t2740, 16
  br i1 %t2741, label %B5066, label %B5070
B4505:                               	; preds = %B4492
  br label %B4487
B4728:                               	; preds = %B4730
  %t2311 = load i32, i32* %t2857, align 4
  %t2312 = load i32, i32* %t2858, align 4
  %t2313 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2312
  %t4737 = load i32, i32* %t2313, align 4
  %t2314 = mul i32 1, %t4737
  %t2315 = add i32 %t2311, %t2314
  store i32 %t2315, i32* %t2857, align 4
  br label %B4729
B4735:                               	; preds = %B4730
  br label %B4729
B4729:                               	; preds = %B4728, %B4732, %B4735
  %t2317 = load i32, i32* %t2859, align 4
  %t2318 = sdiv i32 %t2317, 2
  store i32 %t2318, i32* %t2859, align 4
  %t2320 = load i32, i32* %t2860, align 4
  %t2321 = sdiv i32 %t2320, 2
  store i32 %t2321, i32* %t2860, align 4
  %t2323 = load i32, i32* %t2858, align 4
  %t2324 = add i32 %t2323, 1
  store i32 %t2324, i32* %t2858, align 4
  %t4738 = load i32, i32* %t2858, align 4
  %t4739 = icmp slt i32 %t4738, 16
  br i1 %t4739, label %B4723, label %B4742
B4822:                               	; preds = %B4815
  %t2426 = load i32, i32* %t2860, align 4
  %t2427 = srem i32 %t2426, 2
  %t2430 = icmp ne i32 %t2427, 0
  br i1 %t2430, label %B4820, label %B4827
B4824:                               	; preds = %B4815
  br label %B4821
B4816:                               	; preds = %B4819, %B4834
  br label %B4809
B4981:                               	; preds = %B4974
  %t2623 = load i32, i32* %t2860, align 4
  %t2624 = srem i32 %t2623, 2
  %t2627 = icmp ne i32 %t2624, 0
  br i1 %t2627, label %B4979, label %B4986
B4983:                               	; preds = %B4974
  br label %B4980
B4975:                               	; preds = %B4978, %B4993
  br label %B4968
B5066:                               	; preds = %B5065, %B5072
  %t2742 = load i32, i32* %t2859, align 4
  %t2743 = srem i32 %t2742, 2
  %t2747 = icmp ne i32 %t2743, 0
  br i1 %t2747, label %B5073, label %B5075
B5070:                               	; preds = %B5065
  br label %B5067
B4742:                               	; preds = %B4729
  br label %B4724
B4820:                               	; preds = %B4822
  %t2432 = load i32, i32* %t2857, align 4
  %t2433 = load i32, i32* %t2858, align 4
  %t2434 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2433
  %t4829 = load i32, i32* %t2434, align 4
  %t2435 = mul i32 1, %t4829
  %t2436 = add i32 %t2432, %t2435
  store i32 %t2436, i32* %t2857, align 4
  br label %B4821
B4827:                               	; preds = %B4822
  br label %B4821
B4821:                               	; preds = %B4820, %B4824, %B4827
  %t2438 = load i32, i32* %t2859, align 4
  %t2439 = sdiv i32 %t2438, 2
  store i32 %t2439, i32* %t2859, align 4
  %t2441 = load i32, i32* %t2860, align 4
  %t2442 = sdiv i32 %t2441, 2
  store i32 %t2442, i32* %t2860, align 4
  %t2444 = load i32, i32* %t2858, align 4
  %t2445 = add i32 %t2444, 1
  store i32 %t2445, i32* %t2858, align 4
  %t4830 = load i32, i32* %t2858, align 4
  %t4831 = icmp slt i32 %t4830, 16
  br i1 %t4831, label %B4815, label %B4834
B4979:                               	; preds = %B4981
  %t2629 = load i32, i32* %t2857, align 4
  %t2630 = load i32, i32* %t2858, align 4
  %t2631 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2630
  %t4988 = load i32, i32* %t2631, align 4
  %t2632 = mul i32 1, %t4988
  %t2633 = add i32 %t2629, %t2632
  store i32 %t2633, i32* %t2857, align 4
  br label %B4980
B4986:                               	; preds = %B4981
  br label %B4980
B4980:                               	; preds = %B4979, %B4983, %B4986
  %t2635 = load i32, i32* %t2859, align 4
  %t2636 = sdiv i32 %t2635, 2
  store i32 %t2636, i32* %t2859, align 4
  %t2638 = load i32, i32* %t2860, align 4
  %t2639 = sdiv i32 %t2638, 2
  store i32 %t2639, i32* %t2860, align 4
  %t2641 = load i32, i32* %t2858, align 4
  %t2642 = add i32 %t2641, 1
  store i32 %t2642, i32* %t2858, align 4
  %t4989 = load i32, i32* %t2858, align 4
  %t4990 = icmp slt i32 %t4989, 16
  br i1 %t4990, label %B4974, label %B4993
B5073:                               	; preds = %B5066
  %t2744 = load i32, i32* %t2860, align 4
  %t2745 = srem i32 %t2744, 2
  %t2748 = icmp ne i32 %t2745, 0
  br i1 %t2748, label %B5071, label %B5078
B5075:                               	; preds = %B5066
  br label %B5072
B5067:                               	; preds = %B5070, %B5085
  br label %B5060
B4834:                               	; preds = %B4821
  br label %B4816
B4993:                               	; preds = %B4980
  br label %B4975
B5071:                               	; preds = %B5073
  %t2750 = load i32, i32* %t2857, align 4
  %t2751 = load i32, i32* %t2858, align 4
  %t2752 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2751
  %t5080 = load i32, i32* %t2752, align 4
  %t2753 = mul i32 1, %t5080
  %t2754 = add i32 %t2750, %t2753
  store i32 %t2754, i32* %t2857, align 4
  br label %B5072
B5078:                               	; preds = %B5073
  br label %B5072
B5072:                               	; preds = %B5071, %B5075, %B5078
  %t2756 = load i32, i32* %t2859