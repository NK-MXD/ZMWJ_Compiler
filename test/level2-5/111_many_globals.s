	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a0
	.align 4
	.size a0, 4
a0:
	.word 0
	.global a1
	.align 4
	.size a1, 4
a1:
	.word 0
	.global a2
	.align 4
	.size a2, 4
a2:
	.word 0
	.global a3
	.align 4
	.size a3, 4
a3:
	.word 0
	.global a4
	.align 4
	.size a4, 4
a4:
	.word 0
	.global a5
	.align 4
	.size a5, 4
a5:
	.word 0
	.global a6
	.align 4
	.size a6, 4
a6:
	.word 0
	.global a7
	.align 4
	.size a7, 4
a7:
	.word 0
	.global a8
	.align 4
	.size a8, 4
a8:
	.word 0
	.global a9
	.align 4
	.size a9, 4
a9:
	.word 0
	.global a10
	.align 4
	.size a10, 4
a10:
	.word 0
	.global a11
	.align 4
	.size a11, 4
a11:
	.word 0
	.global a12
	.align 4
	.size a12, 4
a12:
	.word 0
	.global a13
	.align 4
	.size a13, 4
a13:
	.word 0
	.global a14
	.align 4
	.size a14, 4
a14:
	.word 0
	.global a15
	.align 4
	.size a15, 4
a15:
	.word 0
	.global a16
	.align 4
	.size a16, 4
a16:
	.word 0
	.global a17
	.align 4
	.size a17, 4
a17:
	.word 0
	.global a18
	.align 4
	.size a18, 4
a18:
	.word 0
	.global a19
	.align 4
	.size a19, 4
a19:
	.word 0
	.global a20
	.align 4
	.size a20, 4
a20:
	.word 0
	.global a21
	.align 4
	.size a21, 4
a21:
	.word 0
	.global a22
	.align 4
	.size a22, 4
a22:
	.word 0
	.global a23
	.align 4
	.size a23, 4
a23:
	.word 0
	.global a24
	.align 4
	.size a24, 4
a24:
	.word 0
	.global a25
	.align 4
	.size a25, 4
a25:
	.word 0
	.global a26
	.align 4
	.size a26, 4
a26:
	.word 0
	.global a27
	.align 4
	.size a27, 4
a27:
	.word 0
	.global a28
	.align 4
	.size a28, 4
a28:
	.word 0
	.global a29
	.align 4
	.size a29, 4
a29:
	.word 0
	.global a30
	.align 4
	.size a30, 4
a30:
	.word 0
	.global a31
	.align 4
	.size a31, 4
a31:
	.word 0
	.global a32
	.align 4
	.size a32, 4
a32:
	.word 0
	.global a33
	.align 4
	.size a33, 4
a33:
	.word 0
	.global a34
	.align 4
	.size a34, 4
a34:
	.word 0
	.global a35
	.align 4
	.size a35, 4
a35:
	.word 0
	.global a36
	.align 4
	.size a36, 4
a36:
	.word 0
	.global a37
	.align 4
	.size a37, 4
a37:
	.word 0
	.global a38
	.align 4
	.size a38, 4
a38:
	.word 0
	.global a39
	.align 4
	.size a39, 4
a39:
	.word 0
	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L366:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r0, r1, r0
	add sp, sp, #32
	pop {r3, r4, fp, lr}
	bx lr

	.global testParam16
	.type testParam16 , %function
testParam16:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L375:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r3, [fp, #36]
	str r3, [fp, #-40]
	ldr r3, [fp, #40]
	str r3, [fp, #-44]
	ldr r3, [fp, #44]
	str r3, [fp, #-48]
	ldr r3, [fp, #48]
	str r3, [fp, #-52]
	ldr r3, [fp, #52]
	str r3, [fp, #-56]
	ldr r3, [fp, #56]
	str r3, [fp, #-60]
	ldr r3, [fp, #60]
	str r3, [fp, #-64]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	sub r1, r1, r0
	ldr r0, [fp, #-20]
	sub r1, r1, r0
	ldr r0, [fp, #-24]
	sub r1, r1, r0
	ldr r0, [fp, #-28]
	sub r1, r1, r0
	ldr r0, [fp, #-32]
	sub r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r0, r1, r0
	add sp, sp, #64
	pop {r3, r4, fp, lr}
	bx lr

	.global testParam32
	.type testParam32 , %function
testParam32:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L392:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r3, [fp, #36]
	str r3, [fp, #-40]
	ldr r3, [fp, #40]
	str r3, [fp, #-44]
	ldr r3, [fp, #44]
	str r3, [fp, #-48]
	ldr r3, [fp, #48]
	str r3, [fp, #-52]
	ldr r3, [fp, #52]
	str r3, [fp, #-56]
	ldr r3, [fp, #56]
	str r3, [fp, #-60]
	ldr r3, [fp, #60]
	str r3, [fp, #-64]
	ldr r3, [fp, #64]
	str r3, [fp, #-68]
	ldr r3, [fp, #68]
	str r3, [fp, #-72]
	ldr r3, [fp, #72]
	str r3, [fp, #-76]
	ldr r3, [fp, #76]
	str r3, [fp, #-80]
	ldr r3, [fp, #80]
	str r3, [fp, #-84]
	ldr r3, [fp, #84]
	str r3, [fp, #-88]
	ldr r3, [fp, #88]
	str r3, [fp, #-92]
	ldr r3, [fp, #92]
	str r3, [fp, #-96]
	ldr r3, [fp, #96]
	str r3, [fp, #-100]
	ldr r3, [fp, #100]
	str r3, [fp, #-104]
	ldr r3, [fp, #104]
	str r3, [fp, #-108]
	ldr r3, [fp, #108]
	str r3, [fp, #-112]
	ldr r3, [fp, #112]
	str r3, [fp, #-116]
	ldr r3, [fp, #116]
	str r3, [fp, #-120]
	ldr r3, [fp, #120]
	str r3, [fp, #-124]
	ldr r3, [fp, #124]
	str r3, [fp, #-128]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r1, r1, r0
	ldr r0, [fp, #-68]
	add r1, r1, r0
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, [fp, #-76]
	sub r1, r1, r0
	ldr r0, [fp, #-80]
	sub r1, r1, r0
	ldr r0, [fp, #-84]
	sub r1, r1, r0
	ldr r0, [fp, #-88]
	sub r1, r1, r0
	ldr r0, [fp, #-92]
	sub r1, r1, r0
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r1, r1, r0
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, [fp, #-116]
	add r1, r1, r0
	ldr r0, [fp, #-120]
	add r1, r1, r0
	ldr r0, [fp, #-124]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	add r0, r1, r0
	add sp, sp, #128
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L425:
	ldr r1, =0
	ldr r0, addr_a00
	str r1, [r0]
	ldr r1, =1
	ldr r0, addr_a10
	str r1, [r0]
	ldr r1, =2
	ldr r0, addr_a20
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_a30
	str r1, [r0]
	ldr r1, =4
	ldr r0, addr_a40
	str r1, [r0]
	ldr r1, =5
	ldr r0, addr_a50
	str r1, [r0]
	ldr r1, =6
	ldr r0, addr_a60
	str r1, [r0]
	ldr r1, =7
	ldr r0, addr_a70
	str r1, [r0]
	ldr r1, =8
	ldr r0, addr_a80
	str r1, [r0]
	ldr r1, =9
	ldr r0, addr_a90
	str r1, [r0]
	ldr r1, =0
	ldr r0, addr_a100
	str r1, [r0]
	ldr r1, =1
	ldr r0, addr_a110
	str r1, [r0]
	ldr r1, =2
	ldr r0, addr_a120
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_a130
	str r1, [r0]
	ldr r1, =4
	ldr r0, addr_a140
	str r1, [r0]
	ldr r1, =5
	ldr r0, addr_a150
	str r1, [r0]
	ldr r1, =6
	ldr r0, addr_a160
	str r1, [r0]
	ldr r1, =7
	ldr r0, addr_a170
	str r1, [r0]
	ldr r1, =8
	ldr r0, addr_a180
	str r1, [r0]
	ldr r1, =9
	ldr r0, addr_a190
	str r1, [r0]
	ldr r1, =0
	ldr r0, addr_a200
	str r1, [r0]
	ldr r1, =1
	ldr r0, addr_a210
	str r1, [r0]
	ldr r1, =2
	ldr r0, addr_a220
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_a230
	str r1, [r0]
	ldr r1, =4
	ldr r0, addr_a240
	str r1, [r0]
	ldr r1, =5
	ldr r0, addr_a250
	str r1, [r0]
	ldr r1, =6
	ldr r0, addr_a260
	str r1, [r0]
	ldr r1, =7
	ldr r0, addr_a270
	str r1, [r0]
	ldr r1, =8
	ldr r0, addr_a280
	str r1, [r0]
	ldr r1, =9
	ldr r0, addr_a290
	str r1, [r0]
	ldr r1, =0
	ldr r0, addr_a300
	str r1, [r0]
	ldr r1, =1
	ldr r0, addr_a310
	str r1, [r0]
	ldr r1, =4
	ldr r0, addr_a320
	str r1, [r0]
	ldr r1, =5
	ldr r0, addr_a330
	str r1, [r0]
	ldr r1, =6
	ldr r0, addr_a340
	str r1, [r0]
	ldr r1, =7
	ldr r0, addr_a350
	str r1, [r0]
	ldr r1, =8
	ldr r0, addr_a360
	str r1, [r0]
	ldr r1, =9
	ldr r0, addr_a370
	str r1, [r0]
	ldr r1, =0
	ldr r0, addr_a380
	str r1, [r0]
	ldr r1, =1
	ldr r0, addr_a390
	str r1, [r0]
	ldr r0, addr_a00
	ldr r1, [r0]
	ldr r0, addr_a10
	ldr r2, [r0]
	ldr r0, addr_a20
	ldr r3, [r0]
	ldr r0, addr_a30
	ldr r8, [r0]
	ldr r0, addr_a40
	ldr r7, [r0]
	ldr r0, addr_a50
	ldr r6, [r0]
	ldr r0, addr_a60
	ldr r5, [r0]
	ldr r0, addr_a70
	ldr r4, [r0]
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, r8
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl testParam8
	add sp, sp, #16
	mov r1, r0
	ldr r0, addr_a00
	str r1, [r0]
	ldr r0, addr_a00
	ldr r0, [r0]
	bl putint
	ldr r0, addr_a320
	ldr r1, [r0]
	ldr r0, addr_a330
	ldr r2, [r0]
	ldr r0, addr_a340
	ldr r3, [r0]
	ldr r0, addr_a350
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, addr_a360
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, addr_a370
	ldr r0, [r0]
	str r0, [fp, #-16]
	ldr r0, addr_a380
	ldr r0, [r0]
	str r0, [fp, #-20]
	ldr r0, addr_a390
	ldr r0, [r0]
	str r0, [fp, #-24]
	ldr r0, addr_a80
	ldr r0, [r0]
	str r0, [fp, #-28]
	ldr r0, addr_a90
	ldr r10, [r0]
	ldr r0, addr_a100
	ldr r9, [r0]
	ldr r0, addr_a110
	ldr r8, [r0]
	ldr r0, addr_a120
	ldr r7, [r0]
	ldr r0, addr_a130
	ldr r6, [r0]
	ldr r0, addr_a140
	ldr r5, [r0]
	ldr r0, addr_a150
	ldr r4, [r0]
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [fp, #-8]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, [fp, #-28]
	push {r4}
	ldr r4, [fp, #-24]
	push {r4}
	ldr r4, [fp, #-20]
	push {r4}
	ldr r4, [fp, #-16]
	push {r4}
	ldr r4, [fp, #-12]
	push {r4}
	bl testParam16
	add sp, sp, #48
	mov r1, r0
	ldr r0, addr_a00
	str r1, [r0]
	ldr r0, addr_a00
	ldr r0, [r0]
	bl putint
	ldr r0, addr_a00
	ldr r1, [r0]
	ldr r0, addr_a10
	ldr r2, [r0]
	ldr r0, addr_a20
	ldr r3, [r0]
	ldr r0, addr_a30
	ldr r0, [r0]
	str r0, [fp, #-32]
	ldr r0, addr_a40
	ldr r0, [r0]
	str r0, [fp, #-36]
	ldr r0, addr_a50
	ldr r0, [r0]
	str r0, [fp, #-40]
	ldr r0, addr_a60
	ldr r0, [r0]
	str r0, [fp, #-44]
	ldr r0, addr_a70
	ldr r0, [r0]
	str r0, [fp, #-48]
	ldr r0, addr_a80
	ldr r0, [r0]
	str r0, [fp, #-52]
	ldr r0, addr_a90
	ldr r0, [r0]
	str r0, [fp, #-56]
	ldr r0, addr_a100
	ldr r0, [r0]
	str r0, [fp, #-60]
	ldr r0, addr_a110
	ldr r0, [r0]
	str r0, [fp, #-64]
	ldr r0, addr_a120
	ldr r0, [r0]
	str r0, [fp, #-68]
	ldr r0, addr_a130
	ldr r0, [r0]
	str r0, [fp, #-72]
	ldr r0, addr_a140
	ldr r0, [r0]
	str r0, [fp, #-76]
	ldr r0, addr_a150
	ldr r0, [r0]
	str r0, [fp, #-80]
	ldr r0, addr_a160
	ldr r0, [r0]
	str r0, [fp, #-84]
	ldr r0, addr_a170
	ldr r0, [r0]
	str r0, [fp, #-88]
	ldr r0, addr_a180
	ldr r0, [r0]
	str r0, [fp, #-92]
	ldr r0, addr_a190
	ldr r0, [r0]
	str r0, [fp, #-96]
	ldr r0, addr_a200
	ldr r0, [r0]
	str r0, [fp, #-100]
	ldr r0, addr_a210
	ldr r0, [r0]
	str r0, [fp, #-104]
	ldr r0, addr_a220
	ldr r0, [r0]
	str r0, [fp, #-108]
	ldr r0, addr_a230
	ldr r0, [r0]
	str r0, [fp, #-112]
	ldr r0, addr_a240
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, addr_a250
	ldr r10, [r0]
	ldr r0, addr_a260
	ldr r9, [r0]
	ldr r0, addr_a270
	ldr r8, [r0]
	ldr r0, addr_a280
	ldr r7, [r0]
	ldr r0, addr_a290
	ldr r6, [r0]
	ldr r0, addr_a300
	ldr r5, [r0]
	ldr r0, addr_a310
	ldr r4, [r0]
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [fp, #-32]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, [fp, #-4]
	push {r4}
	ldr r4, [fp, #-112]
	push {r4}
	ldr r4, [fp, #-108]
	push {r4}
	ldr r4, [fp, #-104]
	push {r4}
	ldr r4, [fp, #-100]
	push {r4}
	ldr r4, [fp, #-96]
	push {r4}
	ldr r4, [fp, #-92]
	push {r4}
	ldr r4, [fp, #-88]
	push {r4}
	ldr r4, [fp, #-84]
	push {r4}
	ldr r4, [fp, #-80]
	push {r4}
	ldr r4, [fp, #-76]
	push {r4}
	ldr r4, [fp, #-72]
	push {r4}
	ldr r4, [fp, #-68]
	push {r4}
	ldr r4, [fp, #-64]
	push {r4}
	ldr r4, [fp, #-60]
	push {r4}
	ldr r4, [fp, #-56]
	push {r4}
	ldr r4, [fp, #-52]
	push {r4}
	ldr r4, [fp, #-48]
	push {r4}
	ldr r4, [fp, #-44]
	push {r4}
	ldr r4, [fp, #-40]
	push {r4}
	ldr r4, [fp, #-36]
	push {r4}
	bl testParam32
	add sp, sp, #112
	mov r1, r0
	ldr r0, addr_a00
	str r1, [r0]
	ldr r0, addr_a00
	ldr r0, [r0]
	bl putint
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
addr_a00:
	.word a0
addr_a10:
	.word a1
addr_a20:
	.word a2
addr_a30:
	.word a3
addr_a40:
	.word a4
addr_a50:
	.word a5
addr_a60:
	.word a6
addr_a70:
	.word a7
addr_a80:
	.word a8
addr_a90:
	.word a9
addr_a100:
	.word a10
addr_a110:
	.word a11
addr_a120:
	.word a12
addr_a130:
	.word a13
addr_a140:
	.word a14
addr_a150:
	.word a15
addr_a160:
	.word a16
addr_a170:
	.word a17
addr_a180:
	.word a18
addr_a190:
	.word a19
addr_a200:
	.word a20
addr_a210:
	.word a21
addr_a220:
	.word a22
addr_a230:
	.word a23
addr_a240:
	.word a24
addr_a250:
	.word a25
addr_a260:
	.word a26
addr_a270:
	.word a27
addr_a280:
	.word a28
addr_a290:
	.word a29
addr_a300:
	.word a30
addr_a310:
	.word a31
addr_a320:
	.word a32
addr_a330:
	.word a33
addr_a340:
	.word a34
addr_a350:
	.word a35
addr_a360:
	.word a36
addr_a370:
	.word a37
addr_a380:
	.word a38
addr_a390:
	.word a39
.F0:

addr_a01:
	.word a0
addr_a11:
	.word a1
addr_a21:
	.word a2
addr_a31:
	.word a3
addr_a41:
	.word a4
addr_a51:
	.word a5
addr_a61:
	.word a6
addr_a71:
	.word a7
addr_a81:
	.word a8
addr_a91:
	.word a9
addr_a101:
	.word a10
addr_a111:
	.word a11
addr_a121:
	.word a12
addr_a131:
	.word a13
addr_a141:
	.word a14
addr_a151:
	.word a15
addr_a161:
	.word a16
addr_a171:
	.word a17
addr_a181:
	.word a18
addr_a191:
	.word a19
addr_a201:
	.word a20
addr_a211:
	.word a21
addr_a221:
	.word a22
addr_a231:
	.word a23
addr_a241:
	.word a24
addr_a251:
	.word a25
addr_a261:
	.word a26
addr_a271:
	.word a27
addr_a281:
	.word a28
addr_a291:
	.word a29
addr_a301:
	.word a30
addr_a311:
	.word a31
addr_a321:
	.word a32
addr_a331:
	.word a33
addr_a341:
	.word a34
addr_a351:
	.word a35
addr_a361:
	.word a36
addr_a371:
	.word a37
addr_a381:
	.word a38
addr_a391:
	.word a39
	.ident "ZWJM"
