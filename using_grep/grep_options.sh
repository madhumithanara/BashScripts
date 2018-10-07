# Syntax: grep [options] pattern filename1 filename2 ....

#if pattern not found, exit status in non-zero (unlike sed, awk)

# grep -i - Ignores case   
# grep -v - Displays everything except the lines containing the pattern (inverse)
# grep -n - displays line numbers along with the lines
# grep -c - Returns the frequency of the pattern in the file (a number)
# grep -l "manager" *.lst - Returns the filenames which contain the pattern (only the filenames)
# grep -e pattern1 -e pattern2 -e pattern3.....- Multiple pattern matching
# grep -f patterns.lst emp.lst - Takes patterns from a file

grep -i "Shukla" emp.list
grep -v "shukla" emp.list
grep "shukla" emp.list

grep -n "manager" emp.list
grep -c "manager" emp.list

grep -e "director" -e "manager" emp.list

grep -f patterns.txt emp.list
