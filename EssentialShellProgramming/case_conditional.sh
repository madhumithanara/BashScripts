#Using case-conditional

#Syntax: 

# case expression in
# 	pattern1) commands1 ;;
# 	pattern2) commands2 ;;
# 	pattern3) commands3 ;;
# 	.
# 	.
# 	.
# 	*) Default
# esac

# Program to do something based on day of the week

case `date | cut -d" " -f1` in
	Mon) echo "It is a Monday" ;;
	Tue) echo "It is a Tuesday" ;;
	Sun) echo "It is a Sunday" ;;
esac

#Matching multiple patterns

# case "$answer" in
# 	y|Y)
# 	N|n)
# 	[nN][oO]) Matches no, NO, No, nO

# (Wildcards)