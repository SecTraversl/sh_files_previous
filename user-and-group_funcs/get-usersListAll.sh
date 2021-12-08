#!/bin/bash

############################################
# SYNOPSIS
# - The "get-usersListAll" function lists all users, including system users.
#
###########
# NOTES
# - Name:  get-usersListAll.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in building the function:  https://askubuntu.com/questions/515103/how-can-i-display-all-users-and-groups-with-a-command
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ get-usersListAll 
root
daemon
bin
sys
sync
games
man
lp
mail
news
#comment
############################################

 
function get-usersListAll () {
  compgen -u
}

