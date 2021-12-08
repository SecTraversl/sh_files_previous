#!/bin/bash

############################################
# SYNOPSIS
# - The "get-alias" function displays all existing aliases (by default).  If an argument is given which is an an alias name, then the function returns the alias name/value for the given alias name.
#
###########
# NOTES
# - Name:  get-alias.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://stackoverflow.com/questions/46075843/get-all-aliases-in-linux-shell
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal usage of the function ...

temp$ get-alias 
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ipaddress='get-ipaddress'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the output when we give a specific alias name as the argument ...

temp$ get-alias egrep
alias egrep='egrep --color=auto'
#comment
############################################


function get-alias () {
  if [ "$1" ]; then
     alias "$1"
  else
    alias
  fi
}

