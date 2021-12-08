#!/bin/bash

############################################
# SYNOPSIS
# - The "get-groupMembersOnly" function takes a given group and returns the names of the users in that group (if any).
#
###########
# NOTES
# - Name:  get-groupMembersOnly.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in creating the function:  https://askubuntu.com/questions/136788/how-do-i-list-the-members-of-a-group
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of the tool ...

temp$ get-groupMembers wireshark
wireshark:x:135:kingpen
temp$ 
temp$ get-groupMembersOnly wireshark
kingpen

#comment
############################################


function get-groupMembersOnly () {
  getent group "$1" | awk -F: '{print $4}'
}

