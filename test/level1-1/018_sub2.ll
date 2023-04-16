@a = global i32 10, align 4
define i32 @main() {
B6:
  %t4 = load i32, i32* @a, align 4
  %t5 = sub i32 2, %t4
  ret i32 %t5
}
