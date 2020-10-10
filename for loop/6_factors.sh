#!/bin/bash -x
read -p "enter number :" n
while [ $n%2 == 0 ]
do 
	echo 2 " ";
	$n=$n/2;
done
a=$(bc <<< "scale=0; sqrt($n)")
echo $a
for (( i=3; i<=$a; i=i+2 ))
do
	while [ $n%$i == 0 ]
	do
		echo $i
		$n=$n/$i
	done
done
	if [[ $n -gt 2 ]]
	then
		echo $n
	fi
