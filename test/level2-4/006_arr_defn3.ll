define i32 @main() {
B14:
  %t15 = alloca [4 x [2 x i32]], align 4
  %t17 = alloca [4 x [2 x i32]], align 4
  %t34 = alloca [4 x [2 x i32]], align 4
  %t51 = alloca [4 x [2 x i32]], align 4
  %t68 = alloca [4 x [2 x i32]], align 4
  %t16 = bitcast [4 x [2 x i32]]* %t15 to i8*
  call void @llvm.memset.p0.i32(i8* %t16, i8 0, i32 32, i1 0)
  %t18 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 0
  %t19 = getelementptr inbounds [2 x i32], [2 x i32]* %t18, i32 0, i32 0
  store i32 1, i32* %t19, align 4
  %t20 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 0
  %t21 = getelementptr inbounds [2 x i32], [2 x i32]* %t20, i32 0, i32 1
  store i32 2, i32* %t21, align 4
  %t22 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 1
  %t23 = getelementptr inbounds [2 x i32], [2 x i32]* %t22, i32 0, i32 0
  store i32 3, i32* %t23, align 4
  %t24 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 1
  %t25 = getelementptr inbounds [2 x i32], [2 x i32]* %t24, i32 0, i32 1
  store i32 4, i32* %t25, align 4
  %t26 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 2
  %t27 = getelementptr inbounds [2 x i32], [2 x i32]* %t26, i32 0, i32 0
  store i32 5, i32* %t27, align 4
  %t28 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 2
  %t29 = getelementptr inbounds [2 x i32], [2 x i32]* %t28, i32 0, i32 1
  store i32 6, i32* %t29, align 4
  %t30 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 3
  %t31 = getelementptr inbounds [2 x i32], [2 x i32]* %t30, i32 0, i32 0
  store i32 7, i32* %t31, align 4
  %t32 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t17, i32 0, i32 3
  %t33 = getelementptr inbounds [2 x i32], [2 x i32]* %t32, i32 0, i32 1
  store i32 8, i32* %t33, align 4
  %t35 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 0
  %t36 = getelementptr inbounds [2 x i32], [2 x i32]* %t35, i32 0, i32 0
  store i32 1, i32* %t36, align 4
  %t37 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 0
  %t38 = getelementptr inbounds [2 x i32], [2 x i32]* %t37, i32 0, i32 1
  store i32 2, i32* %t38, align 4
  %t39 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 1
  %t40 = getelementptr inbounds [2 x i32], [2 x i32]* %t39, i32 0, i32 0
  store i32 3, i32* %t40, align 4
  %t41 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 1
  %t42 = getelementptr inbounds [2 x i32], [2 x i32]* %t41, i32 0, i32 1
  store i32 4, i32* %t42, align 4
  %t43 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 2
  %t44 = getelementptr inbounds [2 x i32], [2 x i32]* %t43, i32 0, i32 0
  store i32 5, i32* %t44, align 4
  %t45 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 2
  %t46 = getelementptr inbounds [2 x i32], [2 x i32]* %t45, i32 0, i32 1
  store i32 6, i32* %t46, align 4
  %t47 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 3
  %t48 = getelementptr inbounds [2 x i32], [2 x i32]* %t47, i32 0, i32 0
  store i32 7, i32* %t48, align 4
  %t49 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 3
  %t50 = getelementptr inbounds [2 x i32], [2 x i32]* %t49, i32 0, i32 1
  store i32 8, i32* %t50, align 4
  %t52 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 0
  %t53 = getelementptr inbounds [2 x i32], [2 x i32]* %t52, i32 0, i32 0
  store i32 1, i32* %t53, align 4
  %t54 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 0
  %t55 = getelementptr inbounds [2 x i32], [2 x i32]* %t54, i32 0, i32 1
  store i32 2, i32* %t55, align 4
  %t56 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 1
  %t57 = getelementptr inbounds [2 x i32], [2 x i32]* %t56, i32 0, i32 0
  store i32 3, i32* %t57, align 4
  %t58 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 1
  %t59 = getelementptr inbounds [2 x i32], [2 x i32]* %t58, i32 0, i32 1
  store i32 0, i32* %t59, align 4
  %t60 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 2
  %t61 = getelementptr inbounds [2 x i32], [2 x i32]* %t60, i32 0, i32 0
  store i32 5, i32* %t61, align 4
  %t62 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 2
  %t63 = getelementptr inbounds [2 x i32], [2 x i32]* %t62, i32 0, i32 1
  store i32 0, i32* %t63, align 4
  %t64 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 3
  %t65 = getelementptr inbounds [2 x i32], [2 x i32]* %t64, i32 0, i32 0
  store i32 7, i32* %t65, align 4
  %t66 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 3
  %t67 = getelementptr inbounds [2 x i32], [2 x i32]* %t66, i32 0, i32 1
  store i32 8, i32* %t67, align 4
  %t4 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t51, i32 0, i32 2
  %t69 = getelementptr inbounds [2 x i32], [2 x i32]* %t4, i32 0, i32 1
  %t70 = load i32, i32* %t69, align 4
  %t71 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 0
  %t72 = getelementptr inbounds [2 x i32], [2 x i32]* %t71, i32 0, i32 0
  store i32 %t70, i32* %t72, align 4
  %t5 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t34, i32 0, i32 2
  %t73 = getelementptr inbounds [2 x i32], [2 x i32]* %t5, i32 0, i32 1
  %t74 = load i32, i32* %t73, align 4
  %t75 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 0
  %t76 = getelementptr inbounds [2 x i32], [2 x i32]* %t75, i32 0, i32 1
  store i32 %t74, i32* %t76, align 4
  %t77 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 1
  %t78 = getelementptr inbounds [2 x i32], [2 x i32]* %t77, i32 0, i32 0
  store i32 3, i32* %t78, align 4
  %t79 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 1
  %t80 = getelementptr inbounds [2 x i32], [2 x i32]* %t79, i32 0, i32 1
  store i32 4, i32* %t80, align 4
  %t81 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 2
  %t82 = getelementptr inbounds [2 x i32], [2 x i32]* %t81, i32 0, i32 0
  store i32 5, i32* %t82, align 4
  %t83 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 2
  %t84 = getelementptr inbounds [2 x i32], [2 x i32]* %t83, i32 0, i32 1
  store i32 6, i32* %t84, align 4
  %t85 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 3
  %t86 = getelementptr inbounds [2 x i32], [2 x i32]* %t85, i32 0, i32 0
  store i32 7, i32* %t86, align 4
  %t87 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 3
  %t88 = getelementptr inbounds [2 x i32], [2 x i32]* %t87, i32 0, i32 1
  store i32 8, i32* %t88, align 4
  %t7 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 3
  %t89 = getelementptr inbounds [2 x i32], [2 x i32]* %t7, i32 0, i32 1
  %t90 = load i32, i32* %t89, align 4
  %t8 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 0
  %t91 = getelementptr inbounds [2 x i32], [2 x i32]* %t8, i32 0, i32 0
  %t92 = load i32, i32* %t91, align 4
  %t9 = add i32 %t90, %t92
  %t10 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t68, i32 0, i32 0
  %t93 = getelementptr inbounds [2 x i32], [2 x i32]* %t10, i32 0, i32 1
  %t94 = load i32, i32* %t93, align 4
  %t11 = add i32 %t9, %t94
  %t12 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t15, i32 0, i32 2
  %t95 = getelementptr inbounds [2 x i32], [2 x i32]* %t12, i32 0, i32 0
  %t96 = load i32, i32* %t95, align 4
  %t13 = add i32 %t11, %t96
  ret i32 %t13
}
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
