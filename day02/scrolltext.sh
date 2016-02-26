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
clear 
stt="HI My name is RICHA, and I am a very big fool :)"
tot=${#stt}
for((i=0 ; i<tot ; i++)); do 
printf "${stt:$i:1}"
sleep 0.05
done	
echo " "
