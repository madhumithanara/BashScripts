#/bin/sh
echo "Enter radius:"
read r
PI=$(echo "scale=20; 355/113" | bc)
area=$(echo "scale =10; $r * $r * $PI"| bc)
echo "The area is : "
echo $area
