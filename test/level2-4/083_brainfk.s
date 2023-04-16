	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global ptr
	.align 4
	.size ptr, 4
ptr:
	.word 0
	.section .rodata
	.global TAPE_LEN
	.align 4
	.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
	.global BUFFER_LEN
	.align 4
	.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768
	.comm tape, 262144, 4
	.comm program, 131072, 4
	.text
	.global read_program
	.type read_program , %function
read_program:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L94:
	bl getint
	mov r4, r0
	b .L97
.L97:
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r1, r4
	movlt r1, #1
	movge r1, #0
	blt .L98
	b .L102
.L98:
	bl getch
	mov r1, r0
	ldr r3, addr_program0
	mov r2, #4
	mla r2, r5, r2, r3
	str r1, [r2]
	add r2, r5, #1
	cmp r2, r4
	movlt r1, #1
	movge r1, #0
	blt .L292
	b .L108
.L99:
	ldr r3, addr_program0
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r1, =0
	str r1, [r2]
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L102:
	ldr r1, =0
	b .L99
.L108:
	mov r1, r2
	b .L99
.L292:
	mov r5, r2
	b .L98

	.global interpret
	.type interpret , %function
interpret:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L109:
	str r0, [fp, #-4]
	b .L114
.L114:
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r2, #0
	movne r1, #1
	moveq r1, #0
	bne .L115
	b .L120
.L115:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r4, r1, r2
	ldr r1, [r1]
	cmp r1, #62
	moveq r2, #1
	movne r2, #0
	beq .L124
	b .L129
.L116:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L120:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L116
.L124:
	ldr r1, addr_ptr0
	ldr r1, [r1]
	add r2, r1, #1
	ldr r1, addr_ptr0
	str r2, [r1]
	mov r3, r4
	mov r2, r5
	b .L126
.L125:
	cmp r1, #60
	moveq r2, #1
	movne r2, #0
	beq .L130
	b .L135
.L126:
	add r1, r3, #1
	ldr r4, [fp, #-4]
	mov r3, #4
	mla r3, r1, r3, r4
	ldr r3, [r3]
	mov r4, r1
	mov r5, r2
	cmp r3, #0
	movne r1, #1
	moveq r1, #0
	bne .L115
	b .L203
.L129:
	b .L125
.L130:
	ldr r1, addr_ptr0
	ldr r1, [r1]
	sub r2, r1, #1
	ldr r1, addr_ptr0
	str r2, [r1]
	mov r2, r4
	mov r1, r5
	b .L132
.L131:
	cmp r1, #43
	moveq r2, #1
	movne r2, #0
	beq .L136
	b .L141
.L132:
	mov r3, r2
	mov r2, r1
	b .L126
.L135:
	b .L131
.L136:
	ldr r1, addr_ptr0
	ldr r3, [r1]
	ldr r2, addr_tape0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	add r1, r1, #1
	ldr r2, addr_ptr0
	ldr r6, [r2]
	ldr r3, addr_tape0
	mov r2, #4
	mla r2, r6, r2, r3
	str r1, [r2]
	mov r2, r4
	mov r1, r5
	b .L138
.L137:
	cmp r1, #45
	moveq r2, #1
	movne r2, #0
	beq .L143
	b .L148
.L138:
	b .L132
.L141:
	b .L137
.L143:
	ldr r1, addr_ptr0
	ldr r3, [r1]
	ldr r2, addr_tape0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	sub r1, r1, #1
	ldr r2, addr_ptr0
	ldr r6, [r2]
	ldr r3, addr_tape0
	mov r2, #4
	mla r2, r6, r2, r3
	str r1, [r2]
	mov r2, r4
	mov r1, r5
	b .L145
.L144:
	cmp r1, #46
	moveq r2, #1
	movne r2, #0
	beq .L150
	b .L155
.L145:
	b .L138
.L148:
	b .L144
.L150:
	ldr r0, addr_ptr0
	ldr r2, [r0]
	ldr r1, addr_tape0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putch
	mov r2, r4
	mov r1, r5
	b .L152
.L151:
	cmp r1, #44
	moveq r2, #1
	movne r2, #0
	beq .L157
	b .L162
.L152:
	b .L145
.L155:
	b .L151
.L157:
	bl getch
	mov r1, r0
	ldr r2, addr_ptr0
	ldr r6, [r2]
	ldr r3, addr_tape0
	mov r2, #4
	mla r2, r6, r2, r3
	str r1, [r2]
	mov r2, r4
	mov r1, r5
	b .L159
.L158:
	cmp r1, #93
	moveq r1, #1
	movne r1, #0
	beq .L165
	b .L168
.L159:
	b .L152
.L162:
	b .L158
.L163:
	b .L173
.L164:
	b .L159
.L165:
	ldr r1, addr_ptr0
	ldr r3, [r1]
	ldr r2, addr_tape0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L163
	b .L171
	b .F0
.LTORG
addr_TAPE_LEN0:
	.word TAPE_LEN
addr_BUFFER_LEN0:
	.word BUFFER_LEN
addr_tape0:
	.word tape
addr_program0:
	.word program
addr_ptr0:
	.word ptr
.F0:
.L168:
	mov r2, r4
	mov r1, r5
	b .L164
.L171:
	mov r2, r4
	mov r1, r5
	b .L164
.L173:
	mov r3, r4
	ldr r1, =1
	mov r2, r1
	ldr r1, =1
	cmp r1, #0
	movgt r1, #1
	movle r1, #0
	bgt .L174
	b .L178
.L174:
	sub r1, r3, #1
	ldr r4, [fp, #-4]
	mov r3, #4
	mla r3, r1, r3, r4
	ldr r4, [r3]
	cmp r4, #91
	moveq r3, #1
	movne r3, #0
	beq .L181
	b .L186
.L175:
	b .L164
.L178:
	mov r2, r4
	ldr r1, =1
	b .L175
.L181:
	sub r2, r2, #1
	mov r5, r2
	b .L183
.L182:
	cmp r4, #93
	moveq r3, #1
	movne r3, #0
	beq .L187
	b .L191
.L183:
	mov r3, r1
	mov r2, r5
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	bgt .L174
	b .L196
.L186:
	b .L182
.L187:
	add r2, r2, #1
	b .L188
.L188:
	mov r5, r2
	b .L183
.L191:
	b .L188
.L196:
	mov r2, r1
	mov r1, r5
	b .L175
.L203:
	b .L116

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L205:
	bl read_program
	mov r2, #0
	ldr r1, addr_program1
	mov r0, #4
	mla r0, r2, r0, r1
	bl interpret
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

addr_TAPE_LEN1:
	.word TAPE_LEN
addr_BUFFER_LEN1:
	.word BUFFER_LEN
addr_tape1:
	.word tape
addr_program1:
	.word program
addr_ptr1:
	.word ptr
	.ident "ZWJM"
