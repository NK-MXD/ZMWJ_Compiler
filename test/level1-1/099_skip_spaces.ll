define i32 @main() {
B23:
  %t24 = alloca [100 x i32], align 4
  br label %B27
B27:                               	; preds = %B23
  %t3 = call i32 @getint()
  %t56 = add i32 0, 0
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %B28, label %B31
B28:                               	; preds = %B27, %B68
  %t7 = call i32 @getint()
  %t6 = getelementptr inbounds [100 x i32], [100 x i32]* %t24, i32 0, i32 %t56
  store i32 %t7, i32* %t6, align 4
  %t10 = add i32 %t56, 1
  %t33 = call i32 @getint()
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %B68, label %B36
B31:                               	; preds = %B27
  %t57 = add i32 0, 0
  br label %B29
B36:                               	; preds = %B28
  %t57 = add i32 %t10, 0
  br label %B29
B68:                               	; preds = %B28
  %t56 = add i32 %t10, 0
  br label %B28
B29:                               	; preds = %B31, %B36
  br label %B38
B38:                               	; preds = %B29
  %t62 = add i32 0, 0
  %t51 = add i32 %t57, 0
  %t12 = icmp ne i32 %t57, 0
  br i1 %t12, label %B39, label %B42
B39:                               	; preds = %B38, %B72
  %t15 = sub i32 %t51, 1
  %t19 = getelementptr inbounds [100 x i32], [100 x i32]* %t24, i32 0, i32 %t15
  %t44 = load i32, i32* %t19, align 4
  %t20 = add i32 %t62, %t44
  %t46 = icmp ne i32 %t15, 0
  br i1 %t46, label %B72, label %B48
B42:                               	; preds = %B38
  %t63 = add i32 0, 0
  %t52 = add i32 %t57, 0
  br label %B40
B48:                               	; preds = %B39
  %t63 = add i32 %t20, 0
  %t52 = add i32 %t15, 0
  br label %B40
B72:                               	; preds = %B39
  %t62 = add i32 %t20, 0
  %t51 = add i32 %t15, 0
  br label %B39
B40:                               	; preds = %B42, %B48
  %t22 = srem i32 %t63, 79
  ret i32 %t22
}
declare i32 @getint()
