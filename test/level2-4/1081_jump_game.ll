define i32 @canJump(i32* %t0, i32 %t2) {
B82:
  %t83 = alloca i32*, align 4
  %t84 = alloca i32, align 4
  %t97 = alloca [10 x i32], align 4
  %t98 = alloca i32, align 4
  %t118 = alloca i32, align 4
  store i32* %t0, i32** %t83, align 4
  store i32 %t2, i32* %t84, align 4
  %t4 = load i32, i32* %t84, align 4
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %B85, label %B89
B85:                               	; preds = %B82
  ret i32 1
B89:                               	; preds = %B82
  br label %B86
B86:                               	; preds = %B89
  %t92 = load i32*, i32** %t83, align 4
  %t6 = getelementptr inbounds i32, i32* %t92, i32 0
  %t93 = load i32, i32* %t6, align 4
  %t7 = load i32, i32* %t84, align 4
  %t8 = sub i32 %t7, 2
  %t9 = icmp sgt i32 %t93, %t8
  br i1 %t9, label %B90, label %B96
B90:                               	; preds = %B86
  ret i32 1
B96:                               	; preds = %B86
  br label %B91
B91:                               	; preds = %B96
  store i32 0, i32* %t98, align 4
  br label %B99
B99:                               	; preds = %B91
  %t13 = load i32, i32* %t98, align 4
  %t14 = load i32, i32* %t84, align 4
  %t15 = sub i32 %t14, 1
  %t16 = icmp slt i32 %t13, %t15
  br i1 %t16, label %B100, label %B104
B100:                               	; preds = %B99, %B100
  %t17 = load i32, i32* %t98, align 4
  %t18 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t17
  store i32 0, i32* %t18, align 4
  %t20 = load i32, i32* %t98, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t98, align 4
  %t105 = load i32, i32* %t98, align 4
  %t106 = load i32, i32* %t84, align 4
  %t107 = sub i32 %t106, 1
  %t108 = icmp slt i32 %t105, %t107
  br i1 %t108, label %B100, label %B111
B104:                               	; preds = %B99
  br label %B101
B111:                               	; preds = %B100
  br label %B101
B101:                               	; preds = %B104, %B111
  %t22 = load i32, i32* %t84, align 4
  %t23 = sub i32 %t22, 1
  %t24 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t23
  store i32 1, i32* %t24, align 4
  %t26 = load i32, i32* %t84, align 4
  %t27 = sub i32 %t26, 2
  store i32 %t27, i32* %t98, align 4
  br label %B112
B112:                               	; preds = %B101
  %t28 = load i32, i32* %t98, align 4
  %t29 = sub i32 0, 1
  %t30 = icmp sgt i32 %t28, %t29
  br i1 %t30, label %B113, label %B117
B113:                               	; preds = %B112, %B131
  %t122 = load i32*, i32** %t83, align 4
  %t32 = load i32, i32* %t98, align 4
  %t33 = getelementptr inbounds i32, i32* %t122, i32 %t32
  %t123 = load i32, i32* %t33, align 4
  %t34 = load i32, i32* %t84, align 4
  %t35 = sub i32 %t34, 1
  %t36 = load i32, i32* %t98, align 4
  %t37 = sub i32 %t35, %t36
  %t38 = icmp slt i32 %t123, %t37
  br i1 %t38, label %B119, label %B126
B117:                               	; preds = %B112
  br label %B114
B119:                               	; preds = %B113
  %t127 = load i32*, i32** %t83, align 4
  %t40 = load i32, i32* %t98, align 4
  %t41 = getelementptr inbounds i32, i32* %t127, i32 %t40
  %t128 = load i32, i32* %t41, align 4
  store i32 %t128, i32* %t118, align 4
  br label %B121
B126:                               	; preds = %B113
  br label %B120
B114:                               	; preds = %B117, %B152
  %t63 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 0
  %t153 = load i32, i32* %t63, align 4
  ret i32 %t153
B121:                               	; preds = %B119, %B120
  br label %B129
B120:                               	; preds = %B126
  %t43 = load i32, i32* %t84, align 4
  %t44 = sub i32 %t43, 1
  %t45 = load i32, i32* %t98, align 4
  %t46 = sub i32 %t44, %t45
  store i32 %t46, i32* %t118, align 4
  br label %B121
B129:                               	; preds = %B121
  %t47 = load i32, i32* %t118, align 4
  %t48 = sub i32 0, 1
  %t49 = icmp sgt i32 %t47, %t48
  br i1 %t49, label %B130, label %B134
B130:                               	; preds = %B129, %B136
  %t50 = load i32, i32* %t98, align 4
  %t51 = loa