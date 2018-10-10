#/bin/sh
echo "Enter number of elements:"
read n
a=0
sum=0
for i in `seq 1 $n`
do 
	read ele
	sum=$(echo "scale=10; $sum + $ele"|bc)
done
avg=$(echo "scale=5; $sum/$n"|bc)
echo "The average is : "
echo $avg
