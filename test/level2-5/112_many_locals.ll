define i32 @foo() {
B158:
  %t159 = alloca [16 x i32], align 4
  %t160 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 0
  store i32 0, i32* %t160, align 4
  %t161 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 1
  store i32 1, i32* %t161, align 4
  %t162 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 2
  store i32 2, i32* %t162, align 4
  %t163 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 3
  store i32 3, i32* %t163, align 4
  %t164 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 4
  store i32 0, i32* %t164, align 4
  %t165 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 5
  store i32 1, i32* %t165, align 4
  %t166 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 6
  store i32 2, i32* %t166, align 4
  %t167 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 7
  store i32 3, i32* %t167, align 4
  %t168 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 8
  store i32 0, i32* %t168, align 4
  %t169 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 9
  store i32 1, i32* %t169, align 4
  %t170 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 10
  store i32 2, i32* %t170, align 4
  %t171 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 11
  store i32 3, i32* %t171, align 4
  %t172 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 12
  store i32 0, i32* %t172, align 4
  %t173 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 13
  store i32 1, i32* %t173, align 4
  %t174 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 14
  store i32 2, i32* %t174, align 4
  %t175 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 15
  store i32 3, i32* %t175, align 4
  %t19 = add i32 3, 7
  %t21 = add i32 %t19, 5
  %t23 = add i32 %t21, 6
  %t25 = add i32 %t23, 1
  %t27 = add i32 %t25, 0
  %t29 = add i32 %t27, 3
  %t31 = add i32 %t29, 5
  %t35 = add i32 4, 2
  %t37 = add i32 %t35, 7
  %t39 = add i32 %t37, 9
  %t41 = add i32 %t39, 8
  %t43 = add i32 %t41, 1
  %t45 = add i32 %t43, 4
  %t47 = add i32 %t45, 6
  %t51 = add i32 %t31, %t47
  %t53 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 3
  %t194 = load i32, i32* %t53, align 4
  %t54 = add i32 %t51, %t194
  ret i32 %t54
}
define i32 @main() {
B195:
  %t73 = add i32 3, 7
  %t75 = add i32 %t73, 5
  %t77 = add i32 %t75, 6
  %t79 = add i32 %t77, 1
  %t81 = add i32 %t79, 0
  %t83 = add i32 %t81, 3
  %t85 = add i32 %t83, 5
  %t89 = add i32 4, 2
  %t91 = add i32 %t89, 7
  %t93 = add i32 %t91, 9
  %t95 = add i32 %t93, 8
  %t97 = add i32 %t95, 1
  %t99 = add i32 %t97, 4
  %t101 = add i32 %t99, 6
  %t105 = call i32 @foo()
  %t106 = add i32 %t85, %t105
  %t117 = call i32 @foo()
  %t118 = add i32 %t101, %t117
  %t137 = add i32 4, 7
  %t139 = add i32 %t137, 2
  %t141 = add i32 %t139, 5
  %t143 = add i32 %t141, 8
  %t145 = add i32 %t143, 0
  %t147 = add i32 %t145, 6
  %t149 = add i32 %t147, 3
  %t153 = add i32 %t106, %t118
  %t155 = add i32 %t153, %t149
  call void @putint(i32 %t155)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
