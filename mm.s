	.text
	.file	"mm.c"
	.globl	tmul_vec                        // -- Begin function tmul_vec
	.p2align	2
	.type	tmul_vec,@function
tmul_vec:                               // @tmul_vec
	.cfi_startproc
// %bb.0:                               // %.preheader.preheader
	str	x29, [sp, #-16]!                // 8-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w29, -16
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1104
                                        // kill: def $w3 killed $w3 def $x3
	add	x9, x2, w3, sxtw #2
	add	x10, x2, w3, sxtw #3
	ldp	q0, q1, [x2]
	mov	w11, #12
                                        // kill: def $w5 killed $w5 def $x5
                                        // kill: def $w1 killed $w1 def $x1
	mov	x8, xzr
	add	x12, sp, #64
	ldp	q2, q3, [x2, #32]
	stp	q0, q1, [sp, #64]
	ldp	q4, q5, [x9]
	stp	q2, q3, [sp, #96]
	ldp	q6, q7, [x9, #32]
	nop
	smaddl	x9, w3, w11, x2
	stp	q4, q5, [sp, #128]
	sxtw	x11, w3
	ldp	q16, q17, [x10]
	stp	q6, q7, [sp, #160]
	ldp	q18, q19, [x10, #32]
	add	x10, x2, w3, sxtw #4
	stp	q16, q17, [sp, #192]
	ldp	q2, q3, [x9]
	stp	q18, q19, [sp, #224]
	ldp	q0, q1, [x9, #32]
	mov	w9, #20
	stp	q2, q3, [sp, #256]
	nop
	smaddl	x9, w3, w9, x2
	ldp	q4, q5, [x10]
	stp	q0, q1, [sp, #288]
	ldp	q6, q7, [x10, #32]
	mov	w10, #24
	stp	q4, q5, [sp, #320]
	nop
	smaddl	x10, w3, w10, x2
	ldp	q16, q17, [x9]
	stp	q6, q7, [sp, #352]
	ldp	q18, q0, [x9, #32]
	mov	w9, #28
	stp	q16, q17, [sp, #384]
	nop
	smaddl	x9, w3, w9, x2
	ldp	q3, q4, [x10, #32]
	stp	q18, q0, [sp, #416]
	ldp	q1, q2, [x10]
	add	x10, x2, x11, lsl #5
	mov	w11, #36
	stp	q3, q4, [sp, #480]
	ldp	q5, q0, [x9]
	stp	q1, q2, [sp, #448]
	ldp	q3, q4, [x10, #32]
	stp	q5, q0, [sp, #512]
	ldp	q6, q7, [x9, #32]
	nop
	smaddl	x9, w3, w11, x2
	mov	w11, #44
	stp	q3, q4, [sp, #608]
	ldp	q16, q17, [x10]
	mov	w10, #40
	stp	q6, q7, [sp, #544]
	nop
	smaddl	x10, w3, w10, x2
	ldp	q1, q2, [x9]
	stp	q16, q17, [sp, #576]
	ldp	q0, q3, [x9, #32]
	nop
	smaddl	x9, w3, w11, x2
	stp	q1, q2, [sp, #640]
	mov	w11, #52
	ldp	q5, q4, [x10]
	stp	q0, q3, [sp, #672]
	ldp	q7, q6, [x10, #32]
	mov	w10, #48
	stp	q5, q4, [sp, #704]
	nop
	smaddl	x10, w3, w10, x2
	ldp	q0, q2, [x9, #16]
	stp	q7, q6, [sp, #736]
	ldr	q1, [x9, #48]
	ldp	q4, q5, [x10, #32]
	stp	q2, q1, [sp, #800]
	ldr	q3, [x9]
	nop
	smaddl	x9, w3, w11, x2
	ldp	q1, q2, [x10]
	mov	w10, #56
	stp	q4, q5, [sp, #864]
	stp	q3, q0, [sp, #768]
	mov	w11, #60
	smaddl	x10, w3, w10, x2
	ldp	q4, q0, [x9, #16]
	stp	q1, q2, [sp, #832]
	ldr	q3, [x9]
	ldr	q1, [x9, #48]
	nop
	smaddl	x9, w3, w11, x2
	mov	x11, sp
	stp	q3, q4, [sp, #896]
	ldp	q3, q2, [x10, #32]
	stp	q0, q1, [sp, #928]
	ldp	q1, q0, [x10]
	stp	q3, q2, [sp, #992]
	sxtw	x10, w1
	ldp	q3, q2, [x9, #32]
	stp	q1, q0, [sp, #960]
	str	q3, [sp, #1056]
	ldp	q0, q1, [x9]
	sxtw	x9, w5
	str	q2, [sp, #1072]
	str	q0, [sp, #1024]
	str	q1, [sp, #1040]
.LBB0_1:                                // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_2 Depth 2
	mul	x13, x8, x9
	mov	x14, xzr
	mul	x15, x8, x10
	add	x13, x4, x13, lsl #2
	add	x15, x0, x15, lsl #2
	ldp	q1, q0, [x13, #32]
	ldp	q3, q2, [x13]
	ldp	q5, q4, [x15, #32]
	ldp	q7, q6, [x15]
.LBB0_2:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x16, x12, x14, lsl #6
	stp	q7, q6, [sp]
	and	x15, x14, #0xf
	stp	q5, q4, [sp, #32]
	add	x14, x14, #1
	ldp	q17, q18, [x16, #32]
	cmp	x14, #16
	ldp	q19, q20, [x16]
	ldr	s16, [x11, x15, lsl #2]
	fmla	v0.4s, v18.4s, v16.s[0]
	fmla	v1.4s, v17.4s, v16.s[0]
	fmla	v2.4s, v20.4s, v16.s[0]
	fmla	v3.4s, v19.4s, v16.s[0]
	b.ne	.LBB0_2
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	add	x8, x8, #1
	stp	q3, q2, [x13]
	cmp	x8, #16
	stp	q1, q0, [x13, #32]
	b.ne	.LBB0_1
// %bb.4:
	add	sp, sp, #1088
	.cfi_def_cfa_offset 16
	ldr	x29, [sp], #16                  // 8-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	tmul_vec, .Lfunc_end0-tmul_vec
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	w0, #4194304
	bl	malloc
	stur	x0, [x29, #-8]
	mov	w0, #4194304
	bl	malloc
	stur	x0, [x29, #-16]
	mov	w0, #4194304
	bl	malloc
	mov	x19, x0
	mov	x20, xzr
	mov	x21, xzr
	mov	x22, #4571153621781053440
	stur	x0, [x29, #-24]
.LBB1_1:                                // %.preheader29
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_2 Depth 2
	ldur	x8, [x29, #-8]
	mov	x23, xzr
	add	x24, x8, x20
.LBB1_2:                                //   Parent Loop BB1_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	bl	rand
	negs	w8, w0
	and	w9, w0, #0xff
	and	w8, w8, #0xff
	fmov	d1, x22
	csneg	w8, w9, w8, mi
	scvtf	d0, w8
	fmul	d0, d0, d1
	fcvt	s0, d0
	str	s0, [x24, x23]
	add	x23, x23, #4
	cmp	x23, #1, lsl #12                // =4096
	b.ne	.LBB1_2
// %bb.3:                               //   in Loop: Header=BB1_1 Depth=1
	add	x21, x21, #1
	add	x20, x20, #1, lsl #12           // =4096
	cmp	x21, #1024
	b.ne	.LBB1_1
// %bb.4:                               // %.preheader27.preheader
	mov	x20, xzr
	mov	x21, xzr
	mov	x22, #4571153621781053440
.LBB1_5:                                // %.preheader27
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_6 Depth 2
	ldur	x8, [x29, #-16]
	mov	x23, xzr
	add	x24, x8, x20
.LBB1_6:                                //   Parent Loop BB1_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	bl	rand
	negs	w8, w0
	and	w9, w0, #0xff
	and	w8, w8, #0xff
	fmov	d1, x22
	csneg	w8, w9, w8, mi
	scvtf	d0, w8
	fmul	d0, d0, d1
	fcvt	s0, d0
	str	s0, [x24, x23]
	add	x23, x23, #4
	cmp	x23, #1, lsl #12                // =4096
	b.ne	.LBB1_6
// %bb.7:                               //   in Loop: Header=BB1_5 Depth=1
	add	x21, x21, #1
	add	x20, x20, #1, lsl #12           // =4096
	cmp	x21, #1024
	b.ne	.LBB1_5
// %bb.8:                               // %.preheader26
	mov	x0, x19
	mov	w1, wzr
	mov	w2, #4194304
	bl	memset
	add	x0, sp, #24
	mov	x1, xzr
	bl	gettimeofday
	adrp	x0, .L__unnamed_1
	add	x0, x0, :lo12:.L__unnamed_1
	adrp	x2, .omp_outlined.
	add	x2, x2, :lo12:.omp_outlined.
	sub	x3, x29, #8
	sub	x4, x29, #16
	sub	x5, x29, #24
	mov	w1, #3
	bl	__kmpc_fork_call
	add	x0, sp, #8
	mov	x1, xzr
	bl	gettimeofday
	ldp	x8, x9, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	ldp	x10, x11, [sp, #24]
	sub	x8, x8, x10
	mov	w10, #16960
	movk	w10, #15, lsl #16
	sub	x9, x9, x11
	madd	x1, x8, x10, x9
	bl	printf
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
	mov	w0, wzr
	.cfi_def_cfa wsp, 128
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function .omp_outlined.
	.type	.omp_outlined.,@function
.omp_outlined.:                         // @.omp_outlined.
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x28, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w28, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	sub	sp, sp, #1120
	ldr	w22, [x0]
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	mov	w23, #63
	mov	w8, #1
	adrp	x0, .L__unnamed_2
	add	x0, x0, :lo12:.L__unnamed_2
	add	x3, sp, #80
	add	x4, sp, #92
	add	x5, sp, #88
	add	x6, sp, #84
	mov	w1, w22
	mov	w2, #34
	mov	w7, #1
	stp	w23, wzr, [sp, #88]
	stp	wzr, w8, [sp, #80]
	str	w8, [sp]
	bl	__kmpc_for_static_init_4
	ldp	w9, w8, [sp, #88]
	cmp	w9, #63
	csel	w9, w9, w23, lt
	cmp	w8, w9
	str	w9, [sp, #88]
	b.gt	.LBB2_11
// %bb.1:                               // %.preheader18.lr.ph
	add	w9, w9, #1
	add	x10, sp, #16
	add	x11, sp, #96
.LBB2_2:                                // %.preheader18
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB2_3 Depth 2
                                        //       Child Loop BB2_4 Depth 3
                                        //         Child Loop BB2_5 Depth 4
                                        //           Child Loop BB2_6 Depth 5
	lsl	w13, w8, #14
	mov	x12, xzr
	sxtw	x13, w13
.LBB2_3:                                // %.preheader
                                        //   Parent Loop BB2_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB2_4 Depth 3
                                        //         Child Loop BB2_5 Depth 4
                                        //           Child Loop BB2_6 Depth 5
	mov	x14, xzr
.LBB2_4:                                //   Parent Loop BB2_2 Depth=1
                                        //     Parent Loop BB2_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB2_5 Depth 4
                                        //           Child Loop BB2_6 Depth 5
	ldr	x16, [x20]
	lsl	x1, x12, #2
	ldr	x0, [x19]
	lsl	x2, x13, #2
	mov	x15, xzr
	add	x16, x16, x1
	add	x1, x2, x1
	add	x17, x16, x14, lsl #12
	ldr	x16, [x21]
	ldp	q0, q1, [x17, #32]
	add	x16, x16, x2
	add	x16, x16, x14, lsl #2
	ldp	q2, q3, [x17]
	stp	q0, q1, [sp, #128]
	ldr	q1, [x17, #4144]
	stp	q2, q3, [sp, #96]
	ldr	q0, [x17, #4128]
	ldr	q3, [x17, #4112]
	ldr	q2, [x17, #4096]
	stp	q0, q1, [sp, #192]
	ldr	q0, [x17, #8240]
	ldr	q1, [x17, #8224]
	stp	q2, q3, [sp, #160]
	ldr	q2, [x17, #8208]
	ldr	q3, [x17, #8192]
	stp	q1, q0, [sp, #256]
	ldr	q0, [x17, #12336]
	ldr	q1, [x17, #12320]
	stp	q3, q2, [sp, #224]
	ldr	q2, [x17, #12304]
	ldr	q3, [x17, #12288]
	stp	q1, q0, [sp, #320]
	ldr	q0, [x17, #16432]
	ldr	q1, [x17, #16416]
	stp	q3, q2, [sp, #288]
	ldr	q2, [x17, #16400]
	ldr	q3, [x17, #16384]
	stp	q1, q0, [sp, #384]
	ldr	q0, [x17, #20528]
	ldr	q1, [x17, #20512]
	stp	q3, q2, [sp, #352]
	ldr	q2, [x17, #20496]
	ldr	q3, [x17, #20480]
	stp	q1, q0, [sp, #448]
	ldr	q0, [x17, #24624]
	ldr	q1, [x17, #24608]
	stp	q3, q2, [sp, #416]
	ldr	q2, [x17, #24592]
	ldr	q3, [x17, #24576]
	stp	q1, q0, [sp, #512]
	ldr	q0, [x17, #28720]
	ldr	q1, [x17, #28704]
	stp	q3, q2, [sp, #480]
	ldr	q2, [x17, #28688]
	ldr	q3, [x17, #28672]
	stp	q1, q0, [sp, #576]
	ldr	q0, [x17, #32816]
	ldr	q1, [x17, #32800]
	stp	q3, q2, [sp, #544]
	ldr	q2, [x17, #32784]
	ldr	q3, [x17, #32768]
	stp	q1, q0, [sp, #640]
	ldr	q0, [x17, #36912]
	ldr	q1, [x17, #36896]
	stp	q3, q2, [sp, #608]
	ldr	q2, [x17, #36880]
	ldr	q3, [x17, #36864]
	stp	q1, q0, [sp, #704]
	ldr	q0, [x17, #40992]
	ldr	q1, [x17, #41008]
	stp	q3, q2, [sp, #672]
	ldr	q2, [x17, #40960]
	ldr	q3, [x17, #40976]
	stp	q0, q1, [sp, #768]
	ldr	q0, [x17, #45088]
	ldr	q1, [x17, #45104]
	stp	q2, q3, [sp, #736]
	ldr	q2, [x17, #45056]
	ldr	q3, [x17, #45072]
	stp	q0, q1, [sp, #832]
	ldr	q0, [x17, #49200]
	ldr	q1, [x17, #49184]
	stp	q2, q3, [sp, #800]
	ldr	q2, [x17, #49168]
	ldr	q3, [x17, #49152]
	stp	q1, q0, [sp, #896]
	ldr	q0, [x17, #53264]
	ldr	q1, [x17, #53248]
	stp	q3, q2, [sp, #864]
	ldr	q2, [x17, #53296]
	ldr	q3, [x17, #53280]
	stp	q1, q0, [sp, #928]
	ldr	q0, [x17, #57392]
	ldr	q1, [x17, #57376]
	stp	q3, q2, [sp, #960]
	ldr	q2, [x17, #57360]
	ldr	q3, [x17, #57344]
	str	q0, [sp, #1040]
	ldr	q0, [x17, #61488]
	stp	q2, q1, [sp, #1008]
	ldr	q1, [x17, #61472]
	str	q3, [sp, #992]
	ldr	q2, [x17, #61456]
	ldr	q3, [x17, #61440]
	add	x17, x0, x1
	str	q0, [sp, #1104]
	str	q1, [sp, #1088]
	str	q2, [sp, #1072]
	str	q3, [sp, #1056]
.LBB2_5:                                // %.preheader.i
                                        //   Parent Loop BB2_2 Depth=1
                                        //     Parent Loop BB2_3 Depth=2
                                        //       Parent Loop BB2_4 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB2_6 Depth 5
	lsl	x2, x15, #12
	mov	x1, xzr
	add	x0, x17, x2
	add	x2, x16, x2
	ldp	q1, q0, [x0, #32]
	ldp	q3, q2, [x0]
	ldp	q5, q4, [x2, #32]
	ldp	q7, q6, [x2]
.LBB2_6:                                //   Parent Loop BB2_2 Depth=1
                                        //     Parent Loop BB2_3 Depth=2
                                        //       Parent Loop BB2_4 Depth=3
                                        //         Parent Loop BB2_5 Depth=4
                                        // =>        This Inner Loop Header: Depth=5
	add	x3, x11, x1, lsl #6
	stp	q7, q6, [sp, #16]
	and	x2, x1, #0xf
	stp	q5, q4, [sp, #48]
	add	x1, x1, #1
	ldp	q17, q18, [x3, #32]
	cmp	x1, #16
	ldp	q19, q20, [x3]
	ldr	s16, [x10, x2, lsl #2]
	fmla	v0.4s, v18.4s, v16.s[0]
	fmla	v1.4s, v17.4s, v16.s[0]
	fmla	v2.4s, v20.4s, v16.s[0]
	fmla	v3.4s, v19.4s, v16.s[0]
	b.ne	.LBB2_6
// %bb.7:                               //   in Loop: Header=BB2_5 Depth=4
	add	x15, x15, #1
	stp	q3, q2, [x0]
	cmp	x15, #16
	stp	q1, q0, [x0, #32]
	b.ne	.LBB2_5
// %bb.8:                               // %tmul_vec.exit
                                        //   in Loop: Header=BB2_4 Depth=3
	add	x15, x14, #16
	cmp	x14, #1008
	mov	x14, x15
	b.lo	.LBB2_4
// %bb.9:                               //   in Loop: Header=BB2_3 Depth=2
	add	x14, x12, #16
	cmp	x12, #1008
	mov	x12, x14
	b.lo	.LBB2_3
// %bb.10:                              //   in Loop: Header=BB2_2 Depth=1
	add	x8, x8, #1
	cmp	w9, w8
	b.ne	.LBB2_2
.LBB2_11:                               // %._crit_edge
	adrp	x0, .L__unnamed_2
	add	x0, x0, :lo12:.L__unnamed_2
	mov	w1, w22
	bl	__kmpc_for_static_fini
	add	sp, sp, #1120
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	.omp_outlined., .Lfunc_end2-.omp_outlined.
	.cfi_endproc
                                        // -- End function
	.type	.L__unnamed_3,@object           // @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_3:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_3, 23

	.type	.L__unnamed_2,@object           // @1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.word	0                               // 0x0
	.word	514                             // 0x202
	.word	0                               // 0x0
	.word	22                              // 0x16
	.xword	.L__unnamed_3
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object           // @2
	.p2align	3, 0x0
.L__unnamed_1:
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	22                              // 0x16
	.xword	.L__unnamed_3
	.size	.L__unnamed_1, 24

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FP32 SIMD: %ld us\n"
	.size	.L.str, 19

	.type	.Lstr,@object                   // @str
.Lstr:
	.asciz	"DONE!"
	.size	.Lstr, 6

	.ident	"Android (10552028, +pgo, +bolt, +lto, -mlgo, based on r487747d) clang version 17.0.2 (https://android.googlesource.com/toolchain/llvm-project d9f89f4d16663d5012e5c09495f3b30ece3d2362)"
	.section	".note.GNU-stack","",@progbits
