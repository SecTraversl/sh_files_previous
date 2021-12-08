#!/bin/bash

############################################
# SYNOPSIS
# - The "get-users" function returns the "non-system" users on the machine.
#
###########
# NOTES
# - Name:  get-users.sh
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

temp$ get-users
kingpen:x:1000:1000:kingpen,,,:/home/kingpen:/bin/bash
testuser:x:1001:1001::/home/testuser:/bin/sh
#comment
############################################


function get-users () {
  function between-inclusive () {
    python3 -c "import sys
mystdin = sys.stdin.read()
mystdin = mystdin.splitlines()
for num in mystdin:
    num = int(num)
    if num >= int($1) and num <= int($2):
        print(num)
  "
  }
  local UID_MIN=$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)
  local UID_MAX=$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)
  local MYLIST=$(getent passwd | awk -F: '{print $3}' | sort -n | between-inclusive $UID_MIN $UID_MAX)
  for item in "$MYLIST"; do
    egrep "^.*?:x:$item" /etc/passwd --color=never
  done
}

