#!/bin/bash
#
#
#
# Script Name : Disrwxmenu.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop5" Function is activied, within the script, it then kills that process ID.   # which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop5()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#
#
#
#Colour Variables
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	# Red options
BG='\e[1;32'm	# Green Selection
BP='\e[1;35'm	# Purple Display titles
BB='\e[1;34'm	# Blue exit
BY='\e[1;33'm	# Yellow mistakes
#
# While Loop Variable in order to loop and exit the menu.
#
exloop5=4
#
# While Loop Starts
#
while [ $exloop5 = 4 ]
do
#
# Displays a Menu
#
	clear
	echo 
	echo 	
	echo 
	echo 	-e	"${BP}This script Displays the Results Of the Read & Write files in $pwd Directory${Wh}"
	echo
	echo
	echo
	echo 	-e	"	${BP}	Display Read, Write ,Execute Files Menu Below	${Wh}	"
	echo
	echo
	echo
	echo
	echo
	echo	-e	" To Display Files with ${BR}Read Permissions${Wh} to $whoami Type ${BR}(Rfile)${Wh}		"
	echo
	echo
	echo	-e	" To Display Files with ${BR}Write Permissions${Wh} to $whoami Type ${BR}(Wfile)${Wh}	"
	echo
	echo
	echo	-e	" To Display Files with ${BR}Read & Write Permissions${Wh} to $whoami Type ${BR}(RWfile)${Wh}	"
	echo
	echo
	echo	-e	" To Display Files with ${BR}Read & Execute Permissions${Wh} to $whoami Type ${BR}(RXfile)${Wh} "
	echo
	echo
	echo	-e	" To Display Files with ${BR}Write & Execute Permissions${Wh} to $whoami Type ${BR}(WXfile)${Wh} "
	echo
	echo
	echo	-e	" To Display Files with ${BR}Read, Write & Execute Permissions${Wh} to $whoami Type ${BR}(RWXfile)${Wh}	"
	echo
	echo
	echo	-e	" To Display Files with ${BR}Execute Permissions${Wh} to $whoami Type ${BR}(Xfile)${Wh}	"
	echo
	echo
	echo	-e	" To Refresh the Results for the files with ${BR}Read, Write & Execute Permissions${Wh} to Directory $pwd & User $whoami Type ${BR}(RWXrefresh)${Wh} "
	echo
	echo
	echo
	echo
	echo
	echo
	echo  -e          "To Exit Type ${BR}(Quit)${Wh}, or to go back to Main Menu, Type${BR} (Menu)${Wh}, or to Refresh Current Menu Type${BR} (Refresh)${Wh} "
	echo                             
	echo
	echo
	echo	
	echo            "                                                                                                "
	sleep 1
	echo 		""
	echo -e		"      Please Type In Your ${BR} Selection ${Wh} below, from the menu above.  	"
	echo ""	
	
	echo "" 
#                                                           
# The Lines below are all the Input variables for the menu.	
#
		read disrwxmenu
			case "$disrwxmenu" in
#
# Readable Files Selection
#
				[Rr]file)
				clear
				echo
				echo
				echo -e		" Displaying Files with ${BR}Read Permissions${Wh} to $whoami "
				echo
				echo
				echo		
				cat r_Finfo.txt # Displays Or The Data from r_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Writeable Files Selection
#
				[Ww]file)
				clear
				echo
				echo
				echo 	-e	" Displaying Files with${BR} Write Permissions ${Wh} to $whoami "
				echo
				echo
				echo		
				cat w_Finfo.txt # Displays Or The Data from w_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Read & Executeable Files Selection
#
				RXfile)
				clear
				echo
				echo
				echo 	-e	" Displaying Files with${BR} Read & Executable Permissions ${Wh} to $whoami "
				echo
				echo
				echo		
				cat rx_Finfo.txt # Displays Or The Data from rx_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Write & Executeable Files Selections
#
				WXfile)
				clear
				echo
				echo
				echo 	-e	" Displaying Files with${BR} Write & Executeable Permissions ${Wh} to $whoami "
				echo
				echo
				echo		
				cat wx_Finfo.txt # Displays Or The Data from wx_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Read & Writeable Files Selection
#
				RWfile)
				clear
				echo
				echo
				echo 	-e	" Displaying Files with ${BR}Read & Write Permissions${Wh} to $whoami "
				echo
				echo
				echo		
				cat rw_Finfo.txt # Displays Or The Data from rw_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4
				;;
#
# Read, Writeable Executable Files Selection
#
				RWXfile)
				clear
				echo
				echo
				echo 	-e	" Displaying Files with ${BR}Read, Write & Execute Permissions${Wh} to $whoami "
				echo
				echo
				echo		
				cat rwx_Finfo.txt # Displays Or The Data from rwx_Finfo.txt
				echo
				echo 	-e	" Please Press ${BR}'Enter'${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Executable Files Selection
#
				[Xx]file)
				clear
				echo
				echo
				echo -e		" Displaying Files with ${BR} Execute Permissions ${Wh} to $whoami "
				echo
				echo
				echo		
				cat x_Finfo.txt # Displays Or The Data from x_Finfo.txt
				echo
				echo -e		" Please Press ${BR} 'Enter' ${Wh} To Continue"
				read user
				exloop5=4						
				;;
#
# Refreshers or clears all the files for the perrmission analysing
#
				RWXrefresh)
				clear
				echo
				echo
				echo 	-e	" Refreshing the Results for the files with ${BR}Read, Write & Execute Permissions${Wh} to Directory $pwd & User $whoami ! "
				echo
				echo
				echo 	-e	" Please Press ${BR} 'Enter' ${Wh} Now!!!!"
				read user
				exec ./fileinfo.sh						
				;;
#
# Returns back to Main Menu.sh 
#																	
				[Mm]enu)
				sleep 2
				echo ""
				echo ""
				echo "	"
				echo  -e  "${BG} $USER will go back to main menu ${Wh}" 
				echo "	"	
				sleep 2
				exec ./menu.sh
				;;
#
# Refresh Current menu below
#
				[Rr]efresh)
				sleep 2
				echo ""
				echo ""
				echo "	"
				echo -e    "${BG} Current Menu will be refreshed${Wh} "
				echo ""
				sleep 2	
				exloop5=4
				;;
#
# Quits Current Menu
#
				[Qq]uit)
				sleep 2
				echo ""
				echo ""
				echo ""
				echo -e " 	${BB} $USER will Quit program ${Wh}"   
				echo "	"
				sleep 3
				clear
				echo ""
				echo ""
				echo "	"
				echo -e "  ${BB}  Exiting..............................................................................................${Wh}"
				echo "	" 
				closeloop5
				exloop5=2
				;;
#
# This is Not an Option, Selection
#
				*)
				clear
				sleep 2
				echo ""
				echo ""
				echo "	"
				echo  -e   "${BY}That is not an option.${Wh}"
				echo "	" 
				sleep 2
				echo ""
				echo ""
				echo "	"
				exloop5=4
				;;
#
# Ends the CASE Disrwxmenu selection	
#
			esac
done
