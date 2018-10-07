#Extended Regular Expressions - ERE

#need to use grep option -E

# + - Matches one or more occurences of the previous character (* matches nothing too)
# ? - Matches none or one occurence of the previous character

grep -E "[aA]gg?arwal" emp.list #agarwal or aggarwal but not agggarwal

#Matching multiple patterns 

# |,()

grep -E "dasgupta|sengupta" emp.list # == grep -E "(das|sen)gupta" emp.list