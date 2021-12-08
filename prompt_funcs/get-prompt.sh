#!/bin/bash

############################################
# SYNOPSIS
# - The "get-prompt" function returns the value of the current "$PS1" variable.
#
###########
# NOTES
# - Name:  get-prompt.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
kingpen@troute66-pc:~/my_bash_funcs$ get-prompt 
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ 
#comment
############################################


function get-prompt () {
  echo "$PS1"
}

