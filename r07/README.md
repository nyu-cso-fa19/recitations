# Recitation Assignment 07

## Homework
### Due Tonight  

Don't forget to push your work to GitHub!

Tonight's assignment is a little different - below are a few questions
I would like you to answer. Please edit this README.md file directly in your
editor of choice.


1. Consider the following scenario:  
%rsp is 0x7fffffffe448  
The following instructions execute:  
```
pushq %rbp
pushq %rax
```
What is the new value for %rsp? [REPLACE THIS]   

2. Consider the following scenario:  
%rsp is 0x7fffffffe448  
The following instructions execute:  
```
callq my_cool_function
```
While `my_cool_function` is executing, 
what is the value for %rsp? [REPLACE THIS]  

When `my_cool_function` executes `retq`,
what will be the value for %rsp? [REPLACE THIS]  

3. Consider the following scenario:  
%rsi is 5  
%rdi is 8  

Memory looks like this:  
0x00:  10  
0x08:  24  
0x10:  32  
0x18:  59  
0x20:  23  
0x28:  1  
0x30:  66  
0x38:  10000000  
0x40:  2607  
0x48:  2019  
0x50:  111  
0x58:  17  
0x60:  32  
The following instructions execute:  
```
leaq 40(%rdi, %rsi, 8), %rax
```
What is the value of %rax? [REPLACE THIS]  

4. Consider the following scenario:  
%rsi is 5  
%rdi is 8  

Memory looks like this:  
0x00:  10  
0x08:  24  
0x10:  32  
0x18:  59  
0x20:  23  
0x28:  1  
0x30:  66  
0x38:  10000000  
0x40:  2607  
0x48:  2019  
0x50:  111  
0x58:  17  
0x60:  32  
The following instructions execute:  
```
movq 40(%rdi, %rsi, 8), %rax
```
What is the value of %rax? [REPLACE THIS]  
