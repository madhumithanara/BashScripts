#/bin/sh
sum=$(echo "scale=10; $1 * $2"|bc)

echo "The area is : "
echo $sum
