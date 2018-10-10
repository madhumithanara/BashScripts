#/bin/sh
echo "Enter the two numbers:"
read n1
read n2
echo "Enter the operation"
read ops
ans=$(echo "scale=10; $n1 $ops $n2"|bc)


echo "The result is : "
echo $ans
