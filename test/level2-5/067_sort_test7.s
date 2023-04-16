	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm buf, 800, 4
	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L95:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	add r1, r1, #1
	ldr r2, [fp, #-8]
	cmp r1, r2
	movge r1, #1
	movlt r1, #0
	bge .L98
	b .L102
.L98:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L99:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, =2
	sdiv r4, r1, r0
	ldr r0, [fp, #-4]
	mov r1, r4
	bl merge_sort
	ldr r1, [fp, #-8]
	mov r0, r4
	bl merge_sort
	ldr r7, [fp, #-4]
	ldr r6, [fp, #-4]
	b .L107
.L102:
	b .L99
.L107:
	mov r5, r6
	mov r3, r4
	mov r2, r7
	cmp r7, r4
	movlt r1, #1
	movge r1, #0
	blt .L140
	b .L113
.L108:
	mov r7, #0
	ldr r6, addr_buf0
	ldr r1, =400
	mla r6, r7, r1, r6
	mov r1, #4
	mla r1, r2, r1, r6
	ldr r1, [r1]
	mov r7, #4
	mla r6, r3, r7, r6
	ldr r6, [r6]
	cmp r1, r6
	movlt r1, #1
	movge r1, #0
	blt .L117
	b .L126
.L109:
	b .L147
.L113:
	mov r1, r6
	mov r5, r4
	mov r6, r7
	b .L109
.L117:
	mov r7, #0
	ldr r6, addr_buf0
	ldr r1, =400
	mla r6, r7, r1, r6
	mov r1, #4
	mla r1, r2, r1, r6
	ldr r1, [r1]
	mov r8, #1
	ldr r7, addr_buf0
	ldr r6, =400
	mla r7, r8, r6, r7
	mov r6, #4
	mla r6, r5, r6, r7
	str r1, [r6]
	add r1, r2, #1
	mov r8, r3
	mov r7, r1
	b .L119
.L118:
	mov r7, #0
	ldr r6, addr_buf0
	ldr r1, =400
	mla r6, r7, r1, r6
	mov r1, #4
	mla r1, r3, r1, r6
	ldr r1, [r1]
	mov r8, #1
	ldr r7, addr_buf0
	ldr r6, =400
	mla r7, r8, r6, r7
	mov r6, #4
	mla r6, r5, r6, r7
	str r1, [r6]
	add r1, r3, #1
	mov r8, r1
	mov r7, r2
	b .L119
.L119:
	add r6, r5, #1
	mov r5, r6
	mov r3, r8
	mov r2, r7
	cmp r7, r4
	movlt r1, #1
	movge r1, #0
	blt .L140
	b .L143
.L126:
	b .L118
.L140:
	ldr r1, [fp, #-8]
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L108
	b .L146
.L143:
	mov r1, r6
	mov r5, r8
	mov r6, r7
	b .L109
.L146:
	mov r1, r5
	mov r5, r3
	mov r6, r2
	b .L109
.L147:
	mov r3, r1
	mov r2, r6
	cmp r6, r4
	movlt r6, #1
	movge r6, #0
	blt .L148
	b .L152
.L148:
	mov r7, #0
	ldr r6, addr_buf0
	ldr r1, =400
	mla r6, r7, r1, r6
	mov r1, #4
	mla r1, r2, r1, r6
	ldr r1, [r1]
	mov r8, #1
	ldr r7, addr_buf0
	ldr r6, =400
	mla r7, r8, r6, r7
	mov r6, #4
	mla r6, r3, r6, r7
	str r1, [r6]
	add r6, r2, #1
	add r2, r3, #1
	cmp r6, r4
	movlt r1, #1
	movge r1, #0
	blt .L252
	b .L161
.L149:
	b .L162
.L152:
	mov r2, r1
	b .L149
.L161:
	b .L149
.L162:
	ldr r1, [fp, #-8]
	mov r3, r2
	mov r2, r5
	cmp r5, r1
	movlt r1, #1
	movge r1, #0
	blt .L163
	b .L167
.L163:
	mov r5, #0
	ldr r4, addr_buf0
	ldr r1, =400
	mla r4, r5, r1, r4
	mov r1, #4
	mla r1, r2, r1, r4
	ldr r1, [r1]
	mov r6, #1
	ldr r5, addr_buf0
	ldr r4, =400
	mla r5, r6, r4, r5
	mov r4, #4
	mla r4, r3, r4, r5
	str r1, [r4]
	add r4, r2, #1
	add r2, r3, #1
	ldr r1, [fp, #-8]
	cmp r4, r1
	movlt r1, #1
	movge r1, #0
	blt .L257
	b .L176
	b .F0
.LTORG
addr_buf0:
	.word buf
.F0:
.L164:
	b .L177
.L167:
	b .L164
.L176:
	b .L164
.L177:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L178
	b .L182
.L178:
	mov r3, #1
	ldr r2, addr_buf1
	ldr r1, =400
	mla r3, r3, r1, r2
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	mov r4, #0
	ldr r3, addr_buf1
	ldr r2, =400
	mla r4, r4, r2, r3
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r3, r2, r4
	str r1, [r2]
	ldr r1, [fp, #-4]
	add r1, r1, #1
	str r1, [fp, #-4]
	mov r2, r1
	ldr r1, [fp, #-8]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L178
	b .L191
.L179:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L182:
	b .L179
.L191:
	b .L179
.L252:
	mov r3, r2
	mov r2, r6
	b .L148
.L257:
	mov r3, r2
	mov r2, r4
	b .L163

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L192:
	mov r2, #0
	ldr r1, addr_buf1
	ldr r0, =400
	mla r2, r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r5, r1, r0, r2
	mov r0, r5
	bl getarray
	mov r4, r0
	mov r0, #0
	mov r1, r4
	bl merge_sort
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_buf1:
	.word buf
	.ident "ZWJM"
