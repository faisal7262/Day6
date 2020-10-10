#!/bin/bash -x
 
echo "enter number"
read nums
function prime
{
for((i=2; i<=nums/2; i++))
do
  if [ $((nums%i)) -eq 0 ]
  then
    echo "$nums is not a prime number."
    exit
  fi
done
echo "$nums is a prime number."
}
r=`prime $number`
echo "$r"


echo "enter number for plindrome"
read num
function palindrome
{
s=0
rev=""

temp=$num
while [ $num -gt 0 ]
do

    s=$(( $num % 10 ))
    num=$(( $num / 10 ))

    rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ];
then
    ab="Number is palindrome"
else
    ab="Number is NOT palindrome"
fi
}

rb=`palindrome $sb`
echo "$rb"
