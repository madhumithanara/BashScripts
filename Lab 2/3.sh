#!/bin/sh

array=()

for i in {0..4}
do
echo ""
echo "Enter the Element $i: "
echo ""
read array[$i]
done

for i in {0..4}
do
for j in {0..3}
do
if [ ${array[$j]} -gt ${array[$j+1]} ]
then
temp=${array[$j]}
array[$j]=${array[$j+1]}
array[$j+1]=$temp
fi
done
done

min=${array[0]}
max=${array[4]}

count_max=1
count_min=1

for k in {1..4}
do 
if [ ${array[$k]} -eq ${array[0]} ]
then
	count_min=`expr $count_min + 1`
fi
done

for l in {0..3}
do 
if [ ${array[4]} -eq ${array[$l]} ]
then
	count_max=`expr $count_max + 1`
fi
done

echo ""
echo ""

echo "The sorted array is: "
for i in {0..4}
do
echo "${array[$i]}"
done

echo ""
echo "" 

echo "Maximum is: "
echo $max "occurs" $count_max "time(s)"
echo ""
echo "Minimum is: "
echo $min "occurs" $count_min "time(s)"