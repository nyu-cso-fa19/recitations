# Recitation Assignment 02  

Your assignment this week is in two parts. Please complete them both by tonight.

## Part 1  
### Makefiles  

In this part you will write a makefile for the simple program inside the `part1` directory. This makefile should
create the executable `test` when the command `make` is issued, and should clean up the directory when `make clean`
is issued.

## Part 2  
### Unit tests  

In this part you will write a test to verify that programs correctly solve the following problem:

#### The Problem  
The problem is counting the number of 1s in a 32 bit integer's binary representation. Solutions will have this signature:

```
int count_ones(int n);
```

You should complete the code in `part2/test.c` to verify whether or not different solutions to this problem work correctly.
