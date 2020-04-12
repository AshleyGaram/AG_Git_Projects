#!/bin/bash
#
#
#
# Script Name : TopTen.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop2" Function is activied, within the script, it then kills that process ID.   #  which is this script, which in turn shut down or terminates the current script running.)  
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop2()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#Colour Variables
#
Wh='\e[0;37'm		# White Default Colour
#
BR='\e[1;31'm		# Red options
BG='\e[1;32'm       	# Green Selection
BP='\e[1;35'm      	# Purple Display titles
BB='\e[1;34'm        	# Blue exit
BY='\e[1;33'm      	# Yellow mistakes
#
# exloop2 is a Variable to exit or to keep the while loop below
#
exloop2=2
#
# DO while Loop Starts. Its keeps continue the loop until z = 1, when it will exit or do some other function
# 
while [ $exloop2 = 2 ]
do
#
# Displays The Function Below
#
	clear
	echo ""
	echo ""	
	echo -e " 						${BP}Top Ten Most Successful SSH Logins!!!!! (ON $USER Computer) ${Wh}"
	echo ""	
	echo ""
	echo -e "${BR} The Top Ten ssh logins show below${Wh}"
#	
# The Command to list the topten users from the last command
#
	echo 
	echo "` last | cut -f1 -d" " | sort | uniq -c | sort -rn | head -10`"
	echo ""
	sleep 3	
	echo ""
	echo -e " 			To Exit Type ${BR}(Quit) ,${Wh} or to go back to Main Menu, Type ${BR}(Menu), ${Wh} Or Type ${BR} (Refresh) ${Wh} to Refresh current menu. 	 		      "	
	echo ""
	echo "                                                            "
#
# The Lines below are all the Input variables for the Topten menu.	
#
		read toptenexit
			case "$toptenexit" in
#
# IF Input is Menu or menu then do below.
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
			closeloop2
			;;
#	
# If Input is Refresh Then do below
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
			exloop2=2
			;;
#
# IF Input doesn't match the toptenexit selection then Display Below, and start the DoWhile loop again.
#
			*)
			clear
			sleep 2
			echo 			""
			echo -e			"  ${BY}    That is not an option.${Wh}									 "
			echo 			""	
			echo ""                            
			echo ""
			echo ""
			echo ""
			sleep 2
			echo ""
			echo ""
			sleep 1
			exloop2=2
			;;
#
# Ends the CASE toptenexit selection	
#
		esac
done

