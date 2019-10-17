#!/bin/bash
OUT1="`./prob1_from_asm`"
OUT2="`./prob1_from_c`"
if [ "$OUT1" = "$OUT2" ] ; then
	echo "Problem 1 good!"
else
	echo "Something in Problem 1 is wrong..."
fi
OUT1="`./prob2_from_asm`"
OUT2="`./prob2_from_c`"
if [ "$OUT1" = "$OUT2" ] ; then
	echo "Problem 2 good!"
else
	echo "Something in Problem 2 is wrong..."
fi
