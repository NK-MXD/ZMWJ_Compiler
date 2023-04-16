define i32 @main() {
B11:
  %t5 = sub i32 0, 5
  %t6 = sub i32 10, %t5
  %t8 = add i32 %t6, 30
  %t10 = add i32 %t8, %t5
  ret i32 %t10
}
