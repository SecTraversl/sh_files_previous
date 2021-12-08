#!/bin/bash

############################################
# SYNOPSIS
# - The "change-prompt" function updates the prompt to only display the current working directory.
#
###########
# NOTES
# - Name:  change-prompt.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the original prompt, and then the new prompt ...

kingpen@troute66-pc:~/my_bash_funcs$ change-prompt 
my_bash_funcs$ 
#comment
############################################


function change-prompt () {
  PS1="\[\033[01;34m\]\W\[\033[00m\]$ "
}

