a = global [5 x [20000 x i32]] zeroinitializer, align 4
define i32 @main() {
B83:
  %t85 = alloca i32, align 4
  %t1 = getelementptr inbounds [5 x [20000 x i32]], [5 x [20000 x i32]]* a, i32 0, i32 4
  %t84 = getelementptr inbounds [20000 x i32], [20000 x i32]* %t1, i32 0, i32 19999
  store i32 1, i32* %t84, align 4
  %t2 = mul i32 2, 2
  %t4 = getelementptr inbounds [5 x [20000 x i32]], [5 x [20000 x i32]]* a, i32 0, i32 %t2
  %t3 = sub i32 20000, 1
  %t86 = getelementptr inbounds [20000 x i32], [20000 x i32]* %t4, i32 0, i32 %t3
  %t87 = load i32, i32* %t86, align 4
  %t8 = add i32 %t87, %t87
  %t12 = add i32 %t8, %t87
  %t16 = add i32 %t12, %t87
  %t20 = add i32 %t16, %t87
  %t24 = add i32 %t20, %t87
  %t28 = add i32 %t24, %t87
  %t32 = add i32 %t28, %t87
  %t36 = add i32 %t32, %t87
  %t40 = add i32 %t36, %t87
  %t44 = add i32 %t40, %t87
  %t48 = add i32 %t44, %t87
  %t52 = add i32 %t48, %t87
  %t56 = add i32 %t52, %t87
  %t60 = add i32 %t56, %t87
  %t64 = add i32 %t60, %t87
  %t68 = add i32 %t64, %t87
  %t72 = add i32 %t68, %t87
  %t76 = add i32 %t72, %t87
  %t80 = add i32 %t76, %t87
  store i32 %t80, i32* %t85, align 4
  %t82 = load i32, i32* %t85, align 4
  ret i32 %t82
}
