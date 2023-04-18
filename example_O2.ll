@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4
define i32 @set_a(i32 %t3) {
B47:
  %t48 = alloca i32, align 4
  store i32 %t3, i32* %t48, align 4
  %t6 = load i32, i32* %t48, align 4
  store i32 %t6, i32* @a, align 4
  %t7 = load i32, i32* @a, align 4
  ret i32 %t7
}
define i32 @set_b(i32 %t8) {
B49:
  %t50 = alloca i32, align 4
  store i32 %t8, i32* %t50, align 4
  %t11 = load i32, i32* %t50, align 4
  store i32 %t11, i32* @b, align 4
  %t12 = load i32, i32* @b, align 4
  ret i32 %t12
}
define i32 @set_d(i32 %t13) {
B51:
  %t52 = alloca i32, align 4
  store i32 %t13, i32* %t52, align 4
  %t16 = load i32, i32* %t52, align 4
  store i32 %t16, i32* @d, align 4
  %t17 = load i32, i32* @d, align 4
  ret i32 %t17
}
define i32 @main() {
B53:
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t20 = call i32 @set_a(i32 0)
  %t23 = icmp ne i32 %t20, 0
  br i1 %t23, label %B56, label %B58
B56:                               	; preds = %B53
  %t21 = call i32 @set_b(i32 1)
  %t24 = icmp ne i32 %t21, 0
  br i1 %t24, label %B54, label %B61
B58:                               	; preds = %B53
  br label %B55
B54:                               	; preds = %B56
  br label %B55
B61:                               	; preds = %B56
  br label %B55
B55:                               	; preds = %B54, %B58, %B61
  %t25 = load i32, i32* @a, align 4
  call void @putint(i32 %t25)
  call void @putch(i32 32)
  %t26 = load i32, i32* @b, align 4
  call void @putint(i32 %t26)
  call void @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t29 = call i32 @set_a(i32 0)
  %t32 = icmp ne i32 %t29, 0
  br i1 %t32, label %B65, label %B67
B65:                               	; preds = %B55
  %t30 = call i32 @set_b(i32 1)
  %t33 = icmp ne i32 %t30, 0
  br i1 %t33, label %B63, label %B70
B67:                               	; preds = %B55
  br label %B64
B63:                               	; preds = %B65
  br label %B64
B70:                               	; preds = %B65
  br label %B64
B64:                               	; preds = %B63, %B67, %B70
  %t34 = load i32, i32* @a, align 4
  call void @putint(i32 %t34)
  call void @putch(i32 32)
  %t35 = load i32, i32* @b, align 4
  call void @putint(i32 %t35)
  call void @putch(i32 10)
  store i32 2, i32* @d, align 4
  %t38 = call i32 @set_d(i32 3)
  %t75 = icmp ne i32 %t38, 0
  %t39 = xor i1 %t75, true
  %t40 = icmp ne i1 %t39, 0
  br i1 %t40, label %B73, label %B77
B73:                               	; preds = %B64
  br label %B74
B77:                               	; preds = %B64
  br label %B74
B74:                               	; preds = %B73, %B77
  %t41 = load i32, i32* @d, align 4
  call void @putint(i32 %t41)
  call void @putch(i32 32)
  br label %B81
B81:                               	; preds = %B74
  %t43 = call i32 @set_d(i32 3)
  %t45 = icmp ne i32 %t43, 0
  br i1 %t45, label %B79, label %B83
B79:                               	; preds = %B81
  br label %B80
B83:                               	; preds = %B81
  br label %B80
B80:                               	; preds = %B79, %B83
  %t46 = load i32, i32* @d, align 4
  call void @putint(i32 %t46)
  call void @putch(i32 32)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
