#!/bin/bash

function is {
	head -n 1 | tail -n 1 | grep "^$1$" > /dev/null
}

if ! make >/dev/null ; then
	echo "[BAD] Your code doesn't seem to compile - fix it!"
	exit
fi
if ! [ -e ./prob1 ] ; then
	echo "[BAD] Somehow prob1 doesn't exist after running make - this is a problem!"
	exit
fi
fails=0
string=iiiiiiiiiiiiiiiiiiiiiiiiiiiiii
teststr="./prob1 $string"
if ! eval "$teststr" | is 30 ; then
	echo "Got wrong answer when I ran"
	echo $teststr
	((fails+=1))
fi
teststr="./prob1 $string $string $string $string"
if ! eval "$teststr" | is 120 ; then
	echo "Got wrong answer when I ran"
	echo $teststr
	((fails+=1))
fi
teststr="./prob1 'i i'"
if ! eval "$teststr" | is 3 ; then
	echo "Got wrong answer when I ran"
	echo $teststr
	((fails+=1))
fi
teststr="./prob1 'i i' 'i i' 'i i'"
if ! eval "$teststr" | is 9 ; then
	echo "Got wrong answer when I ran"
	echo $teststr
	((fails+=1))
fi
if [ 0 -eq $fails ] ; then 
	echo '[GOOD] Everything passed, great!'
else
	echo "[BAD] You had $fails test(s) fail - fix it!"
fi
