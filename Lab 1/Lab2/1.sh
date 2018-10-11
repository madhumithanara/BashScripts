#!/bin/sh
a=$1
b=$2
c=0

if [ "$a" -le "$c" -o "$b" -le "$c" ];
then
	echo "Invalid input."
	exit 0
fi

if [ "$b" -le "$a" ];then
	ans=$(echo "scale=5; $a / $b"|bc)
else
	ans=$(echo "scale=5; $b / $a"|bc)
fi

echo $ans
