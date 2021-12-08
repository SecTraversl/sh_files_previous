#!/bin/bash

############################################
# SYNOPSIS
# - The "get-ipaddress" function returns any IPv4 addresses that are configured on the machine.
#
###########
# NOTES
# - Name:  get-ipaddress.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - I retrieved the "tr -s ' ' | cut -d ' ' -f 1" technique from here:  https://unix.stackexchange.com/questions/6/what-are-your-favorite-command-line-features-or-tricks
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output when calling the function ...

my_bash_funcs$ get-ipaddress
127.0.0.1/8
10.80.3.101/24
#comment
############################################


function get-ipaddress () {
  ip address | grep "inet " | tr -s ' ' | cut -d ' ' -f3
}
alias ipaddress=get-ipaddress

