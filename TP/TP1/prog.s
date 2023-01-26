	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, #0
	str	wzr, [sp, #12]
	adrp	x9, _NN@PAGE
	mov	w8, #333
	str	w8, [x9, _NN@PAGEOFF]
	ldr	w8, [x9, _NN@PAGEOFF]
	add	w8, w8, #5
	str	w8, [x9, _NN@PAGEOFF]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_NN                             ; @NN
	.p2align	2
_NN:
	.long	65535                           ; 0xffff

	.globl	_CC                             ; @CC
_CC:
	.asciz	"charlot"

.subsections_via_symbols
