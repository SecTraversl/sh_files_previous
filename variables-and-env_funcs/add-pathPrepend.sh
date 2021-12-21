#!/bin/bash

############################################
# SYNOPSIS
# - The "add-pathPrepend" function 
#
###########
# NOTES
# - Name:  add-pathPrepend.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://linoxide.com/add-path-command-line/
#   - File-based "if" conditions such as '-d' for validating the arg is a directory:  https://acloudguru.com/blog/engineering/conditions-in-bash-scripting-if-statements
#
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show a general situation where we may want to use the function.  The 'chrome' binary is not currently callable because the parent directory it resides in is not in the $PATH variable.  Thus we use the "add-pathPrepend" function to prepend the parent directory to the $PATH variable and demonstrate how our shell now knows the location of the 'chrome' binary, so we can call it at will. ...

temp_dir$ which chrome
temp_dir$ 
temp_dir$ find / -name chrome 2>/dev/null | egrep "bin|opt"
/opt/google/chrome
/opt/google/chrome/chrome
temp_dir$ 
temp_dir$ add-pathPrepend /opt/google/chrome/chrome

Specify an argument that is a directory path.

temp_dir$ add-pathPrepend /opt/google/chrome
temp_dir$ 
temp_dir$ get-path | head -5
/opt/google/chrome
/home/pengwin/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin
/home/pengwin/.local/bin
/home/pengwin/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin
/usr/local/sbin
temp_dir$ 
temp_dir$ which chrome
/opt/google/chrome/chrome
#comment
############################################


function add-pathPrepend () {
  if [ -d "$1" ]; then
    export PATH="$1":$PATH
  else
    echo -e "\nSpecify an argument that is a directory path.\n"
  fi
}

