	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a1
	.align 4
	.size a1, 4
a1:
	.word 1
	.global a2
	.align 4
	.size a2, 4
a2:
	.word 2
	.global a3
	.align 4
	.size a3, 4
a3:
	.word 3
	.global a4
	.align 4
	.size a4, 4
a4:
	.word 4
	.global a5
	.align 4
	.size a5, 4
a5:
	.word 5
	.global a6
	.align 4
	.size a6, 4
a6:
	.word 6
	.global a7
	.align 4
	.size a7, 4
a7:
	.word 7
	.global a8
	.align 4
	.size a8, 4
a8:
	.word 8
	.global a9
	.align 4
	.size a9, 4
a9:
	.word 9
	.global a10
	.align 4
	.size a10, 4
a10:
	.word 10
	.global a11
	.align 4
	.size a11, 4
a11:
	.word 11
	.global a12
	.align 4
	.size a12, 4
a12:
	.word 12
	.global a13
	.align 4
	.size a13, 4
a13:
	.word 13
	.global a14
	.align 4
	.size a14, 4
a14:
	.word 14
	.global a15
	.align 4
	.size a15, 4
a15:
	.word 15
	.global a16
	.align 4
	.size a16, 4
a16:
	.word 16
	.global a17
	.align 4
	.size a17, 4
a17:
	.word 1
	.global a18
	.align 4
	.size a18, 4
a18:
	.word 2
	.global a19
	.align 4
	.size a19, 4
a19:
	.word 3
	.global a20
	.align 4
	.size a20, 4
a20:
	.word 4
	.global a21
	.align 4
	.size a21, 4
a21:
	.word 5
	.global a22
	.align 4
	.size a22, 4
a22:
	.word 6
	.global a23
	.align 4
	.size a23, 4
a23:
	.word 7
	.global a24
	.align 4
	.size a24, 4
a24:
	.word 8
	.global a25
	.align 4
	.size a25, 4
a25:
	.word 9
	.global a26
	.align 4
	.size a26, 4
a26:
	.word 10
	.global a27
	.align 4
	.size a27, 4
a27:
	.word 11
	.global a28
	.align 4
	.size a28, 4
a28:
	.word 12
	.global a29
	.align 4
	.size a29, 4
a29:
	.word 13
	.global a30
	.align 4
	.size a30, 4
a30:
	.word 14
	.global a31
	.align 4
	.size a31, 4
a31:
	.word 15
	.global a32
	.align 4
	.size a32, 4
a32:
	.word 16
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L581:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	bl getint
	str r0, [fp, #-32]
	bl getint
	str r0, [fp, #-28]
	bl getint
	str r0, [fp, #-24]
	bl getint
	str r0, [fp, #-20]
	ldr r1, =1
	ldr r0, [fp, #-32]
	add r0, r1, r0
	ldr r1, addr_a10
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [fp, #-16]
	ldr r1, =2
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, addr_a20
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r1, =3
	ldr r0, [fp, #-24]
	add r0, r1, r0
	ldr r1, addr_a30
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [fp, #-52]
	ldr r1, =4
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, addr_a40
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-56]
	ldr r1, =1
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, addr_a50
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-60]
	ldr r1, =2
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, addr_a60
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-64]
	ldr r1, =3
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, addr_a70
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-68]
	ldr r1, =4
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, addr_a80
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-72]
	ldr r1, =1
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, addr_a90
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-76]
	ldr r1, =2
	ldr r0, [fp, #-64]
	add r1, r1, r0
	ldr r0, addr_a100
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-80]
	ldr r1, =3
	ldr r0, [fp, #-68]
	add r1, r1, r0
	ldr r0, addr_a110
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-84]
	ldr r1, =4
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, addr_a120
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-88]
	ldr r1, =1
	ldr r0, [fp, #-76]
	add r1, r1, r0
	ldr r0, addr_a130
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-92]
	ldr r1, =2
	ldr r0, [fp, #-80]
	add r1, r1, r0
	ldr r0, addr_a140
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-96]
	ldr r1, =3
	ldr r0, [fp, #-84]
	add r1, r1, r0
	ldr r0, addr_a150
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-100]
	ldr r1, =4
	ldr r0, [fp, #-88]
	add r1, r1, r0
	ldr r0, addr_a160
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-104]
	ldr r1, =1
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, addr_a170
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-108]
	ldr r1, =2
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, addr_a180
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-112]
	ldr r1, =3
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, addr_a190
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-116]
	ldr r1, =4
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, addr_a200
	ldr r0, [r0]
	add r5, r1, r0
	ldr r1, =1
	ldr r0, [fp, #-108]
	add r1, r1, r0
	ldr r0, addr_a210
	ldr r0, [r0]
	add r4, r1, r0
	ldr r1, =2
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, addr_a220
	ldr r0, [r0]
	add r3, r1, r0
	ldr r1, =3
	ldr r0, [fp, #-116]
	add r1, r1, r0
	ldr r0, addr_a230
	ldr r0, [r0]
	add r2, r1, r0
	ldr r0, =4
	add r0, r0, r5
	ldr r1, addr_a240
	ldr r1, [r1]
	add r9, r0, r1
	ldr r0, =1
	add r0, r0, r4
	ldr r1, addr_a250
	ldr r1, [r1]
	add r10, r0, r1
	ldr r0, =2
	add r0, r0, r3
	ldr r1, addr_a260
	ldr r1, [r1]
	add r8, r0, r1
	ldr r0, =3
	add r1, r0, r2
	ldr r0, addr_a270
	ldr r0, [r0]
	add r7, r1, r0
	ldr r0, =4
	add r0, r0, r9
	ldr r1, addr_a280
	ldr r1, [r1]
	add r6, r0, r1
	ldr r0, =1
	add r1, r0, r10
	ldr r0, addr_a290
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-44]
	ldr r0, =2
	add r1, r0, r8
	ldr r0, addr_a300
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-48]
	ldr r0, =3
	add r1, r0, r7
	ldr r0, addr_a310
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-36]
	ldr r0, =4
	add r1, r0, r6
	ldr r0, addr_a320
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-40]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r1, r0, #10
	ldr r0, addr_a290
	ldr r0, [r0]
	ldr r0, addr_a300
	ldr r0, [r0]
	ldr r0, addr_a310
	ldr r0, [r0]
	ldr r0, addr_a320
	ldr r0, [r0]
	ldr r0, addr_a250
	ldr r0, [r0]
	ldr r0, addr_a260
	ldr r0, [r0]
	ldr r0, addr_a270
	ldr r0, [r0]
	ldr r0, addr_a280
	ldr r0, [r0]
	ldr r0, addr_a210
	ldr r0, [r0]
	ldr r0, addr_a220
	ldr r0, [r0]
	ldr r0, addr_a230
	ldr r0, [r0]
	ldr r0, addr_a240
	ldr r0, [r0]
	ldr r0, addr_a170
	ldr r0, [r0]
	ldr r0, addr_a180
	ldr r0, [r0]
	ldr r0, addr_a190
	ldr r0, [r0]
	ldr r0, addr_a200
	ldr r0, [r0]
	ldr r0, addr_a130
	ldr r0, [r0]
	ldr r0, addr_a140
	ldr r0, [r0]
	ldr r0, addr_a150
	ldr r0, [r0]
	ldr r0, addr_a160
	ldr r0, [r0]
	ldr r0, addr_a90
	ldr r0, [r0]
	ldr r0, addr_a100
	ldr r0, [r0]
	ldr r0, addr_a110
	ldr r0, [r0]
	ldr r0, addr_a120
	ldr r0, [r0]
	ldr r0, addr_a50
	ldr r0, [r0]
	ldr r0, addr_a60
	ldr r0, [r0]
	ldr r0, addr_a70
	ldr r0, [r0]
	ldr r0, addr_a80
	ldr r0, [r0]
	ldr r0, addr_a10
	ldr r0, [r0]
	ldr r0, addr_a20
	ldr r0, [r0]
	ldr r0, addr_a30
	ldr r0, [r0]
	ldr r0, addr_a40
	ldr r0, [r0]
	ldr r0, addr_a10
	ldr r0, [r0]
	ldr r0, addr_a20
	ldr r0, [r0]
	ldr r0, addr_a30
	ldr r0, [r0]
	ldr r0, addr_a40
	ldr r0, [r0]
	ldr r0, [fp, #-32]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	sub r1, r1, r0
	ldr r0, [fp, #-12]
	sub r1, r1, r0
	ldr r0, [fp, #-52]
	sub r1, r1, r0
	ldr r0, [fp, #-56]
	sub r1, r1, r0
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
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	sub r1, r1, r0
	ldr r0, [fp, #-112]
	sub r1, r1, r0
	ldr r0, [fp, #-116]
	sub r0, r1, r0
	sub r0, r0, r5
	add r0, r0, r4
	add r0, r0, r3
	add r0, r0, r2
	add r0, r0, r9
	sub r0, r0, r10
	sub r0, r0, r8
	sub r0, r0, r7
	sub r1, r0, r6
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, addr_a10
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a20
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a30
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a40
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a50
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a60
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a70
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a80
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a90
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a100
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a110
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a120
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a130
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a140
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a150
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a160
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a170
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a180
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a190
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a200
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a210
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a220
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a230
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a240
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a250
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a260
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a270
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a280
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a290
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a300
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a310
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a320
	ldr r0, [r0]
	sub r0, r1, r0
	add sp, sp, #120
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
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
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L621:
	bl getint
	mov r2, r0
	mov r0, #18
	add r1, r2, r0
	mov r0, r2
	bl func
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, r4
	pop {r3, r4, fp, lr}
	bx lr

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
	.ident "ZWJM"
