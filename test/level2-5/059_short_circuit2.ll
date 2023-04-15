define i32 @func(i32 %t0) {
B27:
  %t28 = alloca i32, align 4
  store i32 %t0, i32* %t28, align 4
  %t2 = load i32, i32* %t28, align 4
  %t3 = icmp sle i32 %t2, 50
  br i1 %t3, label %B29, label %B34
B29:                               	; preds = %B27
  %t4 = load i32, i32* %t28, align 4
  call void @putint(i32 %t4)
  ret i32 1
B34:                               	; preds = %B27
  br label %B30
B30:                               	; preds = %B34
  %t5 = load i32, i32* %t28, align 4
  call void @putint(i32 %t5)
  ret i32 0
}
define i32 @main() {
B35:
  %t36 = alloca i32, align 4
  %t7 = call i32 @func(i32 0)
  %t8 = icmp eq i32 %t7, 1
  br i1 %t8, label %B37, label %B43
B37:                               	; preds = %B35, %B44
  store i32 0, i32* %t36, align 4
  br label %B39
B43:                               	; preds = %B35
  br label %B40
B39:                               	; preds = %B37, %B38
  %t17 = call i32 @func(i32 50)
  %t18 = icmp eq i32 %t17, 1
  br i1 %t18, label %B55, label %B58
B40:                               	; preds = %B43
  %t9 = call i32 @func(i32 50)
  %t10 = icmp eq i32 %t9, 1
  br i1 %t10, label %B44, label %B47
B55:                               	; preds = %B39
  %t19 = call i32 @func(i32 40)
  %t20 = icmp eq i32 %t19, 1
  br i1 %t20, label %B51, label %B61
B58:                               	; preds = %B39
  br label %B54
B44:                               	; preds = %B40
  %t11 = call i32 @func(i32 100)
  %t12 = icmp eq i32 %t11, 0
  br i1 %t12, label %B37, label %B50
B47:                               	; preds = %B40
  br label %B38
B51:                               	; preds = %B54, %B55
  store i32 0, i32* %t36, align 4
  br label %B53
B61:                               	; preds = %B55
  br label %B54
B54:                               	; preds = %B58, %B61
  %t22 = call i32 @func(i32 1)
  %t23 = icmp eq i32 %t22, 1
  br i1 %t23, label %B51, label %B64
B50:                               	; preds = %B44
  br label %B38
B38:                               	; preds = %B47, %B50
  store i32 1, i32* %t36, align 4
  br label %B39
B53:                               	; preds = %B51, %B52
  ret i32 0
B64:                               	; preds = %B54
  br label %B52
B52:                               	; preds = %B64
  store i32 1, i32* %t36, align 4
  br label %B53
}
declare void @putint(i32)
