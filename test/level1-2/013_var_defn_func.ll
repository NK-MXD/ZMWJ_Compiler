define i32 @defn() {
B3:
  ret i32 4
}
define i32 @main() {
B4:
  %t0 = call i32 @defn()
  ret i32 %t0
}
