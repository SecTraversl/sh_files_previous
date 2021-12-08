#!/bin/bash

############################################
# SYNOPSIS
# - The "set-alias" function first takes the desired name of the alias to be created and then takes the expression to be associated with that alias name as the second argument (using quotes around the expression).
#
###########
# NOTES
# - Name:  set-alias.sh
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
#comment
############################################


function set-alias () {
  alias "$1"="$2"
}

