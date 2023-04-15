@n = global i32 0, align 4
define i32 @main() {
B164:
  %t165 = alloca i32, align 4
  %t166 = alloca i32, align 4
  %t167 = alloca i32, align 4
  %t168 = alloca i32, align 4
  %t169 = alloca i32, align 4
  %t170 = alloca i32, align 4
  %t171 = alloca i32, align 4
  %t172 = alloca i32, align 4
  %t173 = alloca i32, align 4
  %t174 = alloca i32, align 4
  %t175 = alloca i32, align 4
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
  %t194 = alloca i32, align 4
  %t195 = alloca i32, align 4
  %t202 = alloca i32, align 4
  %t203 = alloca i32, align 4
  %t33 = call i32 @getint()
  store i32 %t33, i32* %t195, align 4
  br label %B196
B196:                               	; preds = %B164, %B197
  %t34 = load i32, i32* %t195, align 4
  %t35 = icmp eq i32 %t34, 5
  br i1 %t35, label %B197, label %B201
B197:                               	; preds = %B196
  %t37 = load i32, i32* %t195, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t195, align 4
  br label %B196
B201:                               	; preds = %B196
  br label %B198
B198:                               	; preds = %B201
  store i32 0, i32* %t165, align 4
  %t41 = load i32, i32* %t165, align 4
  %t42 = add i32 %t41, 1
  store i32 %t42, i32* %t166, align 4
  %t44 = load i32, i32* %t166, align 4
  %t45 = add i32 %t44, 1
  store i32 %t45, i32* %t167, align 4
  %t47 = load i32, i32* %t167, align 4
  %t48 = add i32 %t47, 1
  store i32 %t48, i32* %t168, align 4
  %t50 = load i32, i32* %t168, align 4
  %t51 = add i32 %t50, 1
  store i32 %t51, i32* %t169, align 4
  %t53 = load i32, i32* %t169, align 4
  %t54 = add i32 %t53, 1
  store i32 %t54, i32* %t170, align 4
  %t56 = load i32, i32* %t170, align 4
  %t57 = add i32 %t56, 1
  store i32 %t57, i32* %t171, align 4
  %t59 = load i32, i32* %t171, align 4
  %t60 = add i32 %t59, 1
  store i32 %t60, i32* %t172, align 4
  %t62 = load i32, i32* %t172, align 4
  %t63 = add i32 %t62, 1
  store i32 %t63, i32* %t173, align 4
  %t65 = load i32, i32* %t173, align 4
  %t66 = add i32 %t65, 1
  store i32 %t66, i32* %t174, align 4
  %t68 = load i32, i32* %t174, align 4
  %t69 = add i32 %t68, 1
  store i32 %t69, i32* %t175, align 4
  %t71 = load i32, i32* %t175, align 4
  %t72 = add i32 %t71, 1
  store i32 %t72, i32* %t176, align 4
  %t74 = load i32, i32* %t176, align 4
  %t75 = add i32 %t74, 1
  store i32 %t75, i32* %t177, align 4
  %t77 = load i32, i32* %t177, align 4
  %t78 = add i32 %t77, 1
  store i32 %t78, i32* %t178, align 4
  %t80 = load i32, i32* %t178, align 4
  %t81 = add i32 %t80, 1
  store i32 %t81, i32* %t179, align 4
  %t83 = load i32, i32* %t179, align 4
  %t84 = add i32 %t83, 1
  store i32 %t84, i32* %t180, align 4
  %t86 = load i32, i32* %t180, align 4
  %t87 = add i32 %t86, 1
  store i32 %t87, i32* %t181, align 4
  %t89 = load i32, i32* %t181, align 4
  %t90 = add i32 %t89, 1
  store i32 %t90, i32* %t182, align 4
  %t92 = load i32, i32* %t182, align 4
  %t93 = add i32 %t92, 1
  store i32 %t93, i32* %t183, align 4
  %t95 = load i32, i32* %t183, align 4
  %t96 = add i32 %t95, 1
  store i32 %t96, i32* %t184, align 4
  %t98 = load i32, i32* %t184, align 4
  %t99 = add i32 %t98, 1
  store i32 %t99, i32* %t185, align 4
  %t101 = load i32, i32* %t185, align 4
  %t102 = add i32 %t101, 1
  store i32 %t102, i32* %t186, align 4
  %t104 = load i32, i32* %t186, align 4
  %t105 = add i32 %t104, 1
  store i32 %t105, i32* %t187, align 4
  %t107 = load i32, i32* %t187, align 4
  %t108 = add i32 %t107, 1
  store i32 %t108, i32* %t188, align 4
  %t110 = load i32, i32* %t188, align 4
  %t111 = add i32 %t110, 1
  store i32 %t111, i32* %t189, align 4
  %t113 = load i32, i32* %t189, align 4
  %t114 = add i32 %t113, 1
  store i32 %t114, i32* %t190, align 4
  %t116 = load i32, i32* %t190, align 4
  %t117 = add i32 %t116, 1
  store i32 %t117, i32* %t191, align 4
  %t119 = load i32, i32* %t191, align 4
  %t120 = add i32 %t119, 1
  store i32 %t120, i32* %t192, align 4
  %t122 = load i32, i32* %t192, align 4
  %t123 = add i32 %t122, 1
  store i32 %t123, i32* %t193, align 4
  %t125 = load i32, i32* %t193, align 4
  %t126 = add i32 %t125, 1
  store i32 %t126, i32* %t194, align 4
  %t128 = load i32, i32* %t165, align 4
  call void @putint(i32 %t128)
  %t129 = load i32, i32* %t166, align 4
  call void @putint(i32 %t129)
  %t130 = load i32, i32* %t167, align 4
  call void @putint(i32 %t130)
  %t131 = load i32, i32* %t168, align 4
  call void @putint(i32 %t131)
  %t132 = load i32, i32* %t169, align 4
  call void @putint(i32 %t132)
  %t133 = load i32, i32* %t170, align 4
  call void @putint(i32 %t133)
  %t134 = load i32, i32* %t171, align 4
  call void @putint(i32 %t134)
  %t135 = load i32, i32* %t172, align 4
  call void @putint(i32 %t135)
  %t136 = load i32, i32* %t173, align 4
  call void @putint(i32 %t136)
  %t137 = load i32, i32* %t174, align 4
  call void @putint(i32 %t137)
  %t138 = load i32, i32* %t175, align 4
  call void @putint(i32 %t138)
  %t139 = load i32, i32* %t176, align 4
  call void @putint(i32 %t139)
  %t140 = load i32, i32* %t177, align 4
  call void @putint(i32 %t140)
  %t141 = load i32, i32* %t178, align 4
  call void @putint(i32 %t141)
  %t142 = load i32, i32* %t179, align 4
  call void @putint(i32 %t142)
  %t143 = load i32, i32* %t180, align 4
  call void @putint(i32 %t143)
  %t144 = load i32, i32* %t181, align 4
  call void @putint(i32 %t144)
  %t145 = load i32, i32* %t182, align 4
  call void @putint(i32 %t145)
  %t146 = load i32, i32* %t183, align 4
  call void @putint(i32 %t146)
  %t147 = load i32, i32* %t184, align 4
  call void @putint(i32 %t147)
  %t148 = load i32, i32* %t185, align 4
  call void @putint(i32 %t148)
  %t149 = load i32, i32* %t186, align 4
  call void @putint(i32 %t149)
  %t150 = load i32, i32* %t187, align 4
  call void @putint(i32 %t150)
  %t151 = load i32, i32* %t188, align 4
  call void @putint(i32 %t151)
  %t152 = load i32, i32* %t189, align 4
  call void @putint(i32 %t152)
  %t153 = load i32, i32* %t190, align 4
  call void @putint(i32 %t153)
  %t154 = load i32, i32* %t191, align 4
  call void @putint(i32 %t154)
  %t155 = load i32, i32* %t192, align 4
  call void @putint(i32 %t155)
  %t156 = load i32, i32* %t193, align 4
  call void @putint(i32 %t156)
  %t157 = load i32, i32* %t194, align 4
  call void @putint(i32 %t157)
  store i32 10, i32* %t203, align 4
  %t160 = load i32, i32* %t203, align 4
  call void @putch(i32 %t160)
  %t161 = load i32, i32* %t195, align 4
  call void @putint(i32 %t161)
  %t162 = load i32, i32* %t203, align 4
  call void @putch(i32 %t162)
  %t163 = load i32, i32* %t190, align 4
  ret i32 %t163
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
