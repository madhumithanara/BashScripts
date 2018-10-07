#Using expr:

# 1) Performs arithmetic operations on integers
# 2) Manipulates strings

#Calculation

expr 3 \* 5 #integer calculation only #no echo required

#Variable initialisation using expr 
z=`expr 3 / 5`
echo $z #IMPORTANT: Space is required else it becomes a string and not an arithmetic expression

#String manipulation

# 1) Determine the length of the string
# 2) Extract a substring
# 3) Locate the position of a character in a string

#Length
expr "adhfgsdifh" : '.*' #number of characters matching the pattern

#Program to check if length of a string is less than 20

# if [ `expr "$name" : '.*'` -lt 20 ] Note the use of ``
# 	then
# fi

#Extracting a substring

year=2000
expr "$year" : '..\(..\)' #some sed command - Tagged Regular Expression (TRE)

