	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L114
	b .L119
.L114:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L115:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L120
	b .L125
.L119:
	b .L115
.L120:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L121:
	ldr r0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L125:
	b .L121

	.global max_sum_nonadjacent
	.type max_sum_nonadjacent , %function
max_sum_nonadjacent:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L126:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	add r0, fp, #-72
	mov r1, #0
	mov r2, #64
	bl memset
	ldr r1, [fp, #-4]
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mov r3, #0
	mov r4, #-72
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r3, [r0]
	mov r2, #1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r1, [r0]
	mov r0, r3
	bl MAX
	mov r3, r0
	mov r1, #1
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	b .L138
.L138:
	ldr r1, [fp, #-8]
	ldr r0, =2
	mov r4, r0
	ldr r0, =2
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L139
	b .L143
.L139:
	sub r1, r4, #2
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r2, [r0]
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	add r0, r2, r0
	sub r2, r4, #1
	mov r3, #-72
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	bl MAX
	mov r3, r0
	mov r2, #-72
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	add r1, r4, #1
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L264
	b .L153
.L140:
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add sp, sp, #72
	pop {r3, r4, fp, lr}
	bx lr
.L143:
	ldr r0, =2
	b .L140
.L153:
	b .L140
.L264:
	mov r4, r1
	b .L139

	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	ldr r4, =1040
	sub sp, sp, r4
.L155:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r0, =-1040
	add r0, fp, r0
	mov r1, #0
	ldr r2, =1024
	bl memset
	b .L164
.L164:
	ldr r1, [fp, #-8]
	ldr r0, =0
	ldr r0, =1
	mov r5, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L165
	b .L169
.L165:
	b .L170
.L166:
	ldr r1, [fp, #-8]
	ldr r2, =-1040
	mov r0, #64
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r1, =1040
	add sp, sp, r1
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L169:
	ldr r0, =0
	ldr r0, =1
	b .L166
.L170:
	ldr r1, [fp, #-16]
	ldr r0, =1
	mov r4, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L171
	b .L175
.L171:
	ldr r2, [fp, #-4]
	sub r1, r5, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r3, [fp, #-12]
	sub r2, r4, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	beq .L176
	b .L185
.L172:
	add r1, r5, #1
	ldr r0, [fp, #-8]
	mov r5, r1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L165
	b .L205
.L175:
	ldr r0, =1
	b .L172
.L176:
	sub r1, r5, #1
	ldr r2, =-1040
	mov r0, #64
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	sub r1, r4, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add r0, r0, #1
	ldr r3, =-1040
	mov r1, #64
	mul r2, r5, r1
	add r1, fp, r3
	add r2, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	str r0, [r1]
	b .L178
.L177:
	sub r1, r5, #1
	ldr r2, =-1040
	mov r0, #64
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	ldr r3, =-1040
	mov r1, #64
	mul r2, r5, r1
	add r1, fp, r3
	add r3, r1, r2
	sub r2, r4, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	bl MAX
	ldr r3, =-1040
	mov r1, #64
	mul r2, r5, r1
	add r1, fp, r3
	add r2, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	str r0, [r1]
	b .L178
.L178:
	add r1, r4, #1
	ldr r0, [fp, #-16]
	mov r4, r1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L171
	b .L199
.L185:
	b .L177
.L199:
	b .L172
.L205:
	b .L166

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L208:
	mov r1, #0
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	ldr r0, =8
	str r0, [r4]
	add r1, r4, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	mov r1, #0
	mov r2, #-112
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r5, r0, r1
	ldr r0, =3
	str r0, [r5]
	add r1, r5, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	mov r0, r4
	mov r1, #15
	bl max_sum_nonadjacent
	bl putint
	mov r0, #10
	bl putch
	mov r0, r4
	mov r1, #15
	mov r2, r5
	mov r3, #13
	bl longest_common_subseq
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
