#!/bin/bash

############################################
# SYNOPSIS
# - The "get-groupsWithMembers" function returns the groups that have members, along with names of those group members.
#
###########
# NOTES
# - Name:  get-groupsWithMembers.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of the function ...

temp$ get-groupsWithMembers 
adm:x:4:syslog,kingpen
tty:x:5:syslog
sudo:x:27:kingpen
audio:x:29:pulse
lpadmin:x:120:kingpen
scanner:x:122:saned
wireshark:x:135:kingpen
#comment
############################################


function get-groupsWithMembers () {
  grep -v "\:$" /etc/group
}

