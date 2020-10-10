#!/bin/bash -x
read -p "enter number :" number
f=0

for (( i=2; i<$number/2; i++ ))
do
	if test `expr $number % $i` -eq 0
then
f=1
fi

i=`expr $i +1`
done
if test $f -eq 1
then
echo "Not Prime"
else
echo "prime"
fi
