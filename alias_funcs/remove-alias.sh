#!/bin/bash

############################################
# SYNOPSIS
# - The "remove-alias" function takes a given alias and removes it.
#
###########
# NOTES
# - Name:  remove-alias.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://www.tecmint.com/create-alias-in-linux/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal usage of the function ...

temp$ set-alias myalias "echo 'This is my alias' "
temp$ myalias 
This is my alias

temp$ remove-alias myalias
 
temp$ alias myalias
bash: alias: myalias: not found
#comment
############################################


function remove-alias () {
  unalias "$1"
}

