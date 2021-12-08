#!/bin/bash

############################################
# SYNOPSIS
# - The "get-permissionsNumericFormat" function displays the permissions of the files in the current directory (by default).  If an argument of a particular file or directory is given, then the results for that file/directory are returned.
#
###########
# NOTES
# - Name:  get-permissionsNumericFormat.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://unix.stackexchange.com/questions/385734/how-to-show-the-permissions-in-numeric-format
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output when running the function ...

temp$ ll
total 24
drwxrwxr-x  4 kingpen kingpen 4096 Nov 28 07:22 ./
drwxrwxr-x 20 kingpen kingpen 4096 Dec  4 17:58 ../
drwxrwxr-x  2 kingpen kingpen 4096 Nov 28 07:22 some_random_dir/
drwxrwxr-x  2 kingpen kingpen 4096 Nov 28 07:22 test_dir/
-rw-rw-r--  1 kingpen kingpen   46 Nov 27 16:31 text-file-created-on-Linux-via-the-cli.txt
-rw-rw-r--  1 kingpen kingpen   51 Nov 27 16:31 text-file-created-on-Windows-by-notepad.txt
temp$ 
temp$ get-permissionsNumericFormat 
775 .
664 text-file-created-on-Linux-via-the-cli.txt
664 text-file-created-on-Windows-by-notepad.txt
775 some_random_dir
775 test_dir
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the output when we give the function an argument of a particular file ...

temp$ ll
total 24
drwxrwxr-x  4 kingpen kingpen 4096 Nov 28 07:22 ./
drwxrwxr-x 20 kingpen kingpen 4096 Dec  4 17:58 ../
drwxrwxr-x  2 kingpen kingpen 4096 Nov 28 07:22 some_random_dir/
drwxrwxr-x  2 kingpen kingpen 4096 Nov 28 07:22 test_dir/
-rw-rw-r--  1 kingpen kingpen   46 Nov 27 16:31 text-file-created-on-Linux-via-the-cli.txt
-rw-rw-r--  1 kingpen kingpen   51 Nov 27 16:31 text-file-created-on-Windows-by-notepad.txt
temp$ 
temp$ get-permissionsNumericFormat text-file-created-on-Linux-via-the-cli.txt 
664 text-file-created-on-Linux-via-the-cli.txt
#comment
############################################
function get-permissionsNumericFormat () {
  if [ "$1" ]; then
    find . -maxdepth 1 -name "$1" -printf "%m %f\n"
  else
    find . -maxdepth 1 -printf "%m %f\n"
  fi
}
