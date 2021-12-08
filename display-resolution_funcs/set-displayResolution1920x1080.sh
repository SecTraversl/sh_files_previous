############################################
# SYNOPSIS
# - The "set-displayResolution1920x1080" function sets the display resolution to 1920x1080 for the GUI.
#
###########
# NOTES
# - Name:  set-displayResolution1920x1080.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - 
#
###########
# EXAMPLE
<< '#comment'

#comment
############################################


function set-displayResolution1920x1080 () {
  xrandr --output Virtual1 --mode 1920x1080
}