define i32 @main() {
B63:
  %t66 = alloca [10 x i32], align 4
  br label %B67
B67:                               	; preds = %B63
  %t125 = add i32 0, 0
  %t6 = icmp slt i32 0, 10
  br i1 %t6, label %B68, label %B72
B68:                               	; preds = %B67, %B160
  %t10 = add i32 %t125, 1
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t125
  store i32 %t10, i32* %t8, align 4
  %t74 = icmp slt i32 %t10, 10
  br i1 %t74, label %B160, label %B77
B72:                               	; preds = %B67
  %t126 = add i32 0, 0
  br label %B69
B77:                               	; preds = %B68
  %t126 = add i32 %t10, 0
  br label %B69
B160:                               	; preds = %B68
  %t125 = add i32 %t10, 0
  br label %B68
B69:                               	; preds = %B72, %B77
  %t21 = call i32 @getint()
  %t24 = sub i32 10, 1
  %t29 = add i32 %t24, 0
  %t30 = sdiv i32 %t29, 2
  br label %B83
B83:                               	; preds = %B69
  %t32 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t30
  %t87 = load i32, i32* %t32, align 4
  %t154 = add i32 %t30, 0
  %t148 = add i32 0, 0
  %t140 = add i32 %t24, 0
  %t34 = icmp ne i32 %t87, %t21
  br i1 %t34, label %B109, label %B90
B109:                               	; preds = %B83, %B96
  %t107 = icmp slt i32 %t148, %t140
  br i1 %t107, label %B84, label %B116
B90:                               	; preds = %B83
  %t153 = add i32 %t30, 0
  %t147 = add i32 0, 0
  %t139 = add i32 %t24, 0
  br label %B85
B84:                               	; preds = %B109
  %t42 = add i32 %t140, %t148
  %t43 = sdiv i32 %t42, 2
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t43
  %t97 = load i32, i32* %t46, align 4
  %t47 = icmp slt i32 %t21, %t97
  br i1 %t47, label %B94, label %B100
B116:                               	; preds = %B109
  %t153 = add i32 %t154, 0
  %t147 = add i32 %t148, 0
  %t139 = add i32 %t140, 0
  br label %B85
B85:                               	; preds = %B90, %B113, %B116
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t153
  %t120 = load i32, i32* %t56, align 4
  %t57 = icmp eq i32 %t21, %t120
  br i1 %t57, label %B117, label %B123
B94:                               	; preds = %B84
  %t50 = sub i32 %t43, 1
  %t145 = add i32 %t148, 0
  %t137 = add i32 %t50, 0
  br label %B96
B100:                               	; preds = %B84
  br label %B95
B117:                               	; preds = %B85
  call void @putint(i32 %t21)
  %t133 = add i32 %t21, 0
  br label %B119
B123:                               	; preds = %B85
  br label %B118
B96:                               	; preds = %B94, %B95
  %t102 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t43
  %t110 = load i32, i32* %t102, align 4
  %t154 = add i32 %t43, 0
  %t148 = add i32 %t145, 0
  %t140 = add i32 %t137, 0
  %t104 = icmp ne i32 %t110, %t21
  br i1 %t104, label %B109, label %B113
B95:                               	; preds = %B100
  %t53 = add i32 %t43, 1
  %t145 = add i32 %t53, 0
  %t137 = add i32 %t140, 0
  br label %B96
B119:                               	; preds = %B117, %B118
  call void @putch(i32 10)
  ret i32 0
B118:                               	; preds = %B123
  call void @putint(i32 0)
  %t133 = add i32 0, 0
  br label %B119
B113:                               	; preds = %B96
  %t153 = add i32 %t43, 0
  %t147 = add i32 %t145, 0
  %t139 = add i32 %t137, 0
  br label %B85
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
