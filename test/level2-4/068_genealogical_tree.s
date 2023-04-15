	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm map, 400, 4
	.comm indegree, 40, 4
	.comm queue, 40, 4
	.text
	.global topo
	.type topo , %function
topo:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L88:
	str r0, [fp, #-4]
	ldr r1, =0
	str r1, [fp, #-8]
	ldr r1, =0
	str r1, [fp, #-12]
	ldr r1, =1
	str r1, [fp, #-16]
	ldr r1, =1
	str r1, [fp, #-20]
	b .L94
.L94:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L95
	b .L99
.L95:
	ldr r1, =1
	str r1, [fp, #-20]
	b .L100
.L96:
	ldr r1, =0
	str r1, [fp, #-16]
	b .L145
.L99:
	b .L96
.L100:
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L101
	b .L105
.L101:
	ldr r3, [fp, #-20]
	ldr r2, addr_indegree0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	beq .L106
	b .L111
.L102:
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-12]
	ldr r2, addr_queue0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	ldr r1, [fp, #-12]
	add r1, r1, #1
	str r1, [fp, #-12]
	ldr r1, =0
	sub r4, r1, #1
	ldr r3, [fp, #-8]
	ldr r2, addr_indegree0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	ldr r1, =1
	str r1, [fp, #-20]
	b .L119
.L105:
	b .L102
.L106:
	ldr r1, [fp, #-20]
	str r1, [fp, #-8]
	b .L102
.L107:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	mov r2, r1
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L101
	b .L118
.L111:
	b .L107
.L118:
	b .L102
.L119:
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L120
	b .L124
.L120:
	ldr r3, [fp, #-8]
	ldr r2, addr_map0
	mov r1, #40
	mla r3, r3, r1, r2
	ldr r2, [fp, #-20]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L125
	b .L130
.L121:
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	mov r2, r1
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L95
	b .L144
.L124:
	b .L121
.L125:
	ldr r3, [fp, #-20]
	ldr r2, addr_indegree0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r1, [r1]
	sub r4, r1, #1
	ldr r3, [fp, #-20]
	ldr r2, addr_indegree0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	b .L126
.L126:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	mov r2, r1
	ldr r1, [fp, #-4]
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L120
	b .L138
.L130:
	b .L126
.L138:
	b .L121
.L144:
	b .L96
.L145:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-4]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L146
	b .L150
.L146:
	ldr r2, [fp, #-16]
	ldr r1, addr_queue0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	mov r2, r1
	ldr r1, [fp, #-4]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L146
	b .L157
.L147:
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L150:
	b .L147
.L157:
	b .L147
	b .F0
.LTORG
addr_map0:
	.word map
addr_indegree0:
	.word indegree
addr_queue0:
	.word queue
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L158:
	ldr r0, =1
	str r0, [fp, #-12]
	ldr r0, =5
	str r0, [fp, #-4]
	b .L162
.L162:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L163
	b .L167
.L163:
	bl getint
	str r0, [fp, #-8]
	b .L168
.L164:
	ldr r0, [fp, #-4]
	bl topo
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L167:
	b .L164
.L168:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L169
	b .L173
.L169:
	ldr r2, [fp, #-12]
	ldr r1, addr_map1
	mov r0, #40
	mla r2, r2, r0, r1
	ldr r1, [fp, #-8]
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	ldr r2, [fp, #-8]
	ldr r1, addr_indegree1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add r3, r0, #1
	ldr r2, [fp, #-8]
	ldr r1, addr_indegree1
	mov r0, #4
	mla r0, r2, r0, r1
	str r3, [r0]
	bl getint
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L169
	b .L180
.L170:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L163
	b .L186
.L173:
	b .L170
.L180:
	b .L170
.L186:
	b .L164

addr_map1:
	.word map
addr_indegree1:
	.word indegree
addr_queue1:
	.word queue
	.ident "ZWJM"
