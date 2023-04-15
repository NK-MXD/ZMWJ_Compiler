define i32 @func(i32 %t0, [59 x i32]* %t2, i32 %t4, i32* %t6, i32 %t8, i32 %t10, i32* %t12, i32 %t14, i32 %t16) {
B76:
  %t77 = alloca i32, align 4
  %t78 = alloca [59 x i32]*, align 4
  %t79 = alloca i32, align 4
  %t80 = alloca i32*, align 4
  %t81 = alloca i32, align 4
  %t82 = alloca i32, align 4
  %t83 = alloca i32*, align 4
  %t84 = alloca i32, align 4
  %t85 = alloca i32, align 4
  %t86 = alloca i32, align 4
  store i32 %t0, i32* %t77, align 4
  store [59 x i32]* %t2, [59 x i32]** %t78, align 4
  store i32 %t4, i32* %t79, align 4
  store i32* %t6, i32** %t80, align 4
  store i32 %t8, i32* %t81, align 4
  store i32 %t10, i32* %t82, align 4
  store i32* %t12, i32** %t83, align 4
  store i32 %t14, i32* %t84, align 4
  store i32 %t16, i32* %t85, align 4
  store i32 0, i32* %t86, align 4
  br label %B87
B87:                               	; preds = %B76, %B88
  %t19 = load i32, i32* %t86, align 4
  %t20 = icmp slt i32 %t19, 10
  br i1 %t20, label %B88, label %B92
B88:                               	; preds = %B87
  %t93 = load [59 x i32]*, [59 x i32]** %t78, align 4
  %t21 = load i32, i32* %t77, align 4
  %t23 = getelementptr inbounds [59 x i32], [59 x i32]* %t93, i32 %t21
  %t22 = load i32, i32* %t86, align 4
  %t94 = getelementptr inbounds [59 x i32], [59 x i32]* %t23, i32 0, i32 %t22
  %t95 = load i32, i32* %t94, align 4
  call void @putint(i32 %t95)
  %t25 = load i32, i32* %t86, align 4
  %t26 = add i32 %t25, 1
  store i32 %t26, i32* %t86, align 4
  br label %B87
B92:                               	; preds = %B87
  br label %B89
B89:                               	; preds = %B92
  call void @putch(i32 10)
  %t96 = load i32*, i32** %t80, align 4
  %t27 = load i32, i32* %t79, align 4
  %t28 = getelementptr inbounds i32, i32* %t96, i32 %t27
  %t97 = load i32, i32* %t28, align 4
  call void @putint(i32 %t97)
  call void @putch(i32 10)
  br label %B98
B98:                               	; preds = %B89, %B99
  %t29 = load i32, i32* %t85, align 4
  %t30 = icmp slt i32 %t29, 10
  br i1 %t30, label %B99, label %B103
B99:                               	; preds = %B98
  %t33 = load i32, i32* %t84, align 4
  %t34 = mul i32 %t33, 128875
  %t35 = srem i32 %t34, 3724
  %t104 = load i32*, i32** %t83, align 4
  %t31 = load i32, i32* %t85, align 4
  %t32 = getelementptr inbounds i32, i32* %t104, i32 %t31
  store i32 %t35, i32* %t32, align 4
  %t37 = load i32, i32* %t85, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t85, align 4
  %t40 = load i32, i32* %t84, align 4
  %t41 = add i32 %t40, 7
  store i32 %t41, i32* %t84, align 4
  br label %B98
B103:                               	; preds = %B98
  br label %B100
B100:                               	; preds = %B103
  %t42 = load i32, i32* %t81, align 4
  %t43 = load i32, i32* %t82, align 4
  %t44 = add i32 %t42, %t43
  ret i32 %t44
}
define i32 @main() {
B105:
  %t106 = alloca [61 x [67 x i32]], align 4
  %t108 = alloca [53 x [59 x i32]], align 4
  %t119 = alloca i32, align 4
  %t107 = bitcast [61 x [67 x i32]]* %t106 to i8*
  call void @llvm.memset.p0.i32(i8* %t107, i8 0, i32 16348, i1 0)
  %t109 = bitcast [53 x [59 x i32]]* %t108 to i8*
  call void @llvm.memset.p0.i32(i8* %t109, i8 0, i32 12508, i1 0)
  %t47 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t110 = getelementptr inbounds [67 x i32], [67 x i32]* %t47, i32 0, i32 1
  store i32 6, i32* %t110, align 4
  %t48 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t111 = getelementptr inbounds [67 x i32], [67 x i32]* %t48, i32 0, i32 3
  store i32 7, i32* %t111, align 4
  %t49 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t112 = getelementptr inbounds [67 x i32], [67 x i32]* %t49, i32 0, i32 4
  store i32 4, i32* %t112, align 4
  %t50 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t113 = getelementptr inbounds [67 x i32], [67 x i32]* %t50, i32 0, i32 7
  store i32 9, i32* %t113, align 4
  %t51 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t114 = getelementptr inbounds [67 x i32], [67 x i32]* %t51, i32 0, i32 11
  store i32 11, i32* %t114, align 4
  %t52 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t115 = getelementptr inbounds [59 x i32], [59 x i32]* %t52, i32 0, i32 1
  store i32 1, i32* %t115, align 4
  %t53 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t116 = getelementptr inbounds [59 x i32], [59 x i32]* %t53, i32 0, i32 2
  store i32 2, i32* %t116, align 4
  %t54 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t117 = getelementptr inbounds [59 x i32], [59 x i32]* %t54, i32 0, i32 3
  store i32 3, i32* %t117, align 4
  %t55 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t118 = getelementptr inbounds [59 x i32], [59 x i32]* %t55, i32 0, i32 9
  store i32 9, i32* %t118, align 4
  %t58 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t120 = getelementptr inbounds [67 x i32], [67 x i32]* %t58, i32 0, i32 1
  %t121 = load i32, i32* %t120, align 4
  %t59 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 0
  %t60 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t122 = getelementptr inbounds [67 x i32], [67 x i32]* %t60, i32 0, i32 3
  %t123 = load i32, i32* %t122, align 4
  %t61 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %t106, i32 0, i32 17
  %t125 = getelementptr inbounds [67 x i32], [67 x i32]* %t61, i32 0, i32 0
  %t62 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t126 = getelementptr inbounds [59 x i32], [59 x i32]* %t62, i32 0, i32 3
  %t127 = load i32, i32* %t126, align 4
  %t63 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t128 = getelementptr inbounds [59 x i32], [59 x i32]* %t63, i32 0, i32 0
  %t129 = load i32, i32* %t128, align 4
  %t64 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t131 = getelementptr inbounds [59 x i32], [59 x i32]* %t64, i32 0, i32 0
  %t65 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 34
  %t132 = getelementptr inbounds [59 x i32], [59 x i32]* %t65, i32 0, i32 4
  %t133 = load i32, i32* %t132, align 4
  %t66 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 51
  %t134 = getelementptr inbounds [59 x i32], [59 x i32]* %t66, i32 0, i32 18
  %t135 = load i32, i32* %t134, align 4
  %t67 = call i32 @func(i32 %t121, [59 x i32]* %t59, i32 %t123, i32* %t125, i32 %t127, i32 %t129, i32* %t131, i32 %t133, i32 %t135)
  %t68 = mul i32 %t67, 3
  store i32 %t68, i32* %t119, align 4
  br label %B136
B136:                               	; preds = %B105, %B137
  %t69 = load i32, i32* %t119, align 4
  %t70 = icmp sge i32 %t69, 0
  br i1 %t70, label %B137, label %B141
B137:                               	; preds = %B136
  %t72 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %t108, i32 0, i32 6
  %t71 = load i32, i32* %t119, align 4
  %t142 = getelementptr inbounds [59 x i32], [59 x i32]* %t72, i32 0, i32 %t71
  %t143 = load i32, i32* %t142, align 4
  call void @putint(i32 %t143)
  call void @putch(i32 32)
  %t74 = load i32, i32* %t119, align 4
  %t75 = sub i32 %t74, 1
  store i32 %t75, i32* %t119, align 4
  br label %B136
B141:                               	; preds = %B136
  br label %B138
B138:                               	; preds = %B141
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
