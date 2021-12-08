#!/bin/bash

############################################
# SYNOPSIS
# - The "get-storageUsage" function returns the disk space used by the present working directory, along with any sub-directories.  If an argument is given to the function then the disk space usage for that directory and any sub-directories is returned.
#
###########
# NOTES
# - Name:  get-storageUsage.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful in building the function:  https://www.redhat.com/sysadmin/8-favorite-commands
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of the tool ...

my_bash_funcs$ get-storageUsage 
8.0K    ./prompt_funcs
4.0K    ./variables-and-env_funcs
32K     ./files-and-folders_funcs
64K     .
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the tool being used by supplying a directory as an argument ...

my_bash_funcs$ get-storageUsage  ../my_py_funcs/
44K     ../my_py_funcs/web_scraping
4.0K    ../my_py_funcs/temp_dir
916K    ../my_py_funcs/scapy_stuff/pcap/packets
940K    ../my_py_funcs/scapy_stuff/pcap
15M     ../my_py_funcs/scapy_stuff
8.0K    ../my_py_funcs/worksheet_dir/__pycache__
144K    ../my_py_funcs/worksheet_dir
337M    ../my_py_funcs/youtube_videos
200K    ../my_py_funcs/__pycache__
560K    ../my_py_funcs/push_bitbucket_dir
12K     ../my_py_funcs/json_stuff
353M    ../my_py_funcs/
#comment

############################################


function get-storageUsage () {
  if [ "$1" ]; then
    du -h "$1"
  else
    du -h .
  fi
}

