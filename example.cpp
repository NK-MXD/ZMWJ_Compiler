// clang -E -Xclang -ast-dump example1.c
// clang -emit-llvm -S example1.c -o example1.ll
//test const gloal var define
// 汇编	llc example.bc -o example.s
//	执行 gcc example.s -o example
// 中间代码输入输出执行 clang -o build/compiler example.ll sysyruntimelibrary/sylib.c
// 可执行程序 clang example.ll sysyruntimelibrary/sylib.c -o example
// 执行 build/compiler example.ll
//clang 中间代码执行文件生成 clang -emit-llvm -S example1.c -o example1.ll
// 汇编代码生成 arm-linux-gnueabihf-gcc -mcpu=cortex-a72 -S example1.c sysyruntimelibrary/libsysy.a -o example1.S
// 汇编可执行文件 arm-linux-gnueabihf-gcc -mcpu=cortex-a72 example1.S sysyruntimelibrary/libsysy.so -o example1
// arm-linux-gnueabihf-gcc -mcpu=cortex-a72 -o example example.s  sysyruntimelibrary/libsysy.a
// 汇编文件执行 qemu-arm example <example.in
// reference: https://zhuanlan.zhihu.com/p/20085048
//test array define
// 优化选项, mem2reg clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm  example1.c -o example1.ll
// opt -mem2reg example1.ll -o example_opt1.ll
// llvm-dis example_opt1.ll -o example_opt_dis1.ll
int fun(int m,int n){
	int rem;			
	while(n > 0){
		rem = m % n;
		m = n;
		n = rem;
	}
	// rem 13 m 39 n 13
	// 0  13  0
	// r5: n
	// r4: m
	// r7: rem
	return m;				
}
int main(){
	int n,m;
	int num;
	m=getint();//91 39
	n=getint();
	num=fun(m,n);
	putint(num);
	putch(32);

	return 0; 
}
