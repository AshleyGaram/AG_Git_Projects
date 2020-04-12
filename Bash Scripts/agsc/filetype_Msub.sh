#!/bin/bash
#
#
#
# Script Name : Filetype_Msub.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop7" Function is activied, within the script, it then kills that process ID.   # which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop7()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#
#
#
#
#
#Colour Varibles
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	# Red options
BG='\e[1;32'm	# Green Selection
BP='\e[1;35'm	# Purple Display titles
BB='\e[1;34'm	# Blue exit
BY='\e[1;33'm	# Yellow mistakes
#
#
#
#
#
#
#
#
	clear
	echo
	echo 
	echo 	
	echo 
	echo 	-e		"${BP}This Script is The Sub Menu For The FileType Script${Wh}"
	echo
	echo
	echo
	echo 	-e				"${BP}Sub Menu Below${Wh}"
	echo
	echo
	echo
	echo
	echo
	echo	-e	" To Refresh This Sub Menu Script, Type ${BR}(Refresh)${Wh}.		"
	echo
	echo
	echo	-e	" To ReTurn Back To Main Menu, Type ${BR}(Menu)${Wh}. "
	echo
	echo
	echo	-e	" To Run or Refresh The FileType.sh Script, Type ${BR}(Filetype)${Wh}."
	echo
	echo	
	echo	-e	" To Quit This Sub Menu and Return Back to Command Prompt, Type ${BR}(Quit)${Wh}.	"
	echo 		""	
	echo            "                                                                                                "
	sleep 1
	echo 		""
	echo -e		"      Please Type In Your ${BR} Selection ${Wh} below, from the menu above.  	"
	echo ""	
	echo                             
	echo ""
	echo ""
		read submenuFT
#
# Menu Selections Starts Below
#
			case "$submenuFT" in
#
# Refreshs FileType_Msub.sh Menu
#
				[Rr]efresh)
				clear
				sleep 1	
				exec ./filetype_Msub.sh 
				;;
#
# Returns Back to Main Menu.sh Script
#
				[Mm]enu)
				clear
				echo
				echo
				echo -e "${BB} Returning Back To Main Menu Now!.${Wh}"
				sleep 1
				exec ./menu.sh
				;;
#
# Launchs FileType.sh Script
#
				[Ff]iletype)
				clear
				echo
				echo
				echo -e "${BB} Loading FileType Script Now!!!${Wh}"
				echo
				sleep 1
				exec ./filetype.sh
				;;
#
# Quits FileType_Msub.sh to Command Prompt
#
				[Qq]uit)
				clear
				echo
				echo -e "${BB} Exiting To Command Prompt Now!!!${Wh}"
				echo 
				closeloop7
				;;
#
# If anything else other then what is specifed by the SubmenuFT variable is pressed or entered, it will refresh the Menu for the FileType_Msub.sh Script  
#
				*)
				clear
				echo -e "${BY} This is not an option${Wh}"
				sleep 3
				exec ./filetype_Msub.sh
				;;
		esac


                                    
