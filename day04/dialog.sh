#!/bin/bash
#########################################################
#
# @ Script name - scrolltext.sg
# 	Execution ./scrolltext.sh
# 	Arguments - None
#   version 0.1
################################################################
#   CONSTANTS
###############################################################
zenity --text-info \
--width=600 \
--height=600 \
--window-icon=$ICON\
       --title="What the F.U.K" \
       --filename=$INFO \
       --html=TRUE\
       --checkbox="I read and accept the terms."

case $? in
    0)
       
	rpt_select_activity
	;;
    1)
        echo "Exit"
	;;
    -1)
        echo "An unexpected error has occurred."
	;;
esac
