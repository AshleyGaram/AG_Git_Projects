#!/bin/bash
#
#
#
# Script Name : Listlarge.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop6" Function is activied, within the script, it then kills that process ID.   # which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop6()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#
# Testing code ls -shSQI *.* | head -1
#
#
# ls -hSiQ -l *.* | cut -f6 -d" " | cut -f7 -d" " | head -1 # List largest file size, may need to set it to a variable like '$r' 
#
# ls -QI *.* | head -1 # List the name of the file.
# ls -SQI -l *.* | cut -f1 -d" " | head -1 #list file 2
#
# du -h *.* | sort | head -1 # another way of finding the largest file in your director
#
#
# Actual Script Starts for Listlarge.sh
#
# Variable for locating the largest file in the directory and print its size to the screen
#
filesize=`ls -hSiQ -l *.* | cut -f6 -d" " | head -1`
#
# Variable for locating the largest file in the directory and print its file name to the screen
#
filename=`ls -SQI *.* | head -1`
#  
#Colour Variables
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	# Red options
BG='\e[1;32'm   # Green Selection
BP='\e[1;35'm   # Purple Display titles
BB='\e[1;34'm   # Blue exit
BY='\e[1;33'm   # Yellow mistakes
#
# While Loop Variable in order to loop and exit the menu.
#
exloop6=8
#
#
# The Mini Main for the Listlarge.sh
#
clear
echo ""
echo ""
echo -e "${BP} This script will list the largest file and it size for `whoami` in `pwd` ${Wh}" 
echo 
echo ""
echo ""
echo -e "               ${BP}New Main Below${Wh}                    "
echo    "-----------------------------------------------------------"     
echo    "                                                           "
echo -e "  Please type ${BR} (Refresh) ${Wh} to refresh current selection  "
echo "                                                           "
echo -e "  Please type ${BR} (Quit) ${Wh} to Quit Program                       "
echo "                                                           "
echo "                                                           "
echo -e "  Please type${BR} (Menu) ${Wh} to return to Main Menu.               "
echo "                                                           "
echo -e "  Please type${BR} (Listlargest) ${Wh} to list the largest file, in   "
echo "    `pwd` for `whoami`!                                      "
echo "                                                           "
echo -e  "   ${BR}Please type your selection in below.${Wh}                    "
echo     "___________________________________________________________"
echo ""
#
# The Case Statnments for the Mini Menu above selections
#
	read menu5
		case "$menu5" in
#
# The Listlargest script launch case variable for mini menu
#
		[Ll]istlargest)
		clear
		echo ""
		echo -e " Finding largest File in ${BR}`pwd`${Wh} "                                     	
		echo ""	
		sleep 2		
		echo ""
		echo ""
		echo ""
		echo -e "${BR}$filesize${Wh}" "${BG}$filename${Wh}"
		sleep 2
		echo
		echo 
		echo
		echo -e " Please press ${BR} enter ${Wh} to continue "
		read enter
		exec ./listlarge.sh
		;;
#
# The Refresh statement case variable for mini menu
#
		[Rr]efresh)
		echo 			""
		echo -e			" ${BG}Selection is refreshed${Wh}             	                                                         "
		echo 			""	
		clear
		exec ./listlarge.sh
		;;
#
# The Main Menu Statement to return back to menu.sh
#
		[Mm]enu)
		clear
		echo 			""
		echo -e			" ${BG} Returning back to Main Menu Now${Wh}                   	                                         "
		echo 			""	
		echo ""
		sleep 2
		exec ./menu.sh
		;;
#
# The Quit Statement to quit  Listlarge.sh
#
		[Qq]uit)
		echo 			""
		echo -e 		" ${BB}Program will Quit${Wh}                	                                                         "
		echo 			""	
		clear
		echo 			""
		echo -e			" ${BB}  Exiting....................................................................................${Wh}  "
		echo 			""	
		echo "" 
		closeloop6                           
		exloop6=1
		;;
#
# The This is not an option selection for the mini menu in listlarge.sh
#
		*)
		clear
		echo 			""
		echo -e			" ${BY}  This is not an Option ${Wh}                 	                                                 "
		echo 			""	
		echo ""                           
		sleep 4
		exec ./listlarge.sh
		;;
	esac
		

