define i32 @main() {
B14:
  %t15 = alloca i32, align 4
  %t16 = alloca i32, align 4
  %t17 = alloca i32, align 4
  store i32 10, i32* %t15, align 4
  store i32 5, i32* %t16, align 4
  %t2 = load i32, i32* %t15, align 4
  %t3 = load i32, i32* %t16, align 4
  %t4 = mul i32 %t2, %t3
  %t5 = add i32 %t4, 2
  %t6 = load i32, i32* %t15, align 4
  %t7 = sdiv i32 %t6, 2
  %t8 = sub i32 %t5, %t7
  %t9 = load i32, i32* %t16, align 4
  %t10 = srem i32 %t9, 3
  %t11 = add i32 %t8, %t10
  store i32 %t11, i32* %t17, align 4
  %t13 = load i32, i32* %t17, align 4
  ret i32 %t13
}
