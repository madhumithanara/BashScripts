#WHILE LOOP

#Syntax:

# while condition is true
# do
# 	commands
# done

#Program that keeps adding into a database called newlist until user wants to stop

answer=y
while [ "$answer" = "y" ]
do
	echo "Enter the id and name"
	read id name
	echo "$id|$name" >> newlist
	echo "Enter any more (y/n)?: "> /dev/tty
	read anymore
	case $anymore in
		y*|Y*) answer=y ;;
		n*|N*) answer=n ;;
		*) answer=y ;;
	esac
done 

#newlist is opened and closed for every loop iteration

#An alternate (and faster) way is to remove >> and put done > newlist at the end. This ensures newlist is closed only when the while loop is terminated

# done < param.list - when statements in loop take input from param.list
# done | while true..... - pipes out to a different while loop
# fi > foo - affects statements between if and fi
# esac > foo - affects  statements between case and esac

#SLEEP COMMAND

#Program to monitor the disk for the existence of a file and then executes the program once the file has been located

while [ ! -r invoice.list ]
do
	sleep 60 #60seconds
done
alloc.pl #program alloc.pl is executed

#until is the same as while except that the loop is executed only if the conditional expression is false
