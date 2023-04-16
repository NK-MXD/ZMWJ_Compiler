define i32 @main() {
B32:
  %t33 = alloca [5 x [5 x i32]], align 4
  %t34 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t35 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 0
  store i32 1, i32* %t35, align 4
  %t37 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 1
  store i32 1, i32* %t37, align 4
  %t39 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 2
  store i32 1, i32* %t39, align 4
  %t41 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 3
  store i32 1, i32* %t41, align 4
  %t43 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 4
  store i32 1, i32* %t43, align 4
  %t44 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t45 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 0
  store i32 2, i32* %t45, align 4
  %t47 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 1
  store i32 2, i32* %t47, align 4
  %t49 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 2
  store i32 2, i32* %t49, align 4
  %t51 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 3
  store i32 2, i32* %t51, align 4
  %t53 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 4
  store i32 2, i32* %t53, align 4
  %t54 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t55 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 0
  store i32 3, i32* %t55, align 4
  %t57 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 1
  store i32 3, i32* %t57, align 4
  %t59 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 2
  store i32 3, i32* %t59, align 4
  %t61 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 3
  store i32 3, i32* %t61, align 4
  %t63 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 4
  store i32 3, i32* %t63, align 4
  %t64 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t65 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 0
  store i32 4, i32* %t65, align 4
  %t67 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 1
  store i32 4, i32* %t67, align 4
  %t69 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 2
  store i32 4, i32* %t69, align 4
  %t71 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 3
  store i32 4, i32* %t71, align 4
  %t73 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 4
  store i32 4, i32* %t73, align 4
  %t74 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t75 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 0
  store i32 5, i32* %t75, align 4
  %t77 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 1
  store i32 5, i32* %t77, align 4
  %t79 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 2
  store i32 5, i32* %t79, align 4
  %t81 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 3
  store i32 5, i32* %t81, align 4
  %t83 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 4
  store i32 5, i32* %t83, align 4
  br label %B88
B88:                               	; preds = %B32
  %t115 = add i32 0, 0
  %t110 = add i32 0, 0
  %t9 = icmp slt i32 0, 5
  br i1 %t9, label %B89, label %B93
B89:                               	; preds = %B88, %B122
  %t12 = sub i32 2, 1
  %t14 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t12
  %t94 = getelementptr inbounds [5 x i32], [5 x i32]* %t14, i32 0, i32 %t115
  %t95 = load i32, i32* %t94, align 4
  %t20 = sub i32 3, 1
  %t22 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t20
  %t96 = getelementptr inbounds [5 x i32], [5 x i32]* %t22, i32 0, i32 %t115
  %t97 = load i32, i32* %t96, align 4
  %t98 = getelementptr inbounds [5 x i32], [5 x i32]* %t14, i32 0, i32 %t115
  store i32 %t97, i32* %t98, align 4
  %t99 = getelementptr inbounds [5 x i32], [5 x i32]* %t22, i32 0, i32 %t115
  store i32 %t95, i32* %t99, align 4
  %t30 = add i32 %t115, 1
  %t101 = icmp slt i32 %t30, 5
  br i1 %t101, label %B122, label %B104
B93:                               	; preds = %B88
  %t116 = add i32 0, 0
  %t111 = add i32 0, 0
  br label %B90
B104:                               	; preds = %B89
  %t116 = add i32 %t30, 0
  %t111 = add i32 %t95, 0
  br label %B90
B122:                               	; preds = %B89
  %t115 = add i32 %t30, 0
  %t110 = add i32 %t95, 0
  br label %B89
B90:                               	; preds = %B93, %B104
  %t31 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t105 = getelementptr inbounds [5 x i32], [5 x i32]* %t31, i32 0, i32 0
  %t106 = load i32, i32* %t105, align 4
  ret i32 %t106
}
