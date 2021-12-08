#!/bin/bash

############################################
# SYNOPSIS
# - The "split-plus" function splits a line of text based off of a given delimiter, the default delimiter is a colon ':'.
#
###########
# NOTES
# - Name:  split-plus.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ echo $PATH
/home/kingpen/.vscode-server/bin/6cba118ac49a1b88332f312a8f67186f7f3c1643/bin:/home/kingpen/.local/bin:/home/kingpen/.vscode-server/bin/6cba118ac49a1b88332f312a8f67186f7f3c1643/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin


# ... Here we show the usage of split-plus which splits, by default, on ':' ...

temp$ echo $PATH | split-plus 
/home/kingpen/.vscode-server/bin/c13f1abb110fc756f9b3a6f16670df9cd9d4cf63/bin
/home/kingpen/.local/bin
/home/kingpen/.vscode-server/bin/c13f1abb110fc756f9b3a6f16670df9cd9d4cf63/bin
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

###########
# EXAMPLE
<< '#comment'
# ... Here we show how to split content on a given delimiter, in this case we are using a single space ' ' ...

temp$ echo "Alice Bob Charlie" | split-plus ' '
Alice
Bob
Charlie
#comment
############################################


function split-plus () {
  if [ "$1" ]; then
    tr "$1", '\n'
  else
    tr ':' '\n'
  fi
}

