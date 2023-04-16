@a = global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 4
define i32 @main() {
B2:
  %t1 = getelementptr inbounds [5 x i32], [5 x i32]* @a, i32 0, i32 4
  %t3 = load i32, i32* %t1, align 4
  ret i32 %t3
}
