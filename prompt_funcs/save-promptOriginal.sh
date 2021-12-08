#!/bin/bash

############################################
# SYNOPSIS
# - The "save-promptOriginal" function takes the value of the current "$PS1" variable and copies that value to a new variable of "$PS1_Original".
#
###########
# NOTES
# - Name:  save-promptOriginal.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
kingpen@troute66-pc:~/my_bash_funcs$ save-promptOriginal 
The value of $PS1 has been assigned to the variable $PS1_Original, with contents of:
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ 
kingpen@troute66-pc:~/my_bash_funcs$ echo $PS
$PS1           $PS1_Original  $PS2           $PS4  
#comment
############################################


function save-promptOriginal () {
  export PS1_Original=$PS1
  echo "The value of \$PS1 has been assigned to the variable \$PS1_Original, with contents of:"
  echo "$PS1_Original"
}

