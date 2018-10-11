#!/bin/bash

echo "1"

for i in `seq 100 999`
do
	j=`expr $i`
	a=`expr $j % 10`
	j=`expr $i / 10`
	b=`expr $j % 10`
	c=`expr $j / 10`

	a3=$(echo "scale=0; $a*$a*$a"|bc)
	b3=$(echo "scale=0; $b*$b*$b"|bc)
	c3=$(echo "scale=0; $c*$c*$c"|bc)
	temp=$(echo "scale=0; $a3+$b3+$c3"|bc)
	if [ $temp -eq $i ]
	then
		echo $i
	fi 
done

