#!/bin/bash

############################################
# SYNOPSIS
# - The "remove-aliasAll" function removes all existing aliases in the session.
#
###########
# NOTES
# - Name:  remove-aliasAll.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://www.tecmint.com/create-alias-in-linux/
#
###########
# EXAMPLE
<< '#comment'

#comment
############################################


function remove-aliasAll () {
  unalias -a 
}

