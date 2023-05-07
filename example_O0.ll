define i32 @main() {
B11:
  %t12 = alloca i32, align 4
  %t13 = alloca i32, align 4
  %t14 = alloca i32, align 4
  store i32 1, i32* %t13, align 4
  %t5 = load i32, i32* %t13, align 4
  %t6 = add i32 1, %t5
  store i32 %t6, i32* %t14, align 4
  %t8 = load i32, i32* %t14, align 4
  %t9 = add i32 1, %t8
  store i32 %t9, i32* %t12, align 4
  %t10 = load i32, i32* %t14, align 4
  ret i32 %t10
}
