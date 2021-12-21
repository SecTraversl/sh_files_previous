#!/bin/bash

############################################
# SYNOPSIS
# - The "add-pathAppend" function 
#
###########
# NOTES
# - Name:  add-pathAppend.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://linoxide.com/add-path-command-line/
#   - File-based "if" conditions such as '-d' for validating the arg is a directory:  https://acloudguru.com/blog/engineering/conditions-in-bash-scripting-if-statements
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show a general situation where we may want to use the function.  The 'chrome' binary is not currently callable because the parent directory it resides in is not in the $PATH variable.  Thus we use the "add-pathAppend" function to append the parent directory to the $PATH variable and demonstrate how our shell now knows the location of the 'chrome' binary, so we can call it at will. ...

temp_dir$ which chrome
temp_dir$ 
temp_dir$ find / -name chrome 2>/dev/null | egrep "bin|opt"
/opt/google/chrome
/opt/google/chrome/chrome
temp_dir$ 
temp_dir$ add-pathAppend /opt/google/chrome/chrome

Specify an argument that is a directory path.

temp_dir$ add-pathAppend /opt/google/chrome
temp_dir$ 
temp_dir$ get-path | tail -4
/usr/games
/usr/local/games
/snap/bin
/opt/google/chrome
temp_dir$ 
temp_dir$ which chrome
/opt/google/chrome/chrome
#comment
############################################


function add-pathAppend () {
  if [ -d "$1" ]; then
    export PATH=$PATH:"$1"
  else
    echo -e "\nSpecify an argument that is a directory path.\n"
  fi
}

