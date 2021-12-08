#!/bin/bash

############################################
# SYNOPSIS
# - The "get-route" function returns the routes defined on the machine.  If an IPv4 Address is given, the function will return the interface used to forward and packets with the referenced IP Address.
#
###########
# NOTES
# - Name:  get-route.sh
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

temp$ get-route
default via 10.80.3.1 dev enp40s0 proto dhcp metric 100 
10.80.3.0/24 dev enp40s0 proto kernel scope link src 10.80.3.204 metric 100 
169.254.0.0/16 dev enp40s0 scope link metric 1000 
172.16.5.0/24 dev vmnet8 proto kernel scope link src 172.16.5.1 
172.16.248.0/24 dev vmnet1 proto kernel scope link src 172.16.248.1 
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the output of the tool when given a specific destination IP Address ...

temp$ get-route 8.8.8.8
8.8.8.8 via 10.80.3.1 dev enp40s0 src 10.80.3.204 uid 1000 
    cache 
#comment
############################################


function get-route () {
  if [ "$1" ]; then
    ip route get "$1"
  else
    ip route
  fi
}

