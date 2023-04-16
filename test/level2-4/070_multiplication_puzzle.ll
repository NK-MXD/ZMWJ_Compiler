@a = global [6 x i32] [i32 10, i32 1, i32 50, i32 50, i32 20, i32 5], align 4
@dp = global [10 x [10 x i32]] zeroinitializer, align 4
define i32 @main() {
B75:
  br label %B82
B82:                               	; preds = %B75
  %t192 = add i32 0, 0
  %t180 = add i32 0, 0
  %t169 = add i32 0, 0
  %t156 = add i32 0, 0
  %t147 = add i32 3, 0
  %t12 = icmp sle i32 3, 6
  br i1 %t12, label %B83, label %B87
B83:                               	; preds = %B82, %B90
  br label %B88
B87:                               	; preds = %B82
  %t193 = add i32 0, 0
  %t181 = add i32 0, 0
  %t170 = add i32 0, 0
  %t157 = add i32 0, 0
  %t148 = add i32 3, 0
  br label %B84
B88:                               	; preds = %B83
  %t17 = sub i32 6, %t147
  %t18 = add i32 %t17, 1
  %t189 = add i32 %t192, 0
  %t177 = add i32 %t180, 0
  %t166 = add i32 %t169, 0
  %t153 = add i32 0, 0
  %t19 = icmp slt i32 0, %t18
  br i1 %t19, label %B89, label %B93
B84:                               	; preds = %B87, %B142
  %t74 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 0
  %t73 = sub i32 6, 1
  %t143 = getelementptr inbounds [10 x i32], [10 x i32]* %t74, i32 0, i32 %t73
  %t144 = load i32, i32* %t143, align 4
  call void @putint(i32 %t144)
  ret i32 0
B89:                               	; preds = %B88, %B96
  %t23 = add i32 %t153, %t147
  %t24 = sub i32 %t23, 1
  %t27 = add i32 %t153, 1
  br label %B94
B93:                               	; preds = %B88
  %t190 = add i32 %t192, 0
  %t178 = add i32 %t180, 0
  %t167 = add i32 %t169, 0
  %t154 = add i32 0, 0
  br label %B90
B94:                               	; preds = %B89
  %t186 = add i32 %t189, 0
  %t163 = add i32 %t27, 0
  %t30 = icmp slt i32 %t27, %t24
  br i1 %t30, label %B95, label %B99
B90:                               	; preds = %B93, %B136
  %t71 = add i32 %t147, 1
  %t192 = add i32 %t190, 0
  %t180 = add i32 %t178, 0
  %t169 = add i32 %t167, 0
  %t156 = add i32 %t154, 0
  %t147 = add i32 %t71, 0
  %t139 = icmp sle i32 %t71, 6
  br i1 %t139, label %B83, label %B142
B95:                               	; preds = %B94, %B108
  %t34 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t153
  %t100 = getelementptr inbounds [10 x i32], [10 x i32]* %t34, i32 0, i32 %t163
  %t101 = load i32, i32* %t100, align 4
  %t37 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t163
  %t102 = getelementptr inbounds [10 x i32], [10 x i32]* %t37, i32 0, i32 %t24
  %t103 = load i32, i32* %t102, align 4
  %t38 = add i32 %t101, %t103
  %t40 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t153
  %t104 = load i32, i32* %t40, align 4
  %t42 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t163
  %t105 = load i32, i32* %t42, align 4
  %t43 = mul i32 %t104, %t105
  %t45 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i32 0, i32 %t24
  %t106 = load i32, i32* %t45, align 4
  %t46 = mul i32 %t43, %t106
  %t47 = add i32 %t38, %t46
  %t50 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t153
  %t110 = getelementptr inbounds [10 x i32], [10 x i32]* %t50, i32 0, i32 %t24
  %t111 = load i32, i32* %t110, align 4
  %t112 = icmp ne i32 %t111, 0
  %t51 = xor i1 %t112, true
  %t58 = icmp ne i1 %t51, 0
  br i1 %t58, label %B107, label %B114
B99:                               	; preds = %B94
  %t187 = add i32 %t189, 0
  %t164 = add i32 %t27, 0
  br label %B96
B142:                               	; preds = %B90
  %t193 = add i32 %t190, 0
  %t181 = add i32 %t178, 0
  %t170 = add i32 %t167, 0
  %t157 = add i32 %t154, 0
  %t148 = add i32 %t71, 0
  br label %B84
B107:                               	; preds = %B95, %B109
  %t61 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t153
  %t121 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t24
  store i32 %t47, i32* %t121, align 4
  br label %B108
B114:                               	; preds = %B95
  br label %B109
B96:                               	; preds = %B99, %B127
  %t68 = add i32 %t153, 1
  %t131 = sub i32 6, %t147
  %t132 = add i32 %t131, 1
  %t189 = add i32 %t187, 0
  %t177 = add i32 %t24, 0
  %t166 = add i32 %t164, 0
  %t153 = add i32 %t68, 0
  %t133 = icmp slt i32 %t68, %t132
  br i1 %t133, label %B89, label %B136
B108:                               	; preds = %B107, %B120
  %t65 = add i32 %t163, 1
  %t186 = add i32 %t47, 0
  %t163 = add i32 %t65, 0
  %t124 = icmp slt i32 %t65, %t24
  br i1 %t124, label %B95, label %B127
B109:                               	; preds = %B114
  %t55 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @dp, i32 0, i32 %t153
  %t116 = getelementptr inbounds [10 x i32], [10 x i32]* %t55, i32 0, i32 %t24
  %t117 = load i32, i32* %t116, align 4
  %t56 = icmp slt i32 %t47, %t117
  br i1 %t56, label %B107, label %B120
B136:                               	; preds = %B96
  %t190 = add i32 %t187, 0
  %t178 = add i32 %t24, 0
  %t167 = add i32 %t164, 0
  %t154 = add i32 %t68, 0
  br label %B90
B127:                               	; preds = %B108
  %t187 = add i32 %t47, 0
  %t164 = add i32 %t65, 0
  br label %B96
B120:                               	; preds = %B109
  br label %B108
}
declare void @putint(i32)
