#!/bin/bash

############################################
# SYNOPSIS
# - The "remove-groupMember" function takes a given group name and user name and removes that user from the given group.
#
###########
# NOTES
# - Name:  remove-groupMember.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was a helpful reference:  https://linuxhint.com/remove-a-user-from-a-group-linux/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we create a new group, view the members, add a member, and remove the member ...

temp$ sudo groupadd mytestgroup
[sudo] password for kingpen: 
 
temp$ getent group mytestgroup 
mytestgroup:x:1002:

temp$ sudo usermod -aG mytestgroup testuser 

temp$ getent group mytestgroup 
mytestgroup:x:1002:testuser

temp$ remove-groupMember testuser mytestgroup
Removing user testuser from group mytestgroup

temp$ getent group mytestgroup 
mytestgroup:x:1002:
#comment
############################################
function remove-groupMember () {
  # $1 is the group name; $2 is the user that you want to remove
  sudo gpasswd --delete "$2" "$1"
}
