#!/bin/bash

############################################
# SYNOPSIS
# - The "get-myfunctionsParentDirAndFileOnly" function returns defined functions that I have created within a defined directory tree, but only the parent folder and the function file name.
#
###########
# NOTES
# - Name:  get-myfunctionsParentDirAndFileOnly.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of calling the function ...

temp_dir$ get-myfunctionsParentDirAndFileOnly | head
alias_funcs/get-alias.sh
alias_funcs/remove-aliasAll.sh
alias_funcs/remove-alias.sh
alias_funcs/set-alias.sh
column-select-sort-and-split_funcs/join-column.sh
column-select-sort-and-split_funcs/select-columnAfterSplit.sh
column-select-sort-and-split_funcs/select-column.sh
column-select-sort-and-split_funcs/split-column.sh
column-select-sort-and-split_funcs/split-plus.sh
display-resolution_funcs/get-displayResolution.sh
#comment
############################################


function get-myfunctionsParentDirAndFileOnly () {
  cd ~/sh_files/
  grep -Rl '^function ' *_funcs/*.sh
  cd - 1>/dev/null
}

