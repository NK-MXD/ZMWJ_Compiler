@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4
define i32 @set_a(i32 %t3) {
B57:
  %t58 = alloca i32, align 4
  store i32 %t3, i32* %t58, align 4
  %t6 = load i32, i32* %t58, align 4
  store i32 %t6, i32* @a, align 4
  %t7 = load i32, i32* @a, align 4
  ret i32 %t7
}
define i32 @set_b(i32 %t8) {
B59:
  %t60 = alloca i32, align 4
  store i32 %t8, i32* %t60, align 4
  %t11 = load i32, i32* %t60, align 4
  store i32 %t11, i32* @b, align 4
  %t12 = load i32, i32* @b, align 4
  ret i32 %t12
}
define i32 @set_d(i32 %t13) {
B61:
  %t62 = alloca i32, align 4
  store i32 %t13, i32* %t62, align 4
  %t16 = load i32, i32* %t62, align 4
  store i32 %t16, i32* @d, align 4
  %t17 = load i32, i32* @d, align 4
  ret i32 %t17
}
define i32 @main() {
B63:
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t20 = call i32 @set_a(i32 0)
  %t23 = icmp ne i32 %t20, 0
  br i1 %t23, label %B66, label %B68
B66:                               	; preds = %B63
  %t21 = call i32 @set_b(i32 1)
  %t24 = icmp ne i32 %t21, 0
  br i1 %t24, label %B64, label %B71
B68:                               	; preds = %B63
  br label %B65
B64:                               	; preds = %B66
  br label %B65
B71:                               	; preds = %B66
  br label %B65
B65:                               	; preds = %B64, %B68, %B71
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
  br i1 %t32, label %B75, label %B77
B75:                               	; preds = %B65
  %t30 = call i32 @set_b(i32 1)
  %t33 = icmp ne i32 %t30, 0
  br i1 %t33, label %B73, label %B80
B77:                               	; preds = %B65
  br label %B74
B73:                               	; preds = %B75
  br label %B74
B80:                               	; preds = %B75
  br label %B74
B74:                               	; preds = %B73, %B77, %B80
  %t34 = load i32, i32* @a, align 4
  call void @putint(i32 %t34)
  call void @putch(i32 32)
  %t35 = load i32, i32* @b, align 4
  call void @putint(i32 %t35)
  call void @putch(i32 10)
  store i32 2, i32* @d, align 4
  br label %B85
B85:                               	; preds = %B74
  %t39 = call i32 @set_d(i32 3)
  %t41 = icmp ne i32 %t39, 0
  br i1 %t41, label %B83, label %B87
B83:                               	; preds = %B85
  br label %B84
B87:                               	; preds = %B85
  br label %B84
B84:                               	; preds = %B83, %B87
  %t42 = load i32, i32* @d, align 4
  call void @putint(i32 %t42)
  call void @putch(i32 32)
  %t43 = call i32 @set_d(i32 3)
  %t46 = icmp ne i32 %t43, 0
  br i1 %t46, label %B91, label %B93
B91:                               	; preds = %B84
  %t47 = icmp ne i32 1, 0
  br i1 %t47, label %B89, label %B96
B93:                               	; preds = %B84
  br label %B90
B89:                               	; preds = %B91
  store i32 2, i32* @d, align 4
  br label %B90
B96:                               	; preds = %B91
  br label %B90
B90:                               	; preds = %B89, %B93, %B96
  %t49 = call i32 @set_d(i32 3)
  %t101 = icmp ne i32 %t49, 0
  %t50 = xor i1 %t101, true
  %t53 = icmp ne i1 %t50, 0
  br i1 %t53, label %B98, label %B103
B98:                               	; preds = %B90, %B100
  store i32 4, i32* @d, align 4
  br label %B99
B103:                               	; preds = %B90
  br label %B100
B99:                               	; preds = %B98, %B106
  %t56 = load i32, i32* @d, align 4
  call void @putint(i32 %t56)
  call void @putch(i32 10)
  ret i32 0
B100:                               	; preds = %B103
  %t54 = icmp ne i32 1, 0
  br i1 %t54, label %B98, label %B106
B106:                               	; preds = %B100
  br label %B99
}
declare void @putint(i32)
declare void @putch(i32)
