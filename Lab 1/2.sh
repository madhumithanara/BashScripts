#/bin/sh
echo "Enter basic salary:"
read basic
dp=$(echo "scale=10; $basic/2" | bc)
da=$(echo "scale=10; ($basic+$dp)*35/100" | bc)
hra=$(echo "scale=10; ($basic+$dp)*8/100" | bc)
ma=$(echo "scale=10; ($basic+$dp)*3/100" | bc)
pf=$(echo "scale=10; ($basic+$dp)*10/100" | bc)
sal=$(echo "scale=10; $basic+$dp + $da + $hra + $ma - $pf" | bc)
echo "The salary is : "
echo $sal
