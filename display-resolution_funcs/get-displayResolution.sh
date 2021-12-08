############################################
# SYNOPSIS
# - The "get-displayResolution" function returns the current resolution of the GUI.
#
###########
# NOTES
# - Name:  get-displayResolution.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - Retrieved the 'xrandr' syntax I was looking for from here:  https://askubuntu.com/questions/584688/how-can-i-get-the-monitor-resolution-using-the-command-line
#
###########
# EXAMPLE
<< '#comment'

#comment
############################################


function get-displayResolution () {
  xrandr --current | grep '*' | awk '{print $1}'
}

