@n = global i32 0, align 4
define i32 @main() {
B164:
  %t33 = call i32 @getint()
  br label %B196
B196:                               	; preds = %B164
  %t240 = add i32 %t33, 0
  %t35 = icmp eq i32 %t33, 5
  br i1 %t35, label %B197, label %B201
B197:                               	; preds = %B196, %B247
  %t38 = add i32 %t240, 1
  %t203 = icmp eq i32 %t38, 5
  br i1 %t203, label %B247, label %B206
B201:                               	; preds = %B196
  %t241 = add i32 %t33, 0
  br label %B198
B206:                               	; preds = %B197
  %t241 = add i32 %t38, 0
  br label %B198
B247:                               	; preds = %B197
  %t240 = add i32 %t38, 0
  br label %B197
B198:                               	; preds = %B201, %B206
  %t42 = add i32 0, 1
  %t45 = add i32 %t42, 1
  %t48 = add i32 %t45, 1
  %t51 = add i32 %t48, 1
  %t54 = add i32 %t51, 1
  %t57 = add i32 %t54, 1
  %t60 = add i32 %t57, 1
  %t63 = add i32 %t60, 1
  %t66 = add i32 %t63, 1
  %t69 = add i32 %t66, 1
  %t72 = add i32 %t69, 1
  %t75 = add i32 %t72, 1
  %t78 = add i32 %t75, 1
  %t81 = add i32 %t78, 1
  %t84 = add i32 %t81, 1
  %t87 = add i32 %t84, 1
  %t90 = add i32 %t87, 1
  %t93 = add i32 %t90, 1
  %t96 = add i32 %t93, 1
  %t99 = add i32 %t96, 1
  %t102 = add i32 %t99, 1
  %t105 = add i32 %t102, 1
  %t108 = add i32 %t105, 1
  %t111 = add i32 %t108, 1
  %t114 = add i32 %t111, 1
  %t117 = add i32 %t114, 1
  %t120 = add i32 %t117, 1
  %t123 = add i32 %t120, 1
  %t126 = add i32 %t123, 1
  call void @putint(i32 0)
  call void @putint(i32 %t42)
  call void @putint(i32 %t45)
  call void @putint(i32 %t48)
  call void @putint(i32 %t51)
  call void @putint(i32 %t54)
  call void @putint(i32 %t57)
  call void @putint(i32 %t60)
  call void @putint(i32 %t63)
  call void @putint(i32 %t66)
  call void @putint(i32 %t69)
  call void @putint(i32 %t72)
  call void @putint(i32 %t75)
  call void @putint(i32 %t78)
  call void @putint(i32 %t81)
  call void @putint(i32 %t84)
  call void @putint(i32 %t87)
  call void @putint(i32 %t90)
  call void @putint(i32 %t93)
  call void @putint(i32 %t96)
  call void @putint(i32 %t99)
  call void @putint(i32 %t102)
  call void @putint(i32 %t105)
  call void @putint(i32 %t108)
  call void @putint(i32 %t111)
  call void @putint(i32 %t114)
  call void @putint(i32 %t117)
  call void @putint(i32 %t120)
  call void @putint(i32 %t123)
  call void @putint(i32 %t126)
  call void @putch(i32 10)
  call void @putint(i32 %t241)
  call void @putch(i32 10)
  ret i32 %t114
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
