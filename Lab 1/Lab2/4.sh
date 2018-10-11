#!/bin/sh

array=()
pos=0
neg=0
zero=0

for i in {0..9}
do
echo "Enter the Element $i"
read array[$i]
if [ ${array[$i]} -gt 0 ]
then
((pos++))
elif [ ${array[$i]} -lt 0 ]
then
((neg++))
else
((zero++))
fi
done

echo "Number of positives = $pos"
echo "Number of negatives = $neg"
echo "Number of zeros = $zero"

for i in {0..9}
do
for j in {0..8}
do
if [ ${array[$j]} -gt ${array[$j+1]} ]
then
temp=${array[$j]}
array[$j]=${array[$j+1]}
array[$j+1]=$temp
fi
done
done

for i in {0..9}
do
echo "${array[$i]}"
done