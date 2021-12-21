#!/bin/bash

############################################
# SYNOPSIS
# - The "get-path" function displays the directories that are currently part of the $PATH variable.
#
###########
# NOTES
# - Name:  get-path.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output when we run the function ...

temp_dir$ get-path 
/home/kingpen/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin
/home/kingpen/.local/bin
/home/kingpen/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin
/usr/local/sbin
/usr/local/bin
/usr/sbin
/usr/bin
/sbin
/bin
/usr/games
/usr/local/games
/snap/bin
#comment
############################################


function get-path () {
  echo $PATH | tr : "\n"
}

