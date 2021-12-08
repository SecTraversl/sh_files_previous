#!/bin/bash

############################################
# SYNOPSIS
# - The "get-groups" function displays the groups that exist on the machine.
#
###########
# NOTES
# - Name:  get-groups.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in creating the tool:  https://askubuntu.com/questions/515103/how-can-i-display-all-users-and-groups-with-a-command
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ get-groups 
root
daemon
bin
sys
adm
tty
disk
lp
mail
news
#comment
############################################


function get-groups () {
  compgen -g
}

