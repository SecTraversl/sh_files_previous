#!/bin/bash

############################################
# SYNOPSIS
# - The "get-ipaddress6" function returns any IPv6 addresses configured on the machine.
#
###########
# NOTES
# - Name:  get-ipaddress6.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of running the function ...

my_bash_funcs$ get-ipaddress6
::1/128
fe80::fd93:86aa:347:73a2/64
#comment
############################################


function get-ipaddress6 () {
  ip address | grep "inet6" | tr -s ' ' | cut -d ' ' -f3
}

