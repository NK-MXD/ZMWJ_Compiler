define i32 @fun(i32 %t0, i32 %t2) {
B28:
  br label %B32
B32:                               	; preds = %B28
  %t6 = icmp sgt i32 %t2, 0
  br i1 %t6, label %B33, label %B37
B33:                               	; preds = %B32, %B33
  %t60 = phi i32[ 0 , %B32 ], [ %t10 , %B33 ]
  %t48 = phi i32[ %t0 , %B32 ], [ %t54 , %B33 ]
  %t54 = phi i32[ %t2 , %B32 ], [ %t10 , %B33 ]
  %t10 = srem i32 %t48, %t54
  %t39 = icmp sgt i32 %t10, 0
  br i1 %t39, label %B33, label %B42
B37:                               	; preds = %B32
  br label %B34
B42:                               	; preds = %B33
  br label %B34
B34:                               	; preds = %B37, %B42
  %t61 = phi i32[ 0 , %B37 ], [ %t10 , %B42 ]
  %t55 = phi i32[ %t2 , %B37 ], [ %t10 , %B42 ]
  %t49 = phi i32[ %t0 , %B37 ], [ %t54 , %B42 ]
  ret i32 %t49
}
define i32 @main() {
B43:
  %t44 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t46 = alloca i32, align 4
  %t20 = call i32 @getint()
  store i32 %t20, i32* %t45, align 4
  %t22 = call i32 @getint()
  store i32 %t22, i32* %t44, align 4
  %t24 = load i32, i32* %t45, align 4
  %t25 = load i32, i32* %t44, align 4
  %t26 = call i32 @fun(i32 %t24, i32 %t25)
  store i32 %t26, i32* %t46, align 4
  %t27 = load i32, i32* %t46, align 4
  call void @putint(i32 %t27)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
