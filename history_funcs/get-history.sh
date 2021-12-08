#!/bin/bash

############################################
# SYNOPSIS
# - The "get-history" function returns the output of the 'history' command, but without the leading spaces and command-history numbers.
#
###########
# NOTES
# - Name:  get-history.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we retrieve the last 3 commands ...

temp$ echo "hello there..."
hello there...
temp$ echo "how's it going?"
how's it going?
temp$ 
temp$ get-history | tail -3
echo "hello there..."
echo "how's it going?"
get-history | tail -3
#comment
############################################


function get-history () {
  history | tr -s ' ' | cut -d ' ' -f 3-
}

