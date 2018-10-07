#Basic Regular Expressions - BRE

#Character subset

# Character - Matches
# * - Zero or more occurences of the previous Character (not related to the wildcards)
# g* - Nothing or g,gg,ggg,gggg.... 
# . - A single Character
# .* - Nothing or any number of characters
# [pqr] - a single character p, q or r
# [c1-c2] - A single character within the ASCII range represented by c1 and c1-c2
# [1-3] - A digit between 1 and 3
# [^pqr] - A single character which is not a p, q or r (negating a class)
# [^a-zA-Z] - a non-alpahbetic character
# ^pat - Pattern pat at the beginning of the file
# pat$ - Pattern pat at the end of the file
# ^pat$ - Pattern pat as the only word in the line
# ^$ - lines containing Nothing

# grep "[Aa]g[ar][ar]wal" emp.list #Agarwal,agarwal,Agrawal etc
# grep "[aA]gg*[ar][ar]wal" emp.list #Aggarwal,Agarwal, Agggarwal

#Note: To match a string beginning with g, use *gg not *g

grep "7..." emp.list #ANY four character pattern beginning with 7


grep "^7" emp.list

#Escaping metacharacters

g* - g\*
[ - \[
.* - \.\*

