#/bin/sh
echo "Enter the last number:"
read n

sum=0
for i in `seq 1 $n`
do 
	sum=$(echo "scale=10; $sum + $i"|bc)
done

echo "The sum is : "
echo $sum
