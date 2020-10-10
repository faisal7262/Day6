#!/bin/bash -x

echo "Input number"
read num
echo "Input power "
read power
ans=1;
	for(( i= 1; i<= $power; i++ ))\
	do
	ans=$(( $ans* $num ))
	done
echo "$num to the power of $power is $ans"

