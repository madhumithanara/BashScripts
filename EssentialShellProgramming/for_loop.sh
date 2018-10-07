#FOR LOOP

#Syntax:

# for variable in list #like Python
# do 
# 	commands
# done 

#Program to find average of numbers entered during runtime

echo "Enter the number of elements: "
read n

sum=0

echo "\n\nEnter the elements: "
for i in `seq 1 $n`
do
	read ele
	sum=`expr $sum + $ele`
done

avg=`expr $sum / $n`
echo "Average is: $avg"
