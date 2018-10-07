#using command line arguments $1,$#,$*

#$* stores the complete set of positional parameters as a single string
#$# Is an integer and is set to the number of arguments specified. Can be used for error checking.
#$0 is a variable containing the name of the program it is invoked in.

#!bin/sh

echo "Name of the program: $0
Number of arguments given as command-line input: $#
The arguments are: $*"

echo "\n\nJob over"

#OTHER SPECIAL PARAMETERS

# $1,$2...$9 - positional arguments representing command-line arguments
# "$@" - each quoted string treated as a separate argument (recommended over $*)
# $? - exit status of last command (0 - everything went fine) Note: grep returns non-zero if it can't find the pattern unlike sed

echo $@ #difference occurs while using grep?

