@b = global i32 5, align 4
@c = global [4 x i32] [i32 6, i32 7, i32 8, i32 9], align 4
define i32 @main() {
B36:
  %t37 = alloca i32, align 4
  %t38 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t57 = alloca [2 x [8 x i32]], align 4
  %t91 = alloca i32, align 4
  %t98 = alloca [7 x [1 x [5 x i32]]], align 4
  store i32 1, i32* %t37, align 4
  store i32 2, i32* %t38, align 4
  store i32 3, i32* %t38, align 4
  %t7 = load i32, i32* %t38, align 4
  call void @putint(i32 %t7)
  %t8 = load i32, i32* %t38, align 4
  call void @putint(i32 %t8)
  %t9 = load i32, i32* %t37, align 4
  call void @putint(i32 %t9)
  call void @putch(i32 10)
  br label %B39
B39:                               	; preds = %B36
  %t10 = load i32, i32* %t37, align 4
  %t11 = icmp slt i32 %t10, 5
  br i1 %t11, label %B40, label %B44
B40:                               	; preds = %B39, %B47
  store i32 0, i32* %t45, align 4
  %t14 = load i32, i32* %t45, align 4
  %t15 = add i32 %t14, 1
  store i32 %t15, i32* %t45, align 4
  %t16 = load i32, i32* %t45, align 4
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %B46, label %B49
B44:                               	; preds = %B39
  br label %B41
B46:                               	; preds = %B40
  br label %B41
B49:                               	; preds = %B40
  br label %B47
B41:                               	; preds = %B44, %B46, %B56
  %t18 = load i32, i32* %t37, align 4
  call void @putint(i32 %t18)
  call void @putch(i32 10)
  %t19 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  store i32 1, i32* %t19, align 4
  %t58 = bitcast [2 x [8 x i32]]* %t57 to i8*
  call void @llvm.memset.p0.i32(i8* %t58, i8 0, i32 64, i1 0)
  %t61 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t57, i32 0, i32 0
  %t62 = getelementptr inbounds [8 x i32], [8 x i32]* %t61, i32 0, i32 1
  store i32 9, i32* %t62, align 4
  %t75 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t57, i32 0, i32 1
  %t76 = getelementptr inbounds [8 x i32], [8 x i32]* %t75, i32 0, i32 0
  store i32 8, i32* %t76, align 4
  %t77 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t57, i32 0, i32 1
  %t78 = getelementptr inbounds [8 x i32], [8 x i32]* %t77, i32 0, i32 1
  store i32 3, i32* %t78, align 4
  store i32 2, i32* %t91, align 4
  %t22 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  %t94 = load i32, i32* %t22, align 4
  %t30 = icmp ne i32 %t94, 0
  br i1 %t30, label %B92, label %B96
B47:                               	; preds = %B49
  %t52 = load i32, i32* %t37, align 4
  %t53 = icmp slt i32 %t52, 5
  br i1 %t53, label %B40, label %B56
B92:                               	; preds = %B41
  %t99 = bitcast [7 x [1 x [5 x i32]]]* %t98 to i8*
  call void @llvm.memset.p0.i32(i8* %t99, i8 0, i32 140, i1 0)
  %t130 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 2
  %t131 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t130, i32 0, i32 0
  %t132 = getelementptr inbounds [5 x i32], [5 x i32]* %t131, i32 0, i32 0
  store i32 2, i32* %t132, align 4
  %t133 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 2
  %t134 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t133, i32 0, i32 0
  %t135 = getelementptr inbounds [5 x i32], [5 x i32]* %t134, i32 0, i32 1
  store i32 1, i32* %t135, align 4
  %t136 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 2
  %t137 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t136, i32 0, i32 0
  %t138 = getelementptr inbounds [5 x i32], [5 x i32]* %t137, i32 0, i32 2
  store i32 8, i32* %t138, align 4
  %t24 = load i32, i32* %t91, align 4
  %t25 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 %t24
  %t205 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t25, i32 0, i32 0
  %t206 = getelementptr inbounds [5 x i32], [5 x i32]* %t205, i32 0, i32 0
  %t207 = load i32, i32* %t206, align 4
  call void @putint(i32 %t207)
  %t26 = load i32, i32* %t91, align 4
  %t27 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 %t26
  %t208 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t27, i32 0, i32 0
  %t209 = getelementptr inbounds [5 x i32], [5 x i32]* %t208, i32 0, i32 1
  %t210 = load i32, i32* %t209, align 4
  call void @putint(i32 %t210)
  %t28 = load i32, i32* %t91, align 4
  %t29 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t98, i32 0, i32 %t28
  %t211 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t29, i32 0, i32 0
  %t212 = getelementptr inbounds [5 x i32], [5 x i32]* %t211, i32 0, i32 2
  %t213 = load i32, i32* %t212, align 4
  call void @putint(i32 %t213)
  br label %B93
B96:                               	; preds = %B41
  br label %B93
B56:                               	; preds = %B47
  br label %B41
B93:                               	; preds = %B92, %B96
  call void @putch(i32 10)
  %t31 = load i32, i32* @b, align 4
  call void @putint(i32 %t31)
  call void @putch(i32 10)
  %t32 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 0
  %t214 = load i32, i32* %t32, align 4
  call void @putint(i32 %t214)
  %t33 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 1
  %t215 = load i32, i32* %t33, align 4
  call void @putint(i32 %t215)
  %t34 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  %t216 = load i32, i32* %t34, align 4
  call void @putint(i32 %t216)
  %t35 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 3
  %t217 = load i32, i32* %t35, align 4
  call void @putint(i32 %t217)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
