define i32 @foo() {
B158:
  %t159 = alloca [16 x i32], align 4
  %t176 = alloca i32, align 4
  %t177 = alloca i32, align 4
  %t178 = alloca i32, align 4
  %t179 = alloca i32, align 4
  %t180 = alloca i32, align 4
  %t181 = alloca i32, align 4
  %t182 = alloca i32, align 4
  %t183 = alloca i32, align 4
  %t184 = alloca i32, align 4
  %t185 = alloca i32, align 4
  %t186 = alloca i32, align 4
  %t187 = alloca i32, align 4
  %t188 = alloca i32, align 4
  %t189 = alloca i32, align 4
  %t190 = alloca i32, align 4
  %t191 = alloca i32, align 4
  %t192 = alloca i32, align 4
  %t193 = alloca i32, align 4
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
  store i32 3, i32* %t176, align 4
  store i32 7, i32* %t177, align 4
  store i32 5, i32* %t178, align 4
  store i32 6, i32* %t179, align 4
  store i32 1, i32* %t180, align 4
  store i32 0, i32* %t181, align 4
  store i32 3, i32* %t182, align 4
  store i32 5, i32* %t183, align 4
  store i32 4, i32* %t184, align 4
  store i32 2, i32* %t185, align 4
  store i32 7, i32* %t186, align 4
  store i32 9, i32* %t187, align 4
  store i32 8, i32* %t188, align 4
  store i32 1, i32* %t189, align 4
  store i32 4, i32* %t190, align 4
  store i32 6, i32* %t191, align 4
  %t17 = load i32, i32* %t176, align 4
  %t18 = load i32, i32* %t177, align 4
  %t19 = add i32 %t17, %t18
  %t20 = load i32, i32* %t178, align 4
  %t21 = add i32 %t19, %t20
  %t22 = load i32, i32* %t179, align 4
  %t23 = add i32 %t21, %t22
  %t24 = load i32, i32* %t180, align 4
  %t25 = add i32 %t23, %t24
  %t26 = load i32, i32* %t181, align 4
  %t27 = add i32 %t25, %t26
  %t28 = load i32, i32* %t182, align 4
  %t29 = add i32 %t27, %t28
  %t30 = load i32, i32* %t183, align 4
  %t31 = add i32 %t29, %t30
  store i32 %t31, i32* %t192, align 4
  %t33 = load i32, i32* %t184, align 4
  %t34 = load i32, i32* %t185, align 4
  %t35 = add i32 %t33, %t34
  %t36 = load i32, i32* %t186, align 4
  %t37 = add i32 %t35, %t36
  %t38 = load i32, i32* %t187, align 4
  %t39 = add i32 %t37, %t38
  %t40 = load i32, i32* %t188, align 4
  %t41 = add i32 %t39, %t40
  %t42 = load i32, i32* %t189, align 4
  %t43 = add i32 %t41, %t42
  %t44 = load i32, i32* %t190, align 4
  %t45 = add i32 %t43, %t44
  %t46 = load i32, i32* %t191, align 4
  %t47 = add i32 %t45, %t46
  store i32 %t47, i32* %t193, align 4
  %t49 = load i32, i32* %t192, align 4
  %t50 = load i32, i32* %t193, align 4
  %t51 = add i32 %t49, %t50
  %t52 = load i32, i32* %t176, align 4
  %t53 = getelementptr inbounds [16 x i32], [16 x i32]* %t159, i32 0, i32 %t52
  %t194 = load i32, i32* %t53, align 4
  %t54 = add i32 %t51, %t194
  ret i32 %t54
}
define i32 @main() {
B195:
  %t196 = alloca i32, align 4
  %t197 = alloca i32, align 4
  %t198 = alloca i32, align 4
  %t199 = alloca i32, align 4
  %t200 = alloca i32, align 4
  %t201 = alloca i32, align 4
  %t202 = alloca i32, align 4
  %t203 = alloca i32, align 4
  %t204 = alloca i32, align 4
  %t205 = alloca i32, align 4
  %t206 = alloca i32, align 4
  %t207 = alloca i32, align 4
  %t208 = alloca i32, align 4
  %t209 = alloca i32, align 4
  %t210 = alloca i32, align 4
  %t211 = alloca i32, align 4
  %t212 = alloca i32, align 4
  %t213 = alloca i32, align 4
  %t214 = alloca i32, align 4
  %t215 = alloca i32, align 4
  %t216 = alloca i32, align 4
  %t217 = alloca i32, align 4
  %t218 = alloca i32, align 4
  %t219 = alloca i32, align 4
  %t220 = alloca i32, align 4
  %t221 = alloca i32, align 4
  %t222 = alloca i32, align 4
  %t223 = alloca i32, align 4
  store i32 3, i32* %t196, align 4
  store i32 7, i32* %t197, align 4
  store i32 5, i32* %t198, align 4
  store i32 6, i32* %t199, align 4
  store i32 1, i32* %t200, align 4
  store i32 0, i32* %t201, align 4
  store i32 3, i32* %t202, align 4
  store i32 5, i32* %t203, align 4
  store i32 4, i32* %t204, align 4
  store i32 2, i32* %t205, align 4
  store i32 7, i32* %t206, align 4
  store i32 9, i32* %t207, align 4
  store i32 8, i32* %t208, align 4
  store i32 1, i32* %t209, align 4
  store i32 4, i32* %t210, align 4
  store i32 6, i32* %t211, align 4
  %t71 = load i32, i32* %t196, align 4
  %t72 = load i32, i32* %t197, align 4
  %t73 = add i32 %t71, %t72
  %t74 = load i32, i32* %t198, align 4
  %t75 = add i32 %t73, %t74
  %t76 = load i32, i32* %t199, align 4
  %t77 = add i32 %t75, %t76
  %t78 = load i32, i32* %t200, align 4
  %t79 = add i32 %t77, %t78
  %t80 = load i32, i32* %t201, align 4
  %t81 = add i32 %t79, %t80
  %t82 = load i32, i32* %t202, align 4
  %t83 = add i32 %t81, %t82
  %t84 = load i32, i32* %t203, align 4
  %t85 = add i32 %t83, %t84
  store i32 %t85, i32* %t212, align 4
  %t87 = load i32, i32* %t204, align 4
  %t88 = load i32, i32* %t205, align 4
  %t89 = add i32 %t87, %t88
  %t90 = load i32, i32* %t206, align 4
  %t91 = add i32 %t89, %t90
  %t92 = load i32, i32* %t207, align 4
  %t93 = add i32 %t91, %t92
  %t94 = load i32, i32* %t208, align 4
  %t95 = add i32 %t93, %t94
  %t96 = load i32, i32* %t209, align 4
  %t97 = add i32 %t95, %t96
  %t98 = load i32, i32* %t210, align 4
  %t99 = add i32 %t97, %t98
  %t100 = load i32, i32* %t211, align 4
  %t101 = add i32 %t99, %t100
  store i32 %t101, i32* %t213, align 4
  %t104 = load i32, i32* %t212, align 4
  %t105 = call i32 @foo()
  %t106 = add i32 %t104, %t105
  store i32 %t106, i32* %t212, align 4
  store i32 4, i32* %t214, align 4
  store i32 7, i32* %t215, align 4
  store i32 2, i32* %t216, align 4
  store i32 5, i32* %t217, align 4
  store i32 8, i32* %t218, align 4
  store i32 0, i32* %t219, align 4
  store i32 6, i32* %t220, align 4
  store i32 3, i32* %t221, align 4
  %t116 = load i32, i32* %t213, align 4
  %t117 = call i32 @foo()
  %t118 = add i32 %t116, %t117
  store i32 %t118, i32* %t213, align 4
  %t120 = load i32, i32* %t204, align 4
  store i32 %t120, i32* %t196, align 4
  %t122 = load i32, i32* %t205, align 4
  store i32 %t122, i32* %t197, align 4
  %t124 = load i32, i32* %t206, align 4
  store i32 %t124, i32* %t198, align 4
  %t126 = load i32, i32* %t207, align 4
  store i32 %t126, i32* %t199, align 4
  %t128 = load i32, i32* %t208, align 4
  store i32 %t128, i32* %t200, align 4
  %t130 = load i32, i32* %t209, align 4
  store i32 %t130, i32* %t201, align 4
  %t132 = load i32, i32* %t210, align 4
  store i32 %t132, i32* %t202, align 4
  %t134 = load i32, i32* %t211, align 4
  store i32 %t134, i32* %t203, align 4
  %t135 = load i32, i32* %t214, align 4
  %t136 = load i32, i32* %t215, align 4
  %t137 = add i32 %t135, %t136
  %t138 = load i32, i32* %t216, align 4
  %t139 = add i32 %t137, %t138
  %t140 = load i32, i32* %t217, align 4
  %t141 = add i32 %t139, %t140
  %t142 = load i32, i32* %t218, align 4
  %t143 = add i32 %t141, %t142
  %t144 = load i32, i32* %t219, align 4
  %t145 = add i32 %t143, %t144
  %t146 = load i32, i32* %t220, align 4
  %t147 = add i32 %t145, %t146
  %t148 = load i32, i32* %t221, align 4
  %t149 = add i32 %t147, %t148
  store i32 %t149, i32* %t222, align 4
  %t151 = load i32, i32* %t212, align 4
  %t152 = load i32, i32* %t213, align 4
  %t153 = add i32 %t151, %t152
  %t154 = load i32, i32* %t222, align 4
  %t155 = add i32 %t153, %t154
  store i32 %t155, i32* %t223, align 4
  %t157 = load i32, i32* %t223, align 4
  call void @putint(i32 %t157)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
