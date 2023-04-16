@a = global i32 0, align 4
define i32 @func(i32 %t1) {
B13:
  %t14 = alloca i32, align 4
  store i32 %t1, i32* %t14, align 4
  %t4 = load i32, i32* %t14, align 4
  %t5 = sub i32 %t4, 1
  store i32 %t5, i32* %t14, align 4
  %t6 = load i32, i32* %t14, align 4
  ret i32 %t6
}
define i32 @main() {
B15:
  store i32 10, i32* @a, align 4
  %t10 = load i32, i32* @a, align 4
  %t11 = call i32 @func(i32 %t10)
  ret i32 %t11
}
