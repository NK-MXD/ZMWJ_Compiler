define i32 @palindrome(i32 %t0) {
B41:
  %t42 = alloca i32, align 4
  %t43 = alloca [4 x i32], align 4
  store i32 %t0, i32* %t42, align 4
  br label %B46
B46:                               	; preds = %B41
  %t81 = add i32 0, 0
  %t7 = icmp slt i32 0, 4
  br i1 %t7, label %B47, label %B51
B47:                               	; preds = %B46, %B97
  %t10 = load i32, i32* %t42, align 4
  %t11 = srem i32 %t10, 10
  %t9 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 %t81
  store i32 %t11, i32* %t9, align 4
  %t13 = load i32, i32* %t42, align 4
  %t14 = sdiv i32 %t13, 10
  store i32 %t14, i32* %t42, align 4
  %t17 = add i32 %t81, 1
  %t53 = icmp slt i32 %t17, 4
  br i1 %t53, label %B97, label %B56
B51:                               	; preds = %B46
  %t82 = add i32 0, 0
  br label %B48
B56:                               	; preds = %B47
  %t82 = add i32 %t17, 0
  br label %B48
B97:                               	; preds = %B47
  %t81 = add i32 %t17, 0
  br label %B47
B48:                               	; preds = %B51, %B56
  %t18 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 0
  %t61 = load i32, i32* %t18, align 4
  %t19 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 3
  %t62 = load i32, i32* %t19, align 4
  %t20 = icmp eq i32 %t61, %t62
  br i1 %t20, label %B60, label %B65
B60:                               	; preds = %B48
  %t21 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 1
  %t66 = load i32, i32* %t21, align 4
  %t22 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 2
  %t67 = load i32, i32* %t22, align 4
  %t23 = icmp eq i32 %t66, %t67
  br i1 %t23, label %B57, label %B70
B65:                               	; preds = %B48
  br label %B58
B57:                               	; preds = %B60
  %t87 = add i32 1, 0
  br label %B59
B70:                               	; preds = %B60
  br label %B58
B58:                               	; preds = %B65, %B70
  %t87 = add i32 0, 0
  br label %B59
B59:                               	; preds = %B57, %B58
  ret i32 %t87
}
define i32 @main() {
B71:
  %t33 = call i32 @palindrome(i32 1221)
  %t35 = icmp eq i32 %t33, 1
  br i1 %t35, label %B74, label %B79
B74:                               	; preds = %B71
  call void @putint(i32 1221)
  %t93 = add i32 %t33, 0
  br label %B76
B79:                               	; preds = %B71
  br label %B75
B76:                               	; preds = %B74, %B75
  call void @putch(i32 10)
  ret i32 0
B75:                               	; preds = %B79
  call void @putint(i32 0)
  %t93 = add i32 0, 0
  br label %B76
}
declare void @putint(i32)
declare void @putch(i32)
