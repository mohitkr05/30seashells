#!/bin/bash
#########################################################
#
# @ Script name - TO DO APP
# 	Execution ./todoapp.sh
# 	Arguments - None
#   version 0.1
################################################################
#							CONSTANTS
###############################################################

VERSION=0.1 #Current version - used for consistent distribution
TODAYIS=$(date +%m%d%y_%H%M) #helps in creating a unique file name.
CWD=$(pwd)
FILENAME=$CWD/todo.db
FINISHED=$CWD/finished.db
TEMP=$CWD/temp.db

##################################################################
#							FUNCTIONS 
##################################################################

fn_create_task_db (){
if [ ! -f "$1" ]; then
  touch $1
fi
}


fn_write_todo(){
	echo "Please enter what you want to do"
	read text
	fn_total_tasks
	((nextline=totalline+1))
	echo $nextline $TODAYIS $text >> $FILENAME
	
}

fn_read_todo(){
	echo "Linenumber Date  Task"
	echo "----------------------"
	cat $FILENAME	
}	

fn_mark_task_done(){
	fn_read_todo
	echo "Which Task you want me to strike-off"
	read linenumber
	cat $FILENAME | sed -n -e $linenumber"p" >> $FINISHED
	cat $FILENAME | sed -n -e $linenumber"d" > $TEMP
	cat $TEMP > $FILENAME
	rm $TEMP 
	
	}
fn_total_tasks() {
	totalline=$(cat $FILENAME | wc -l)
	
}	

##################################################################
#							FUNCTIONS END 
##################################################################

##################################################################
#							MAIN PROGRAM STARTS
##################################################################
clear
echo "
#################################################################
# 	WELCOME TO THE TODO APP 				#
#		Version $VERSION					#
#################################################################"
noexit=1
fn_create_task_db $FILENAME
fn_create_task_db $FINISHED
while [ $noexit -eq 1 ]
do
echo "
1) Add a task
2) Read Pending tasks
3) Mark a task done
0) Exit
"
read choice
case $choice in
	1) fn_write_todo;;
	2) fn_read_todo;;
	3) fn_mark_task_done;;
	*) noexit=0;;
esac
done
