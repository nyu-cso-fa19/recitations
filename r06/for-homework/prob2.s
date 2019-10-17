	.file	"prob2.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
//Figure out what this function does
.LFB23:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
	movl	$1, %ecx
	jmp	.L2
.L3:
	leal	(%rcx,%rax), %esi
	addl	$1, %edx
	movl	%ecx, %eax
	movl	%esi, %ecx
.L2:
	cmpl	%edi, %edx
	jl	.L3
	ret
	.cfi_endproc
//It ends here, no need to look further
.LFE23:
	.size	mystery, .-mystery
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$10, %edi
	call	mystery
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
