#!/bin/sh

echo "Number of files: " 
ls -lR | grep ^- | wc -l
echo "Number of directories: " 
ls -lR | grep ^d | wc -l

echo "" 
echo ""
echo "List of directories: "
for i in *
do
	if [ -d "$i" ]
		then
		echo $i
	fi
done

echo "" 
echo ""
echo "List of files: "
for i in *
do
	if [ -f "$i" ]
		then
		echo $i
	fi
done