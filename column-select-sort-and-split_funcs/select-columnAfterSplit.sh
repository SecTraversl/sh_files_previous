#!/bin/bash

############################################
# SYNOPSIS
# - The "select-columnAfterSplit" function allows for column selection after the "split-column" function has been used.
#
###########
# NOTES
# - Name:  select-columnAfterSplit.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://superuser.com/questions/112834/how-to-match-whitespace-in-sed
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the precursor of what we had to do prior to the creation of the function ...

temp$ cat /usr/share/distro-info/ubuntu.csv | head | split-column ',' | sed 's/\s\{2,\}/:/g' | select-column 1,2,4 | sed 's/\s\{2,\}/:/g' | split-column
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

###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal usage of the function ...

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


function select-columnAfterSplit () {
  local selectOutput=$(python3 -c "import sys
content = sys.stdin.read().splitlines()
if '$@':
    fieldselect = '$@'.split(',')
    for line in content:
        line = line.split(':')
        somearray = []
        for num in fieldselect:
            num = int(num)
            if num == 0:
                somearray.extend(line[:])
            elif num < 0:
                num = num
            elif num > 0:
                num = num - 1
            somearray.append(line[num])
        print('  '.join(somearray))
")
  echo "$selectOutput" | sed 's/\s\{2,\}/:/g' | split-column
}

