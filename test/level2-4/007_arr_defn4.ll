define i32 @main() {
B18:
  %t19 = alloca [4 x [2 x i32]], align 4
  %t37 = alloca [4 x [2 x i32]], align 4
  %t39 = alloca [4 x [2 x i32]], align 4
  %t56 = alloca [4 x [2 x i32]], align 4
  %t75 = alloca [4 x [2 x [1 x i32]]], align 4
  %t20 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 0
  %t21 = getelementptr inbounds [2 x i32], [2 x i32]* %t20, i32 0, i32 0
  store i32 1, i32* %t21, align 4
  %t23 = getelementptr inbounds [2 x i32], [2 x i32]* %t20, i32 0, i32 1
  store i32 2, i32* %t23, align 4
  %t24 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 1
  %t25 = getelementptr inbounds [2 x i32], [2 x i32]* %t24, i32 0, i32 0
  store i32 3, i32* %t25, align 4
  %t27 = getelementptr inbounds [2 x i32], [2 x i32]* %t24, i32 0, i32 1
  store i32 4, i32* %t27, align 4
  %t28 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 2
  %t29 = getelementptr inbounds [2 x i32], [2 x i32]* %t28, i32 0, i32 0
  store i32 0, i32* %t29, align 4
  %t31 = getelementptr inbounds [2 x i32], [2 x i32]* %t28, i32 0, i32 1
  store i32 0, i32* %t31, align 4
  %t32 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 3
  %t33 = getelementptr inbounds [2 x i32], [2 x i32]* %t32, i32 0, i32 0
  store i32 7, i32* %t33, align 4
  %t35 = getelementptr inbounds [2 x i32], [2 x i32]* %t32, i32 0, i32 1
  store i32 0, i32* %t35, align 4
  %t38 = bitcast [4 x [2 x i32]]* %t37 to i8*
  call void @llvm.memset.p0.i32(i8* %t38, i8 0, i32 32, i1 0)
  %t40 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t39, i32 0, i32 0
  %t41 = getelementptr inbounds [2 x i32], [2 x i32]* %t40, i32 0, i32 0
  store i32 1, i32* %t41, align 4
  %t43 = getelementptr inbounds [2 x i32], [2 x i32]* %t40, i32 0, i32 1
  store i32 2, i32* %t43, align 4
  %t44 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t39, i32 0, i32 1
  %t45 = getelementptr inbounds [2 x i32], [2 x i32]* %t44, i32 0, i32 0
  store i32 3, i32* %t45, align 4
  %t47 = getelementptr inbounds [2 x i32], [2 x i32]* %t44, i32 0, i32 1
  store i32 4, i32* %t47, align 4
  %t48 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t39, i32 0, i32 2
  %t49 = getelementptr inbounds [2 x i32], [2 x i32]* %t48, i32 0, i32 0
  store i32 5, i32* %t49, align 4
  %t51 = getelementptr inbounds [2 x i32], [2 x i32]* %t48, i32 0, i32 1
  store i32 6, i32* %t51, align 4
  %t52 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t39, i32 0, i32 3
  %t53 = getelementptr inbounds [2 x i32], [2 x i32]* %t52, i32 0, i32 0
  store i32 7, i32* %t53, align 4
  %t55 = getelementptr inbounds [2 x i32], [2 x i32]* %t52, i32 0, i32 1
  store i32 8, i32* %t55, align 4
  %t57 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t56, i32 0, i32 0
  %t58 = getelementptr inbounds [2 x i32], [2 x i32]* %t57, i32 0, i32 0
  store i32 1, i32* %t58, align 4
  %t60 = getelementptr inbounds [2 x i32], [2 x i32]* %t57, i32 0, i32 1
  store i32 2, i32* %t60, align 4
  %t61 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t56, i32 0, i32 1
  %t62 = getelementptr inbounds [2 x i32], [2 x i32]* %t61, i32 0, i32 0
  store i32 3, i32* %t62, align 4
  %t64 = getelementptr inbounds [2 x i32], [2 x i32]* %t61, i32 0, i32 1
  store i32 0, i32* %t64, align 4
  %t65 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t56, i32 0, i32 2
  %t66 = getelementptr inbounds [2 x i32], [2 x i32]* %t65, i32 0, i32 0
  store i32 5, i32* %t66, align 4
  %t68 = getelementptr inbounds [2 x i32], [2 x i32]* %t65, i32 0, i32 1
  store i32 0, i32* %t68, align 4
  %t70 = load i32, i32* %t33, align 4
  %t71 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t56, i32 0, i32 3
  %t72 = getelementptr inbounds [2 x i32], [2 x i32]* %t71, i32 0, i32 0
  store i32 %t70, i32* %t72, align 4
  %t74 = getelementptr inbounds [2 x i32], [2 x i32]* %t71, i32 0, i32 1
  store i32 8, i32* %t74, align 4
  %t77 = load i32, i32* %t68, align 4
  %t78 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t75, i32 0, i32 0
  %t79 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t78, i32 0, i32 0
  %t80 = getelementptr inbounds [1 x i32], [1 x i32]* %t79, i32 0, i32 0
  store i32 %t77, i32* %t80, align 4
  %t82 = load i32, i32* %t51, align 4
  %t84 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t78, i32 0, i32 1
  %t85 = getelementptr inbounds [1 x i32], [1 x i32]* %t84, i32 0, i32 0
  store i32 %t82, i32* %t85, align 4
  %t86 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t75, i32 0, i32 1
  %t87 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t86, i32 0, i32 0
  %t88 = getelementptr inbounds [1 x i32], [1 x i32]* %t87, i32 0, i32 0
  store i32 3, i32* %t88, align 4
  %t90 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t86, i32 0, i32 1
  %t91 = getelementptr inbounds [1 x i32], [1 x i32]* %t90, i32 0, i32 0
  store i32 4, i32* %t91, align 4
  %t92 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t75, i32 0, i32 2
  %t93 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t92, i32 0, i32 0
  %t94 = getelementptr inbounds [1 x i32], [1 x i32]* %t93, i32 0, i32 0
  store i32 5, i32* %t94, align 4
  %t96 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t92, i32 0, i32 1
  %t97 = getelementptr inbounds [1 x i32], [1 x i32]* %t96, i32 0, i32 0
  store i32 6, i32* %t97, align 4
  %t98 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t75, i32 0, i32 3
  %t99 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t98, i32 0, i32 0
  %t100 = getelementptr inbounds [1 x i32], [1 x i32]* %t99, i32 0, i32 0
  store i32 7, i32* %t100, align 4
  %t102 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t98, i32 0, i32 1
  %t103 = getelementptr inbounds [1 x i32], [1 x i32]* %t102, i32 0, i32 0
  store i32 8, i32* %t103, align 4
  %t106 = load i32, i32* %t103, align 4
  %t109 = load i32, i32* %t80, align 4
  %t13 = add i32 %t106, %t109
  %t112 = load i32, i32* %t85, align 4
  %t15 = add i32 %t13, %t112
  %t114 = load i32, i32* %t72, align 4
  %t17 = add i32 %t15, %t114
  ret i32 %t17
}
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
