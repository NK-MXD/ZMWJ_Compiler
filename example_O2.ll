@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4
define i32 @set_a(i32 %t3) {
B25:
  %t26 = alloca i32, align 4
  store i32 %t3, i32* %t26, align 4
  %t6 = load i32, i32* %t26, align 4
  store i32 %t6, i32* @a, align 4
  %t7 = load i32, i32* @a, align 4
  ret i32 %t7
}
define i32 @set_b(i32 %t8) {
B27:
  %t28 = alloca i32, align 4
  store i32 %t8, i32* %t28, align 4
  %t11 = load i32, i32* %t28, align 4
  store i32 %t11, i32* @b, align 4
  %t12 = load i32, i32* @b, align 4
  ret i32 %t12
}
define i32 @set_d(i32 %t13) {
B29:
  %t30 = alloca i32, align 4
  store i32 %t13, i32* %t30, align 4
  %t16 = load i32, i32* %t30, align 4
  store i32 %t16, i32* @d, align 4
  %t17 = load i32, i32* @d, align 4
  ret i32 %t17
}
define i32 @main() {
B31:
  store i32 2, i32* @d, align 4
  br label %B35
B35:                               	; preds = %B31
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
