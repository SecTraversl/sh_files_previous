#!/bin/bash

############################################
# SYNOPSIS
# - The "join-column" function is used bring the output from "split-column" into a usable form to be used with the "select-columnAfterSplit" function.
#
###########
# NOTES
# - Name:  join-column.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://superuser.com/questions/112834/how-to-match-whitespace-in-sed
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal usage of the function, being used with the "split-column" function ...

temp$ cat /usr/share/distro-info/ubuntu.csv | head | split-column ',' | join-column | select-columnAfterSplit 1,2,4
version   codename        created
4.10      Warty Warthog   2004-03-05
5.04      Hoary Hedgehog  2004-10-20
5.10      Breezy Badger   2005-04-08
6.06 LTS  Dapper Drake    2005-10-12
6.10      Edgy Eft        2006-06-01
7.04      Feisty Fawn     2006-10-26
7.10      Gutsy Gibbon    2007-04-19
8.04 LTS  Hardy Heron     2007-10-18
8.10      Intrepid Ibex   2008-04-24
#comment
############################################


function join-column () {
  sed 's/\s\{2,\}/:/g'
}

