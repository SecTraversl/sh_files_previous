#!/bin/bash

############################################

function get-ipaddressAll () {
  ip address | grep "inet" | tr -s ' ' | cut -d ' ' -f3
}

# Example Usage:
<< '#comment'
127.0.0.1/8
::1/128
10.80.3.101/24
fe80::fd93:86aa:347:73a2/64
#comment