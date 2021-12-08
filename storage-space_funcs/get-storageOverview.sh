#!/bin/bash

############################################
# SYNOPSIS
# - The "get-storageOverview" function returns an overview of disk space usage for the whole machine by default, or if a directory path is given as an argument the function will return a disk space usage overview for that particular directory.
#
###########
# NOTES
# - Name:  get-storageOverview.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in building the function:  https://www.redhat.com/sysadmin/8-favorite-commands
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of the function ...

Filesystem      Size  Used Avail Use% Mounted on
udev             16G     0   16G   0% /dev
tmpfs           3.2G  1.7M  3.2G   1% /run
/dev/nvme0n1p2  912G   58G  808G   7% /
tmpfs            16G     0   16G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs            16G     0   16G   0% /sys/fs/cgroup
/dev/loop1       56M   56M     0 100% /snap/core18/2074
/dev/loop3       56M   56M     0 100% /snap/core18/2128
/dev/loop2      219M  219M     0 100% /snap/gnome-3-34-1804/66
/dev/loop5       66M   66M     0 100% /snap/gtk-common-themes/1519
/dev/loop4      219M  219M     0 100% /snap/gnome-3-34-1804/72
/dev/loop0      128K  128K     0 100% /snap/bare/5
/dev/loop6       51M   51M     0 100% /snap/snap-store/547
/dev/nvme0n1p1  511M   35M  477M   7% /boot/efi
/dev/loop7       51M   51M     0 100% /snap/snap-store/542
/dev/loop8       66M   66M     0 100% /snap/gtk-common-themes/1515
/dev/loop9       33M   33M     0 100% /snap/snapd/13170
/dev/loop10      33M   33M     0 100% /snap/snapd/12883
tmpfs           3.2G  8.0K  3.2G   1% /run/user/1000
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the output of the tool when given a dir path as an argument ...

my_bash_funcs$ get-storageOverview ../my_py_funcs/
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p2  912G   58G  808G   7% /
#comment
############################################


function get-storageOverview () {
  if [ "$1" ]; then
    df -h "$1"
  else
    df -h
  fi
}

