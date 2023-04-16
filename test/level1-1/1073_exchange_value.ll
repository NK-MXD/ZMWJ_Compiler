@n = global i32 0, align 4
define i32 @main() {
B20:
  %t4 = call i32 @getint()
  %t6 = call i32 @getint()
  call void @putint(i32 %t6)
  call void @putch(i32 10)
  call void @putint(i32 %t4)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
