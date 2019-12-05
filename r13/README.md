# Recitation Assignment 13

## Homework
### Due Tonight  

Your homework is in the `for-homework` directory.  

There are three files, `prob1.s`, `prob2.s`, and `prob3.s`.

In each of them, there are a number of RISC-V assembly instructions.

You are to correct each of the files to meet two conditions:  
1. The new program does exactly the same thing as the old program.
That is, the values in memory and in the registers after your modified
program runs would be the same as after the unmodified program runs.  
2. For `prob2.s` you should remove the load-use hazard, and for the other
two you should fix the data-hazards.  

Note that you should try to re-arrange the instructions if
you can to remove the hazards. If you cannot re-arrange
the instructions then you may add `nop`s to do so.

This is all assuming the five stage pipeline presented in lecture.

You can run `make` to look for hazards. Note, however, that
this does NOT ensure that you did not change what the program
does. It only checks for hazards and reports any that it finds.
