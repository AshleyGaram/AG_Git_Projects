#!/bin/bash
#
#
# Script Name : Userinfo.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop9" Function is activied, within the script, it then kills that process ID.   #  which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop9()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#
#
#
#Colour Variable's
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	#Red options
BG='\e[1;32'm   # Green Selection
BP='\e[1;35'm   # Purple Display titles
BB='\e[1;34'm   # Blue exit
BY='\e[1;33'm   # Yellow mistakes
#
# While Loop Variable in order to loop and exit the menu.
#
exloop9=5
#
# Terminal Nu Variable below
#
Term="`tty | cut -c 10-15`"
#
# Starts the while loop for UserInfo.sh Script
#
while [ $exloop9 = 5 ]
do
#
# Clears the temp live logon file
#
	w > /tmp/a
#
# Set a variable for the total amount of users login in.
#
	users_loged_in="`cat /tmp/a |  sed '1,2d' | awk '{print $1}' | uniq | wc -l`"
#
# Displays all the info below to the screen
#
	clear
	echo ""
	echo 	-e		"         Terminal No:"${BG} $Term ${Wh} "Today is" "${BG} ` date +'%B-%d-%Y      %T'`${Wh}  "
	echo ""
	echo ""
	echo ""
	echo ""
	echo 			" 		This is the current Users name home directory "
	echo 	-e		"		${BG} $HOME ${Wh}"
	echo ""
	echo ""
	echo 	-e		"		Current User name is = ${BG}$USER${Wh} "
	echo ""
	echo ""
#
# Displays the Total Number of Users loged in now.
#
	echo 	-e		"		No of users logged in = ${BG}$users_loged_in${Wh} "
	echo			""		
	echo ""
	echo ""
	echo -e " 			To Exit Type${BR} (Quit),${Wh} or to go back to Main Menu, Type${BR} (Menu),${Wh} Or Type${BR} (Refresh)${Wh} to refresh current menu. 	 		      "	
	echo ""
	echo "                                                            "
#
# The Lines below are all the Input variables for the menu.	
#
		read userinfo
			case "$userinfo" in
#
# Returns Back to the Main Menu Script
#
			[Mm]enu)
			sleep 2
			echo 			""
			echo -e			"   ${BG}   $USER will go back to Main Menu${Wh}								 "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo " "
			sleep 2
			exec ./menu.sh
			;;
#
# IF Input is Quit or quit then do below.
#
			[Qq]uit)
			sleep 2
			echo 			""
			echo -e 		" ${BB}    $USER will Quit program${Wh}									 "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo " "
			sleep 2
			clear
			echo 			""
			echo -e			"${BB}      Exiting...............................................................................${Wh}	  "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo ""
			closeloop9
			exloop9=4
			;;
#
# Refreshs The UserInfo Menu script
#
			[Rr]efresh)
			sleep 2
			echo 			""
			echo -e			"  ${BG}    Selection is refreshing NOW  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${Wh}		 "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo ""
			clear
			sleep 2
			exloop9=5
			;;
#	
# IF Input doesn't match the UserInfo selection then Display Below, and start the DoWhile loop again.
#
			*)
			sleep 2
			echo 			""
			echo -e			"  ${BY}    That is not an option.${Wh}									 "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo ""
			sleep 2
			echo 			""						
			echo 			""	
			echo ""                            
			echo ""		
			echo ""
			echo ""
			sleep 1
			exloop9=5
			;;
#
# Ends the CASE Userinfo selection	
#
		esac
done



