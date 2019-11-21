# Recitation Assignment 10

## Homework
### Due Tonight  

Your homework is in the `for-homework` directory.  

You are to only change
the `sol1.txt` file. You will be writing the truth table for 
a finite state machine.

Let's take a look at what is in `sol1.txt` already:

```
s0 s1 i0 |  S0  S1  o0  
0  0  0  |  0   0   1  
0  0  1  |  
0  1  0  |  
0  1  1  |
1  0  0  |  
1  0  1  |  
1  1  0  |  
1  1  1  |  
```

There are three inputs, s0, s1, and i0. s0 and s1 define
the current state, while i0 is the input to the state
machine.

There are three outputs, S0, S1, and o0.
S0 and S1 are the next state while o0 is the output
for the state machine.

The first line is the header for the columns. Each header is the
name of the variable for that column. Then, within each column is
the value for that variable.

A `0` represents `false` while a `1` represents `true`.

Within each line, there is a verticle line, `|`, separating the
values of the variables from the value of the expression.


Your task is to fill out the rest of the file adding 0s and 1s
for the corresponding output of the circuit for each input
combination.

The FSM must output a 1 whenever the number of times in a row
i0 was 1 is divisible by four, 0 otherwise.

We start in state s0=0 s1=0. If i0 is 0, then we output a 1
and stay in that state, because i0 has been 1 zero times in
a row, and zero is divisible by four. If i0 is 1, then
we move to state s0=0 s1=1 but still output a 0. If i0 is 1
again then we move to s0=1 s1=0 and still output a zero, and
so on.

Any time we see a 0, we return to s0=0 s1=0 and output a 1.
Any time we see a 1, it depends on what state we are in.
If we are in s0=1 s1=1, then we return to s0=0 s1=0 and output
a 1, otherwise we go to another state and output a 0.

You should use the state to store how many times in
a row i0 was 1.

To check if your FSM is OK, you may run `make`, and
it will tell you.
