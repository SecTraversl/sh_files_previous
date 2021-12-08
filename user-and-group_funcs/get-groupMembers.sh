#!/bin/bash

############################################
# SYNOPSIS
# - The "get-groupMembers" function takes a given group name and returns the members of that group, if any. If a user is present within a group their name will be present after the 3rd ":").
#
###########
# NOTES
# - Name:  get-groupMembers.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in building the function:  https://askubuntu.com/questions/136788/how-do-i-list-the-members-of-a-group
#
###########
# EXAMPLE
<< '#comment'
# ... Here we use the function to show the group members before and after a member was added to the group 'wireshark' ...

temp$ get-groupMembers wireshark
wireshark:x:135:

temp$ add-groupMember wireshark kingpen
[sudo] password for kingpen: 

temp$ get-groupMembers wireshark
wireshark:x:135:kingpen
#comment
############################################


function get-groupMembers () {
  getent group "$1"
}

