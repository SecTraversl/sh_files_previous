#!/bin/bash

############################################
# SYNOPSIS
# - The "between-inclusive" function is a python3 helper function allowing for simple numeric comparisons.  The function expects two arguments the low and high numbers respectively.  For each number that is piped to the function,if the number is inclusively between the low/high numbers, then that number is returned in the output.
#
###########
# NOTES
# - Name:  between-inclusive.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show a simple usage of the tool ...

temp$ echo 20 | between-inclusive 1 30
20
temp$ 
temp$ echo 35 | between-inclusive 1 30
temp$ 
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the tool being used with multiple numbers ...

temp$ echo "20
> 22
> 34
> 38" |  between-inclusive 10 30
20
22
#comment
############################################


function between-inclusive () {
  python3 -c "import sys
mystdin = sys.stdin.read()
mystdin = mystdin.splitlines()
for num in mystdin:
    num = int(num)
    if num >= int($1) and num <= int($2):
        print(num)
  "
}

