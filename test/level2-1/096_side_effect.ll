@a = global i32 -1, align 4
@b = global i32 1, align 4
define i32 @inc_a() {
B46:
  %t3 = load i32, i32* @a, align 4
  %t7 = add i32 %t3, 1
  store i32 %t7, i32* @a, align 4
  %t10 = load i32, i32* @a, align 4
  ret i32 %t10
}
define i32 @main() {
B48:
  br label %B50
B50:                               	; preds = %B48
  %t91 = add i32 5, 0
  %t13 = icmp sge i32 5, 0
  br i1 %t13, label %B51, label %B55
B51:                               	; preds = %B50, %B71
  %t14 = call i32 @inc_a()
  %t17 = icmp ne i32 %t14, 0
  br i1 %t17, label %B59, label %B61
B55:                               	; preds = %B50
  %t92 = add i32 5, 0
  br label %B52
B59:                               	; preds = %B51
  %t15 = call i32 @inc_a()
  %t18 = icmp ne i32 %t15, 0
  br i1 %t18, label %B58, label %B64
B61:                               	; preds = %B51
  br label %B57
B52:                               	; preds = %B55, %B87
  %t43 = load i32, i32* @a, align 4
  call void @putint(i32 %t43)
  call void @putch(i32 32)
  %t44 = load i32, i32* @b, align 4
  call void @putint(i32 %t44)
  call void @putch(i32 10)
  %t45 = load i32, i32* @a, align 4
  ret i32 %t45
B58:                               	; preds = %B59
  %t19 = call i32 @inc_a()
  %t21 = icmp ne i32 %t19, 0
  br i1 %t21, label %B56, label %B67
B64:                               	; preds = %B59
  br label %B57
B57:                               	; preds = %B56, %B61, %B64, %B67
  %t24 = call i32 @inc_a()
  %t25 = icmp slt i32 %t24, 14
  br i1 %t25, label %B69, label %B75
B56:                               	; preds = %B58
  %t22 = load i32, i32* @a, align 4
  call void @putint(i32 %t22)
  call void @putch(i32 32)
  %t23 = load i32, i32* @b, align 4
  call void @putint(i32 %t23)
  call void @putch(i32 10)
  br label %B57
B67:                               	; preds = %B58
  br label %B57
B69:                               	; preds = %B57, %B76
  %t35 = load i32, i32* @a, align 4
  call void @putint(i32 %t35)
  call void @putch(i32 10)
  %t37 = load i32, i32* @b, align 4
  %t38 = mul i32 %t37, 2
  store i32 %t38, i32* @b, align 4
  br label %B71
B75:                               	; preds = %B57
  br label %B72
B71:                               	; preds = %B69, %B70
  %t42 = sub i32 %t91, 1
  %t91 = add i32 %t42, 0
  %t84 = icmp sge i32 %t42, 0
  br i1 %t84, label %B51, label %B87
B72:                               	; preds = %B75
  %t26 = call i32 @inc_a()
  %t32 = icmp ne i32 %t26, 0
  br i1 %t32, label %B76, label %B78
B87:                               	; preds = %B71
  %t92 = add i32 %t42, 0
  br label %B52
B76:                               	; preds = %B72
  %t27 = call i32 @inc_a()
  %t28 = call i32 @inc_a()
  %t29 = sub i32 %t27, %t28
  %t30 = add i32 %t29, 1
  %t33 = icmp ne i32 %t30, 0
  br i1 %t33, label %B69, label %B81
B78:                               	; preds = %B72
  br label %B70
B81:                               	; preds = %B76
  br label %B70
B70:                               	; preds = %B78, %B81
  %t39 = call i32 @inc_a()
  br label %B71
}
declare void @putint(i32)
declare void @putch(i32)
