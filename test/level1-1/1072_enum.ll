define i32 @main() {
B38:
  br label %B43
B43:                               	; preds = %B38
  %t104 = add i32 0, 0
  %t92 = add i32 0, 0
  %t82 = add i32 0, 0
  %t73 = add i32 0, 0
  %t8 = icmp slt i32 0, 21
  br i1 %t8, label %B44, label %B48
B44:                               	; preds = %B43, %B51
  br label %B49
B48:                               	; preds = %B43
  %t105 = add i32 0, 0
  %t93 = add i32 0, 0
  %t83 = add i32 0, 0
  %t74 = add i32 0, 0
  br label %B45
B49:                               	; preds = %B44
  %t11 = sub i32 101, %t73
  %t101 = add i32 %t104, 0
  %t89 = add i32 %t92, 0
  %t79 = add i32 %t82, 0
  %t12 = icmp slt i32 %t82, %t11
  br i1 %t12, label %B50, label %B54
B45:                               	; preds = %B48, %B71
  ret i32 0
B50:                               	; preds = %B49, %B56
  %t15 = sub i32 100, %t73
  %t17 = sub i32 %t15, %t79
  %t19 = mul i32 5, %t73
  %t21 = mul i32 1, %t79
  %t22 = add i32 %t19, %t21
  %t24 = sdiv i32 %t17, 2
  %t25 = add i32 %t22, %t24
  %t26 = icmp eq i32 %t25, 100
  br i1 %t26, label %B55, label %B59
B54:                               	; preds = %B49
  %t102 = add i32 %t104, 0
  %t90 = add i32 %t92, 0
  %t80 = add i32 %t82, 0
  br label %B51
B55:                               	; preds = %B50
  call void @putint(i32 %t73)
  call void @putint(i32 %t79)
  call void @putint(i32 %t17)
  call void @putch(i32 10)
  %t99 = add i32 10, 0
  br label %B56
B59:                               	; preds = %B50
  %t99 = add i32 %t101, 0
  br label %B56
B51:                               	; preds = %B54, %B66
  %t37 = add i32 %t73, 1
  %t104 = add i32 %t102, 0
  %t92 = add i32 %t90, 0
  %t82 = add i32 %t80, 0
  %t73 = add i32 %t37, 0
  %t68 = icmp slt i32 %t37, 21
  br i1 %t68, label %B44, label %B71
B56:                               	; preds = %B55, %B59
  %t34 = add i32 %t79, 1
  %t62 = sub i32 101, %t73
  %t101 = add i32 %t99, 0
  %t89 = add i32 %t17, 0
  %t79 = add i32 %t34, 0
  %t63 = icmp slt i32 %t34, %t62
  br i1 %t63, label %B50, label %B66
B71:                               	; preds = %B51
  %t105 = add i32 %t102, 0
  %t93 = add i32 %t90, 0
  %t83 = add i32 %t80, 0
  %t74 = add i32 %t37, 0
  br label %B45
B66:                               	; preds = %B56
  %t102 = add i32 %t99, 0
  %t90 = add i32 %t17, 0
  %t80 = add i32 %t34, 0
  br label %B51
}
declare void @putint(i32)
declare void @putch(i32)
