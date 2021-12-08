#!/bin/bash

############################################
# SYNOPSIS
# - The "add-groupMember" function takes a given group name and a given user, and adds that user to the group.
#
###########
# NOTES
# - Name:  add-groupMember.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This shows adding a user to the 'wireshark' group:  https://itsfoss.com/install-wireshark-ubuntu/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the current membership for the group 'wireshark' (no members currently) ...

temp$ get-groupMembers wireshark
wireshark:x:135:


# ... Here we use the function to add a new group member ...

temp$ add-groupMember wireshark kingpen
[sudo] password for kingpen: 


# ... Here we check the group membership now, and see that the user was added  ...

temp$ get-groupMembers wireshark
wireshark:x:135:kingpen
#comment
############################################


function add-groupMember () {
  # $1 is the group name; $2 is the user that you want to add
  # -a 'append the user to the supplemental groups'; -G the group name
  sudo usermod -aG "$1" "$2"
}

