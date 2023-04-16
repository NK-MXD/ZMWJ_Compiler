@k = global i32 0, align 4
define i32 @main() {
B31:
  store i32 3389, i32* @k, align 4
  %t2 = load i32, i32* @k, align 4
  %t3 = icmp slt i32 %t2, 10000
  br i1 %t3, label %B32, label %B36
B32:                               	; preds = %B31
  %t5 = load i32, i32* @k, align 4
  %t6 = add i32 %t5, 1
  store i32 %t6, i32* @k, align 4
  br label %B38
B36:                               	; preds = %B31
  %t94 = add i32 0, 0
  %t85 = add i32 0, 0
  %t75 = add i32 0, 0
  %t63 = add i32 0, 0
  br label %B33
B38:                               	; preds = %B32
  %t91 = add i32 0, 0
  %t82 = add i32 0, 0
  %t72 = add i32 0, 0
  %t60 = add i32 112, 0
  %t9 = icmp sgt i32 112, 10
  br i1 %t9, label %B39, label %B43
B33:                               	; preds = %B36, %B40
  %t30 = load i32, i32* @k, align 4
  ret i32 %t30
B39:                               	; preds = %B38, %B45
  %t12 = sub i32 %t60, 88
  %t14 = icmp slt i32 %t12, 1000
  br i1 %t14, label %B44, label %B48
B43:                               	; preds = %B38
  %t92 = add i32 0, 0
  %t83 = add i32 0, 0
  %t73 = add i32 0, 0
  %t61 = add i32 112, 0
  br label %B40
B44:                               	; preds = %B39
  %t21 = sub i32 %t12, 10
  %t26 = add i32 %t21, 11
  %t28 = add i32 %t26, 11
  %t89 = add i32 11, 0
  %t80 = add i32 11, 0
  %t70 = add i32 10, 0
  %t58 = add i32 %t28, 0
  br label %B45
B48:                               	; preds = %B39
  %t89 = add i32 %t91, 0
  %t80 = add i32 %t82, 0
  %t70 = add i32 %t72, 0
  %t58 = add i32 %t12, 0
  br label %B45
B40:                               	; preds = %B43, %B56
  call void @putint(i32 %t61)
  %t94 = add i32 %t92, 0
  %t85 = add i32 %t83, 0
  %t75 = add i32 %t73, 0
  %t63 = add i32 %t61, 0
  br label %B33
B45:                               	; preds = %B44, %B48
  %t91 = add i32 %t89, 0
  %t82 = add i32 %t80, 0
  %t72 = add i32 %t70, 0
  %t60 = add i32 %t58, 0
  %t53 = icmp sgt i32 %t58, 10
  br i1 %t53, label %B39, label %B56
B56:                               	; preds = %B45
  %t92 = add i32 %t89, 0
  %t83 = add i32 %t80, 0
  %t73 = add i32 %t70, 0
  %t61 = add i32 %t58, 0
  br label %B40
}
declare void @putint(i32)
