#!/bin/bash

############################################
# SYNOPSIS
# - The "split-column" function will split the text on a given delimiter, or by default will split the text on a colon ':'.
#
###########
# NOTES
# - Name:  split-column.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  column
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of the passwd file ...

temp$ getent passwd | head 
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin


# ... Here we demonstrate the usage of split-column ...

temp$ getent passwd | head | split-column 
root    x  0  0      root    /root            /bin/bash
daemon  x  1  1      daemon  /usr/sbin        /usr/sbin/nologin
bin     x  2  2      bin     /bin             /usr/sbin/nologin
sys     x  3  3      sys     /dev             /usr/sbin/nologin
sync    x  4  65534  sync    /bin             /bin/sync
games   x  5  60     games   /usr/games       /usr/sbin/nologin
man     x  6  12     man     /var/cache/man   /usr/sbin/nologin
lp      x  7  7      lp      /var/spool/lpd   /usr/sbin/nologin
mail    x  8  8      mail    /var/mail        /usr/sbin/nologin
news    x  9  9      news    /var/spool/news  /usr/sbin/nologin


# ... Here we sort numerically in a descending fashion on the 4th column ...

temp$ getent passwd | head | split-column | sort -k 4 -nr
sync    x  4  65534  sync    /bin             /bin/sync
games   x  5  60     games   /usr/games       /usr/sbin/nologin
man     x  6  12     man     /var/cache/man   /usr/sbin/nologin
news    x  9  9      news    /var/spool/news  /usr/sbin/nologin
mail    x  8  8      mail    /var/mail        /usr/sbin/nologin
lp      x  7  7      lp      /var/spool/lpd   /usr/sbin/nologin
sys     x  3  3      sys     /dev             /usr/sbin/nologin
bin     x  2  2      bin     /bin             /usr/sbin/nologin
daemon  x  1  1      daemon  /usr/sbin        /usr/sbin/nologin
root    x  0  0      root    /root            /bin/bash
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ cat /usr/share/distro-info/ubuntu.csv | head
version,codename,series,created,release,eol,eol-server,eol-esm
4.10,Warty Warthog,warty,2004-03-05,2004-10-20,2006-04-30
5.04,Hoary Hedgehog,hoary,2004-10-20,2005-04-08,2006-10-31
5.10,Breezy Badger,breezy,2005-04-08,2005-10-12,2007-04-13
6.06 LTS,Dapper Drake,dapper,2005-10-12,2006-06-01,2009-07-14,2011-06-01
6.10,Edgy Eft,edgy,2006-06-01,2006-10-26,2008-04-26
7.04,Feisty Fawn,feisty,2006-10-26,2007-04-19,2008-10-19
7.10,Gutsy Gibbon,gutsy,2007-04-19,2007-10-18,2009-04-18
8.04 LTS,Hardy Heron,hardy,2007-10-18,2008-04-24,2011-05-12,2013-05-09
8.10,Intrepid Ibex,intrepid,2008-04-24,2008-10-30,2010-04-30


# ... Here we use split-column and specify the delimter to be a comma ',' ...

temp$ cat /usr/share/distro-info/ubuntu.csv | head | split-column ','
version   codename        series    created     release     eol         eol-server  eol-esm
4.10      Warty Warthog   warty     2004-03-05  2004-10-20  2006-04-30
5.04      Hoary Hedgehog  hoary     2004-10-20  2005-04-08  2006-10-31
5.10      Breezy Badger   breezy    2005-04-08  2005-10-12  2007-04-13
6.06 LTS  Dapper Drake    dapper    2005-10-12  2006-06-01  2009-07-14  2011-06-01
6.10      Edgy Eft        edgy      2006-06-01  2006-10-26  2008-04-26
7.04      Feisty Fawn     feisty    2006-10-26  2007-04-19  2008-10-19
7.10      Gutsy Gibbon    gutsy     2007-04-19  2007-10-18  2009-04-18
8.04 LTS  Hardy Heron     hardy     2007-10-18  2008-04-24  2011-05-12  2013-05-09
8.10      Intrepid Ibex   intrepid  2008-04-24  2008-10-30  2010-04-30
#comment
############################################


function split-column () {
  if [ "$1" ]; then
    column -t -s "$1"
  else
    column -t -s ':'
  fi
}

