define i32 @deepWhileBr(i32 %t0, i32 %t2) {
B35:
  %t36 = alloca i32, align 4
  %t37 = alloca i32, align 4
  store i32 %t0, i32* %t36, align 4
  store i32 %t2, i32* %t37, align 4
  %t6 = load i32, i32* %t36, align 4
  %t7 = load i32, i32* %t37, align 4
  %t8 = add i32 %t6, %t7
  br label %B39
B39:                               	; preds = %B35
  %t92 = add i32 0, 0
  %t83 = add i32 0, 0
  %t76 = add i32 %t8, 0
  %t10 = icmp slt i32 %t8, 75
  br i1 %t10, label %B40, label %B44
B40:                               	; preds = %B39, %B47
  %t14 = icmp slt i32 %t76, 100
  br i1 %t14, label %B46, label %B50
B44:                               	; preds = %B39
  %t93 = add i32 0, 0
  %t84 = add i32 0, 0
  %t77 = add i32 %t8, 0
  br label %B41
B46:                               	; preds = %B40
  %t18 = add i32 %t76, 42
  %t20 = icmp sgt i32 %t18, 99
  br i1 %t20, label %B51, label %B55
B50:                               	; preds = %B40
  %t90 = add i32 %t92, 0
  %t74 = add i32 %t76, 0
  br label %B47
B41:                               	; preds = %B44, %B66
  ret i32 %t77
B51:                               	; preds = %B46
  %t24 = mul i32 42, 2
  %t25 = icmp eq i32 1, 1
  br i1 %t25, label %B57, label %B61
B55:                               	; preds = %B46
  %t88 = add i32 %t92, 0
  %t72 = add i32 %t18, 0
  br label %B52
B47:                               	; preds = %B50, %B52
  %t92 = add i32 %t90, 0
  %t83 = add i32 42, 0
  %t76 = add i32 %t74, 0
  %t63 = icmp slt i32 %t74, 75
  br i1 %t63, label %B40, label %B66
B57:                               	; preds = %B51
  %t28 = mul i32 %t24, 2
  %t70 = add i32 %t28, 0
  br label %B58
B61:                               	; preds = %B51
  %t70 = add i32 %t18, 0
  br label %B58
B52:                               	; preds = %B55, %B58
  %t90 = add i32 %t88, 0
  %t74 = add i32 %t72, 0
  br label %B47
B66:                               	; preds = %B47
  %t93 = add i32 %t90, 0
  %t84 = add i32 42, 0
  %t77 = add i32 %t74, 0
  br label %B41
B58:                               	; preds = %B57, %B61
  %t88 = add i32 %t24, 0
  %t72 = add i32 %t70, 0
  br label %B52
}
define i32 @main() {
B67:
  %t34 = call i32 @deepWhileBr(i32 2, i32 2)
  ret i32 %t34
}
