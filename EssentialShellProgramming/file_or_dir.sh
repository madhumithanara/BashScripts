#Program to find the number of regular files and directories in present working directory. Also, list them separately

echo "Number of files: "
ls -l| grep ^- |wc -l

echo "Number of directories: "
ls -l|grep ^d|wc -l

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