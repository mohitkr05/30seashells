#!/bin/bash
#########################################################
#
# @ Script name - SHELL SIRI
# 	Execution ./shellsiri.sh
# 	Arguments - None
#   version 0.1
################################################################
#   CONSTANTS
###############################################################
VERSION=0.1 #Current version - used for consistent distribution
TODAYIS=$(date +%m%d%y_%H%M) #helps in creating a unique file name.
CWD=$(pwd)
fn_print_character_at_time(){
str=$1	
	for((i=0 ; i<${#str} ; i++]]; do 
		echo "$(str:$i:1)"
		done			
}


fn_print_character_at_time "Hello!! How are you? 
My name is ShellSiri, I am your helper today, you may ask me any question today. If you want to exit, please say goodbye. Do you want to start, Please May I know your name? "
read choice
clear
fn_print_character_at_time "Hello !! $choice"
 
