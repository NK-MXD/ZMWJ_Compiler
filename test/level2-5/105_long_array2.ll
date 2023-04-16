@a = global [4096 x i32] zeroinitializer, align 4
define i32 @f1(i32* %t1) {
B17:
  %t18 = alloca i32*, align 4
  store i32* %t1, i32** %t18, align 4
  %t3 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i32 0, i32 5
  store i32 4000, i32* %t3, align 4
  %t4 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i32 0, i32 4000
  store i32 3, i32* %t4, align 4
  %t5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i32 0, i32 4095
  store i32 7, i32* %t5, align 4
  %t8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i32 0, i32 2216
  %t19 = load i32, i32* %t8, align 4
  %t9 = add i32 %t19, 9
  %t20 = load i32*, i32** %t18, align 4
  %t21 = load i32, i32* %t5, align 4
  %t7 = getelementptr inbounds i32, i32* %t20, i32 %t21
  store i32 %t9, i32* %t7, align 4
  %t22 = load i32, i32* %t3, align 4
  %t11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i32 0, i32 %t22
  %t23 = load i32, i32* %t11, align 4
  ret i32 %t23
}
define i32 @main() {
B24:
  %t25 = alloca [4 x [1024 x i32]], align 4
  %t8219 = alloca [1024 x [4 x i32]], align 4
  %t26 = bitcast [4 x [1024 x i32]]* %t25 to i8*
  call void @llvm.memset.p0.i32(i8* %t26, i8 0, i32 16384, i1 0)
  %t2075 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %t25, i32 0, i32 1
  %t2076 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t2075, i32 0, i32 0
  store i32 1, i32* %t2076, align 4
  %t4123 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %t25, i32 0, i32 2
  %t4124 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t4123, i32 0, i32 0
  store i32 2, i32* %t4124, align 4
  %t4126 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t4123, i32 0, i32 1
  store i32 3, i32* %t4126, align 4
  %t6171 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %t25, i32 0, i32 3
  %t6172 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t6171, i32 0, i32 0
  store i32 4, i32* %t6172, align 4
  %t6174 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t6171, i32 0, i32 1
  store i32 5, i32* %t6174, align 4
  %t6176 = getelementptr inbounds [1024 x i32], [1024 x i32]* %t6171, i32 0, i32 2
  store i32 6, i32* %t6176, align 4
  %t8220 = bitcast [1024 x [4 x i32]]* %t8219 to i8*
  call void @llvm.memset.p0.i32(i8* %t8220, i8 0, i32 16384, i1 0)
  %t8221 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %t8219, i32 0, i32 0
  %t8222 = getelementptr inbounds [4 x i32], [4 x i32]* %t8221, i32 0, i32 0
  store i32 1, i32* %t8222, align 4
  %t8224 = getelementptr inbounds [4 x i32], [4 x i32]* %t8221, i32 0, i32 1
  store i32 2, i32* %t8224, align 4
  %t8229 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %t8219, i32 0, i32 1
  %t8230 = getelementptr inbounds [4 x i32], [4 x i32]* %t8229, i32 0, i32 0
  store i32 3, i32* %t8230, align 4
  %t8232 = getelementptr inbounds [4 x i32], [4 x i32]* %t8229, i32 0, i32 1
  store i32 4, i32* %t8232, align 4
  %t15 = call i32 @f1(i32* %t8222)
  call void @putint(i32 %t15)
  call void @putch(i32 10)
  %t16 = getelementptr inbounds [1024 x [4 x i32]], [1024 x [4 x i32]]* %t8219, i32 0, i32 2
  %t16415 = getelementptr inbounds [4 x i32], [4 x i32]* %t16, i32 0, i32 0
  %t16416 = load i32, i32* %t16415, align 4
  ret i32 %t16416
}
declare void @putint(i32)
declare void @putch(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
