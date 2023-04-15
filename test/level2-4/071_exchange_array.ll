define i32 @main() {
B32:
  %t33 = alloca [5 x [5 x i32]], align 4
  %t84 = alloca i32, align 4
  %t85 = alloca i32, align 4
  %t86 = alloca i32, align 4
  %t87 = alloca i32, align 4
  %t34 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t35 = getelementptr inbounds [5 x i32], [5 x i32]* %t34, i32 0, i32 0
  store i32 1, i32* %t35, align 4
  %t36 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t37 = getelementptr inbounds [5 x i32], [5 x i32]* %t36, i32 0, i32 1
  store i32 1, i32* %t37, align 4
  %t38 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t39 = getelementptr inbounds [5 x i32], [5 x i32]* %t38, i32 0, i32 2
  store i32 1, i32* %t39, align 4
  %t40 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t41 = getelementptr inbounds [5 x i32], [5 x i32]* %t40, i32 0, i32 3
  store i32 1, i32* %t41, align 4
  %t42 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 0
  %t43 = getelementptr inbounds [5 x i32], [5 x i32]* %t42, i32 0, i32 4
  store i32 1, i32* %t43, align 4
  %t44 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t45 = getelementptr inbounds [5 x i32], [5 x i32]* %t44, i32 0, i32 0
  store i32 2, i32* %t45, align 4
  %t46 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t47 = getelementptr inbounds [5 x i32], [5 x i32]* %t46, i32 0, i32 1
  store i32 2, i32* %t47, align 4
  %t48 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t49 = getelementptr inbounds [5 x i32], [5 x i32]* %t48, i32 0, i32 2
  store i32 2, i32* %t49, align 4
  %t50 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t51 = getelementptr inbounds [5 x i32], [5 x i32]* %t50, i32 0, i32 3
  store i32 2, i32* %t51, align 4
  %t52 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 1
  %t53 = getelementptr inbounds [5 x i32], [5 x i32]* %t52, i32 0, i32 4
  store i32 2, i32* %t53, align 4
  %t54 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t55 = getelementptr inbounds [5 x i32], [5 x i32]* %t54, i32 0, i32 0
  store i32 3, i32* %t55, align 4
  %t56 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t57 = getelementptr inbounds [5 x i32], [5 x i32]* %t56, i32 0, i32 1
  store i32 3, i32* %t57, align 4
  %t58 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t59 = getelementptr inbounds [5 x i32], [5 x i32]* %t58, i32 0, i32 2
  store i32 3, i32* %t59, align 4
  %t60 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t61 = getelementptr inbounds [5 x i32], [5 x i32]* %t60, i32 0, i32 3
  store i32 3, i32* %t61, align 4
  %t62 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t63 = getelementptr inbounds [5 x i32], [5 x i32]* %t62, i32 0, i32 4
  store i32 3, i32* %t63, align 4
  %t64 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t65 = getelementptr inbounds [5 x i32], [5 x i32]* %t64, i32 0, i32 0
  store i32 4, i32* %t65, align 4
  %t66 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t67 = getelementptr inbounds [5 x i32], [5 x i32]* %t66, i32 0, i32 1
  store i32 4, i32* %t67, align 4
  %t68 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t69 = getelementptr inbounds [5 x i32], [5 x i32]* %t68, i32 0, i32 2
  store i32 4, i32* %t69, align 4
  %t70 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t71 = getelementptr inbounds [5 x i32], [5 x i32]* %t70, i32 0, i32 3
  store i32 4, i32* %t71, align 4
  %t72 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 3
  %t73 = getelementptr inbounds [5 x i32], [5 x i32]* %t72, i32 0, i32 4
  store i32 4, i32* %t73, align 4
  %t74 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t75 = getelementptr inbounds [5 x i32], [5 x i32]* %t74, i32 0, i32 0
  store i32 5, i32* %t75, align 4
  %t76 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t77 = getelementptr inbounds [5 x i32], [5 x i32]* %t76, i32 0, i32 1
  store i32 5, i32* %t77, align 4
  %t78 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t79 = getelementptr inbounds [5 x i32], [5 x i32]* %t78, i32 0, i32 2
  store i32 5, i32* %t79, align 4
  %t80 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t81 = getelementptr inbounds [5 x i32], [5 x i32]* %t80, i32 0, i32 3
  store i32 5, i32* %t81, align 4
  %t82 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 4
  %t83 = getelementptr inbounds [5 x i32], [5 x i32]* %t82, i32 0, i32 4
  store i32 5, i32* %t83, align 4
  store i32 2, i32* %t84, align 4
  store i32 3, i32* %t85, align 4
  store i32 0, i32* %t87, align 4
  br label %B88
B88:                               	; preds = %B32
  %t8 = load i32, i32* %t87, align 4
  %t9 = icmp slt i32 %t8, 5
  br i1 %t9, label %B89, label %B93
B89:                               	; preds = %B88, %B89
  %t11 = load i32, i32* %t84, align 4
  %t12 = sub i32 %t11, 1
  %t14 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t12
  %t13 = load i32, i32* %t87, align 4
  %t94 = getelementptr inbounds [5 x i32], [5 x i32]* %t14, i32 0, i32 %t13
  %t95 = load i32, i32* %t94, align 4
  store i32 %t95, i32* %t86, align 4
  %t19 = load i32, i32* %t85, align 4
  %t20 = sub i32 %t19, 1
  %t22 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t20
  %t21 = load i32, i32* %t87, align 4
  %t96 = getelementptr inbounds [5 x i32], [5 x i32]* %t22, i32 0, i32 %t21
  %t97 = load i32, i32* %t96, align 4
  %t15 = load i32, i32* %t84, align 4
  %t16 = sub i32 %t15, 1
  %t18 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t16
  %t17 = load i32, i32* %t87, align 4
  %t98 = getelementptr inbounds [5 x i32], [5 x i32]* %t18, i32 0, i32 %t17
  store i32 %t97, i32* %t98, align 4
  %t27 = load i32, i32* %t86, align 4
  %t23 = load i32, i32* %t85, align 4
  %t24 = sub i32 %t23, 1
  %t26 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 %t24
  %t25 = load i32, i32* %t87, align 4
  %t99 = getelementptr inbounds [5 x i32], [5 x i32]* %t26, i32 0, i32 %t25
  store i32 %t27, i32* %t99, align 4
  %t29 = load i32, i32* %t87, align 4
  %t30 = add i32 %t29, 1
  store i32 %t30, i32* %t87, align 4
  %t100 = load i32, i32* %t87, align 4
  %t101 = icmp slt i32 %t100, 5
  br i1 %t101, label %B89, label %B104
B93:                               	; preds = %B88
  br label %B90
B104:                               	; preds = %B89
  br label %B90
B90:                               	; preds = %B93, %B104
  %t31 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %t33, i32 0, i32 2
  %t105 = getelementptr inbounds [5 x i32], [5 x i32]* %t31, i32 0, i32 0
  %t106 = load i32, i32* %t105, align 4
  ret i32 %t106
}
