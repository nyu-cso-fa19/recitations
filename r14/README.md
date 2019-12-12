# Recitation Assignment 14

## Homework
### Due Tonight  

Don't forget to push your work to GitHub!

Tonight's assignment is a little different - below are a few questions
I would like you to answer. Please edit this README.md file directly in your
editor of choice. If that paragraph looks similar it's because I copied this
from r07. If it seems like there's a pattern here, clearly every 7th
recitation has questions to answer. In any case, this one will actually
be different from r07 - it will be multiple choice.

You will see questions below followed by choices. Each choice will begin with
a space inside square braces, like this: [ ]

You are to put an x inside the square brace of the answer you choose,
like this: [x]

For example:
```
0. What color is the sky?
[ ] Red
[ ] Green
[ ] Blue
[ ] Orange
```
You would put an x in the braces before Blue, making it
```
0. What color is the sky?
[ ] Red
[ ] Green
[x] Blue
[ ] Orange
```

Now please be careful with the formatting here, [ x] and [x ] will both not be graded correctly.
It should be [x]

On to the questions:

```
1. In a direct cache, each block in memory can be mapped to how many cache lines?
[ ] Any number
[ ] One
[ ] Two
[ ] Zero
```

```
2. In a memory address, when concerned with mapping to a cache line, where are the tag bits?
[ ] In the most signficant bits of the address
[ ] In the least significant bits of the address
[ ] In the middle of the address
[ ] None of the above
```

```
3. In a write-back scheme, what is the dirty bit for?
[ ] It makes sure we write back to memory when the cache line is evicted.
[ ] It tracks the number of writes to a memory location.
[ ] It tracks that a particular cache line was read.
[ ] It tells us we need to stall when we write to this cache line.
```

```
4. In an 2-way set associative cache of size 256 bytes where each block is 2 bytes, how many sets are there?
[ ] 8
[ ] 32
[ ] 64
[ ] 128
```

```
5. In a single level page table, what is used to index the table?
[ ] The entire memory address.
[ ] Some bits in the middle of the virtual address.
[ ] The right-most bits of the virtual address.
[ ] The left-most bits of the virtual address.
```

```
6. In a single level page table, what do the right-most bits of the virtual address tell us?
[ ] How many bits are stored in the page table.
[ ] Where in the page table we look to translate the address.
[ ] Which byte within a page the address refers to.
[ ] Whether or not the address is in the TLB.
```

```
7. In a four level page table, to translate an address, how many memory lookups must we make?
[ ] One
[ ] Two
[ ] Three
[ ] Four
```
