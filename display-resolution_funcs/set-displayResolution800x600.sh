############################################
# SYNOPSIS
# - The "set-displayResolution800x600" function sets the display resolution to 800x600 for the GUI.
#
###########
# NOTES
# - Name:  set-displayResolution800x600.sh
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


function set-displayResolution800x600 () {
  xrandr --output Virtual1 --mode 800x600
}
