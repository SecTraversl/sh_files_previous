#!/bin/bash

############################################
# SYNOPSIS
# - The "get-variablesInProfileFiles" function searches certain files to see if variables have been defined within them that are present within the current shell instance.  In particular, these files are searched for occasions when the "=" equal sign is used: /etc/environment, /etc/profile, and ~/.bashrc.
#
###########
# NOTES
# - Name:  get-variablesInProfileFiles.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - This was helpful:  https://linoxide.com/add-path-command-line/
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output when we run the function ...

temp_dir$ get-variablesInProfileFiles | egrep -v "alias \w+="
/etc/environment:PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
/etc/profile:  if [ "${BASH-}" ] && [ "$BASH" != "/bin/sh" ]; then
/etc/profile:    # PS1='\h:\w\$ '
/etc/profile:      PS1='# '
/etc/profile:      PS1='$ '
/home/kingpen/.bashrc:HISTCONTROL=ignoreboth
/home/kingpen/.bashrc:HISTSIZE=1000
/home/kingpen/.bashrc:HISTFILESIZE=2000
/home/kingpen/.bashrc:[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
/home/kingpen/.bashrc:    debian_chroot=$(cat /etc/debian_chroot)
/home/kingpen/.bashrc:    xterm-color|*-256color) color_prompt=yes;;
/home/kingpen/.bashrc:#force_color_prompt=yes
/home/kingpen/.bashrc:  color_prompt=yes
/home/kingpen/.bashrc:  color_prompt=
/home/kingpen/.bashrc:if [ "$color_prompt" = yes ]; then
/home/kingpen/.bashrc:    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
/home/kingpen/.bashrc:    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
/home/kingpen/.bashrc:    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
/home/kingpen/.bashrc:#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#comment
############################################


function get-variablesInProfileFiles () {
  grep "=" /etc/environment /etc/profile ~/.bashrc
}

