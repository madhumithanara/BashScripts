#/bin/sh
echo "Enter p,t,r :"
read p
read t
read r
si=$(expr $p \* $t \* $r /  100)
echo "The si is : "
echo $si
