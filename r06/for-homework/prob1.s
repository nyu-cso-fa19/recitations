	.file	"prob1.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
.LFB23:
	.cfi_startproc
//TODO: Write assembly code that does the same as the
//mystery function in prob1.c

//Arguments are in %edi and %esi
//Can you write this code to multiply the two arguments
//WITHOUT using multiply instructions? That is, only
//using add, cmp, and jumps?
//Return value should be placed in %eax
	ret
//Your code ends here, no need to look further
	.cfi_endproc
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
	movl	$6, %esi
	movl	$5, %edi
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
