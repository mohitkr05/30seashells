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
stt="This type of for loop share a common heritage with the C programming language. It is characterized by a three-parameter loop control expression; consisting of an initializer (EXP1), a loop-test or condition (EXP2), and a counting expression (EXP3)."
tot=${#stt}
for((i=0 ; i<tot ; i++)); do 
printf "${stt:$i:1}"
sleep 0.10
done	
echo" "
