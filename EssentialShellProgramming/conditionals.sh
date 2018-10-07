# cmd 1 && cmd 2 - Command 2 is executed only if command 1 is true
# cmd 1 || cmd 2 - Command 2 is executed only if command 1 is false 

# Syntax for if : 

# if
# then...

# elif
# then...

# else...
# fi

# Using test: 
# 1) Compare two numbers
# 2) Compare two strings or a single one for a null value
# 3) Check a file's attributes

# Numeric comparisions:

#Note: Works only for integers. (float values are truncated)

x=5
y=7
z=7.2

test $x -eq $y
echo $? #gives 1
# test $z -eq $y
# echo $? #gives 0 throwing error

if test $# -eq 0 #can put semicolon and write "then" on the same line 
	then
		echo "Usage: $0 pattern file" > /dev/tty #Why? : Imagine if the entire shell script's o/p was redirected to some other file. We would still like to know if an error occured on the terminal itself and not while opening that file
elif test $# -eq 2
	then
		grep "$1" $2 || echo "$1 not found in $2" > /dev/tty
else
	echo "You haven't entered two arguments" > /dev/tty
fi

#Operators used by test

# -eq equal to
# -ne not equal to
# -gt Greater than
# -ge greater than or equal to
# -lt less than
# -le less than or equal to

# test $x -gt $y == [ $x -gt $y ]
# test $x == test $x -gt 0

# AND : -a

# s1 = s2 strings are equal
# s1 != s2 strings are not equal
# -n s1 = s1 is NOT a null string
# -z s1 = s1 is a null string
# s1 = s1 is assigned and not null
# s1 == s2 s1=s2 (Korn and Bash only)

# TEST NEGATION
# [ ! -e file1.sh ] - file1.sh is not an executable file

# File tests

# -e file exists (Korn and Bash only)
# -f file exists and is a regular file
# -r file exists and is readable
# -w file exists and is writable
# -x file exists and is executable
# -d file exists and is a directory

# -s file exists and has size greater than zero

# f1 -nt f2 f1 is newer than f2 (Korn and Bash Only)
# f1 -ot f2 f1 is older than f2 (Korn and Bash Only)



