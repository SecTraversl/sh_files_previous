#!/bin/bash

############################################
# SYNOPSIS
# - The "new-group" function creates a new group with the given argument as the name of the group.
#
###########
# NOTES
# - Name:  new-group.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://linuxize.com/post/how-to-create-groups-in-linux/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal usage of the function ...

temp$ getent group | grep my
temp$ 
temp$ new-group mynewtestgroup
[sudo] password for kingpen: 
temp$ 
temp$ getent group | grep my
mynewtestgroup:x:1002:
temp$ 
temp$ sudo groupdel mynewtestgroup 
temp$ 
temp$ getent group | grep my
temp$ 
#comment
############################################


function new-group () {
  if [ "$1" ]; then
    sudo groupadd "$1"
  else
    echo -e "\nPlease provide the name of the group you want to create.\n"
  fi
}

