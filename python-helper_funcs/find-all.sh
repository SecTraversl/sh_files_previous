#!/bin/bash

############################################
# SYNOPSIS
# - The "find-all" function is a python3 helper function allowing for the use of the same Regular Expression pattern matching syntax as is used in "re.findall()".
#
###########
# NOTES
# - Name:  find-all.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - I found the code for this "find-all" function here, but made some modifications for use with python3: https://unix.stackexchange.com/questions/6/what-are-your-favorite-command-line-features-or-tricks
#
###########
# EXAMPLE
<< '#comment'
temp$ MYECHO=$(echo "blah
> be blah blah
> be
> bah bah bitty
> ")

temp$ echo "$MYECHO" | find-all 'be.*'
be blah blah
be
#comment
############################################


function find-all () {
  python3 -c "import re
import sys
for i in re.findall('$1', sys.stdin.read()):
    if type(i) == type(''):
        print(i)
    else:
        print(i[0])
  "
}

