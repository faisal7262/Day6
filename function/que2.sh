#!/bin/bash -x
function mypalin(){
ori=$1
b1=$1
reverse=0

while [ $b1 -gt 0 ]
do
	a1=$(( $b1 % 10 ));
	b1=$(( $b1 / 10 ));
	reverse=$(( $reverse * 10 + $a1 ))
done

if [ $ori -eq $reverse ]
then
	echo "$ori is a plindrome"
else
	echo "$ori is a Not Palindrome"
fi
}

value1=$( mypalin "444" );
value2=$( mypalin "123" );
echo "$value1"
echo "$value2"
