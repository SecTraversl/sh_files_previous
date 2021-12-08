#!/bin/bash

############################################
# SYNOPSIS
# - The "select-column" function allows for the selection of ':' colon delimited fields and outputs those selected fields as columns, separated by a double space '  ' (which can then be piped into the 'split-column' function).  You can select the first field by specifying 1, and you can select the last field by specifying -1.  Select multiple fields by separating field numbers with a comma.  For example, "cat /etc/passwd | select-column 1,3,5,-1"  will retrieve the 1st, 3rd, 5th, and last fields.
###########
# NOTES
# - Name:  select-column.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  python3
# - Notes:
#   - This was helpful for sorting by column, numerically, reversed, etc.:  https://linuxhint.com/sort-bash-column-linux/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ getent passwd | tail
geoclue:x:122:127::/var/lib/geoclue:/usr/sbin/nologin
pulse:x:123:128:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
gnome-initial-setup:x:124:65534::/run/gnome-initial-setup/:/bin/false
gdm:x:125:130:Gnome Display Manager:/var/lib/gdm3:/bin/false
nvidia-persistenced:x:126:132:NVIDIA Persistence Daemon,,,:/nonexistent:/usr/sbin/nologin
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
kingpen:x:1000:1000:kingpen,,,:/home/kingpen:/bin/bash
sshd:x:127:65534::/run/sshd:/usr/sbin/nologin
lightdm:x:128:133:Light Display Manager:/var/lib/lightdm:/bin/false
testuser:x:1001:1001::/home/testuser:/bin/sh


# ... Here we select the 1st and last fields, then sort the output on the first column ...

temp$ getent passwd | tail | select-column 1,-1 | sort
gdm  /bin/false
geoclue  /usr/sbin/nologin
gnome-initial-setup  /bin/false
lightdm  /bin/false
nvidia-persistenced  /usr/sbin/nologin
kingpen  /bin/bash
pulse  /usr/sbin/nologin
sshd  /usr/sbin/nologin
systemd-coredump  /usr/sbin/nologin
testuser  /bin/sh


# ... Finally, we pass the output along with specifying the separator of two spaces '  ' to split-column ... 

temp$ getent passwd | tail | select-column 1,-1 | sort | split-column '  '
gdm                  /bin/false
geoclue              /usr/sbin/nologin
gnome-initial-setup  /bin/false
lightdm              /bin/false
nvidia-persistenced  /usr/sbin/nologin
kingpen              /bin/bash
pulse                /usr/sbin/nologin
sshd                 /usr/sbin/nologin
systemd-coredump     /usr/sbin/nologin
testuser             /bin/sh
#comment

###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output ...

temp$ getent group | tail | select-column 1,3
pulse-access  129
gdm  130
lxd  131
nvidia-persistenced  132
systemd-coredump  999
kingpen  1000
lightdm  133
nopasswdlogin  134
testuser  1001
wireshark  135


# ... Here we select the 1st and 3rd fields, then we numerically sort on the 2nd column ...

temp$ getent group | tail | select-column 1,3 | sort -k 2 -n
pulse-access  129
gdm  130
lxd  131
nvidia-persistenced  132
lightdm  133
nopasswdlogin  134
wireshark  135
systemd-coredump  999
kingpen  1000
testuser  1001


# ... Finally, we pass the output along with specifying the separator of two spaces '  ' to split-column ... 

temp$ getent group | tail | select-column 1,3 | sort -k 2 -n | split-column '  '
pulse-access         129
gdm                  130
lxd                  131
nvidia-persistenced  132
lightdm              133
nopasswdlogin        134
wireshark            135
systemd-coredump     999
kingpen              1000
testuser             1001
#comment
############################################


function select-column () {
  python3 -c "import sys
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
"
}

