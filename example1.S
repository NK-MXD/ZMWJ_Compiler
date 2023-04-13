	.cpu cortex-a72
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"example.cpp"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.text
	.align	1
	.global	main
	.arch armv8-a
	.arch_extension crc
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	.fnstart
.LFB1516:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.save {r7, lr}
	strd	r7, lr, [sp, #-8]!
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	ldr	r2, .L3
.LPIC0:
	add	r2, pc
	mvn	r3, #19
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	add	r1, r3, #3
	cmp	r3, #0
	it	lt
	movlt	r3, r1
	it	ge
	movge	r3, r3
	asr	r3, r3, #2
	rsb	r3, r3, #0
	mov	r1, r3
	ldr	r3, .L3+4
	ldr	r3, [r2, r3]
	mov	r0, r3
	bl	_ZNSolsEi(PLT)
	mov	r3, #0
	mov	r0, r3
	add	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_ZSt4cout(GOT)
	.fnend
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1997:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	str	r4, [sp, #-12]!
	strd	r7, lr, [sp, #4]
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L8
.LPIC3:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r7]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L7
	ldr	r3, .L8+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	_ZNSt8ios_base4InitC1Ev(PLT)
	ldr	r3, .L8+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L8+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L8+16
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__aeabi_atexit(PLT)
.L7:
	nop
	add	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldrd	r4, r7, [sp]
	add	sp, sp, #8
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_ZStL8__ioinit-(.LPIC1+4)
	.word	__dso_handle-(.LPIC2+4)
	.word	_ZNSt8ios_base4InitD1Ev(GOT)
	.word	_ZStL8__ioinit-(.LPIC4+4)
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB1998:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	strd	r7, lr, [sp, #-8]!
	add	r7, sp, #0
	movw	r1, #65535
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii(PLT)
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__sub_I_main(target1)
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
