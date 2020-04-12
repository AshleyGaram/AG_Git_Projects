#!/bin/bash
#
#
#
# Script Name : Filetype.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop4" Function is activied, within the script, it then kills that process ID.   # which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop4()
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
#Colour Variables
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	#Red options
BG='\e[1;32'm	# Green Selection
BP='\e[1;35'm	# Purple Display titles
BB='\e[1;34'm	# Blue exit
BY='\e[1;33'm	# Yellow mistakes
#
# Variables which are used throughout out the Script
#
#Dirfind="`ls -Q -I -l -F $userinput | cut -f1-30 -d" "| wc -l`" ( Is a Variable used Is To See If the directory exists within the current filing system.)  
#
#FileLocate="`ls -Q -I -l -f | cut -f1-30 -d" " | grep $userinput | wc -l`" (Is a Variable used To See If The Current File ( Variable $Userinput ) exists within the current directory of the file system.)
#
#FileShow="`ls -pQ $userinput | grep -v /`" (Is a Variable used To Show the current files within the users input Directory.)
#
#DirShow="`ls -Q -I -l -F $userinput | cut -f1-30 -d" " | grep /`" ( Is a Variable used To Show the current Directorys matching the users input Data)
#
# Exit Loop Variable Below
#
exloop4=5
#
# Functions For Case Statements
#
# Function 1 (Directory Finder Result) below (An If Statement to see weather the directory exists within the current filing system)
#
function Dirfindresult(){
		if [ "$Dirfind" -gt "0" ]
			then
			echo ""
			echo ""
			echo -e "Found That ${BR}$userinput${Wh} Exist! Listing Content Below"
			echo
			echo -e "Total contents within ${BR}$userinput${Wh} = ${BR}$Dirfind${Wh}"			
			echo
			echo
			echo -e "Showing the ${BG}Sub Directory's${Wh} Below"
			echo
			echo -e ${BG}"$DirShow"${Wh} | more
			echo
			echo -e "Showing The ${BG}Files${Wh} below within ${BG}$useriput${Wh}"
			echo
			echo -e ${BG}"$FileShow"${Wh} | more
			echo
			echo
			echo -e "Please Press ${BR}Enter${Wh} To Continue"
			read enter
			echo
			echo -e " ${BB}Exiting This Program and Returning back to Sub Main Menu Now${Wh}"
			sleep 3
			exec ./filetype_Msub.sh
		elif [ "$Dirfind" = "0" ]
			then
			echo ""
			echo ""
			echo -e " This ${BR}Directory${Wh} Doesn't Exist!! Please Retype your Section when Menu Returns!"
			echo
			echo -e "Please Press ${BR}Enter${Wh} To Continue"
			read enter
			echo
			echo -e " ${BB}Returning back to Filetype.sh Menu${Wh}"
			sleep 4
			exec ./filetype.sh
		fi 
}
#
#
# Function 2 (File Finder Results) Below (An If Statement to see weather the file exists within the current filing system)
#
function FileFinderResult(){
		if [ "$FileLocate" = "1" ]
			then
			echo ""
			echo ""
			echo -e "Found That ${BR}$userinput${Wh} Exist in ${BR}`pwd`${Wh}! Listing Content Below"
			echo
			echo -e "Please Press ${BR}Enter${Wh} To Continue"
			read enter1
			echo
			echo
			cat $userinput | more
			echo
			echo -e "Please Press ${BR}Enter${Wh} To Continue"
			read enter2
			echo
			echo -e " ${BB}Exiting This Program and Returning back to Sub Main Menu Now${Wh}"
			sleep 3
			exec ./filetype_Msub.sh
		elif [ "$FileLocate" = "0" ]
			then
			echo ""
			echo ""
			echo -e " This ${BG}File${Wh} Doesn't Exist within ${BR}`pwd`${Wh} !! Please Retype your Section when Menu Returns!"
			echo
			echo -e "Please Press ${BR}Enter${Wh} To Continue"
			read enter
			echo
			echo -e "${BB} Returning back to Filetype.sh Menu${Wh}"
			sleep 4
			exec ./filetype.sh
		fi 
}
#
#
# Function 3. Case Statement for userinput variable 
#
#2.
function userinputmenu(){			
				case "$userinput" in
#
# Looks for a / (Forward Slash) in the variable $userinput, When Found it shows what's below and and sets the variable
#
				/*)
				clear
				echo -e "Searching For ${BR}$userinput${Wh} Exists below "
				echo
				echo ""
				echo ""
				Dirfind="`ls -Q -I -l -F $userinput 2>/dev/null | cut -f1-30 -d" "| wc -l`" # ( Is a Variable used Is To See If the directory exists within the current filing system.) 
				echo
				echo
#
# Loads Function 1 (Directory Finder Result) Which is a the top of the script (An If Statement to see weather the directory exists within the current filing system)
#
				Dirfindresult  
				;;
#
# The Exit Statement below.
#
				xxx)
				clear
				echo
				echo -e "${BB} Exiting This Program and Returning back to Sub Main Menu Now${Wh}"
				echo
				./filetype_Msub.sh
				;;
#	
# Looks for a "." (dot. Which Means a file has been entered) in the variable $userinput, When Found it shows whats below and and sets the variable
#
				*.)
				echo 
				echo 
				echo -e "Searching For File ${BR}$userinput${Wh}, within `pwd` To see if exists below "
				echo
#
# Is a Variable used To See If The Current File ( Sets Variable $Userinput ) exists within the current directory of the file system.
#
				FileLocate="`ls -Q -I -l -f $userinput 2>/dev/null | cut -f1-30 -d" " |  wc -l`"
#
#  Loads Function 2 (File Finder Results) Which is at the top of the script (An If Statement to see weather the file exists within the current filing system)
#
				FileFinderResult		
				sleep 2
				;;
#
# Looks for any letter within the usersinput variable. Because some files in Linux only have a filename.
#
				[123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]*)
				clear 
				sleep 3
				echo ""
				echo ""
				echo -e "Searching For File ${BR}$userinput${Wh}, within ${BR}`pwd`${Wh} To see if exists below "
#
# Loads Function 2 (File Finder Results) Which is at the top of the script (An If Statement to see weather the file exists within the current filing system)
#
				FileFinderResult
				;;
#	
# Looks for any letter within the usersinput varaible. Because some files in Linux only have a filename.
#
				
				[abcdefghijklmnopqrstuvwxyz]*)
				clear 
				sleep 3
				echo ""
				echo ""
				echo -e "Searching For File ${BR}$userinput${Wh}, within ${BR}`pwd`${Wh} To see if exists below "
#
# Loads Function 2 (File Finder Results) Which is at the top of the script (An If Statement to see weather the file exists within the current filing system)
#
				FileFinderResult
				;;
			esac
}
#
# The While loop Starts Below
#
while [ $exloop4 = 5 ]
do
#
# The Mini Menu for the FileType Script Below
#
	clear
	echo
	echo
	echo
	echo	-e					"${BP}This Script Checks to See whether the users input is ider a directory or a file.${Wh}"
	echo
	echo
	echo													
	echo	-e					" To Quit This Script, Type ${BR}(xxx)${Wh} "
	echo
	echo
	echo	-e					 " Type Ider a ${BG}Directory${Wh} ${BR}(/'YourFolder')${Wh} or a ${BG}File${Wh} ${BR}(script.sh)${Wh} to Search for below"
	echo
	echo
	echo
	echo
#
# The User Inputs they request
#
		read userinput
#
# All of the Variables below are set with the $usersinput variable. Which are used throughout the script  
#		
		Dirfind="`ls -Q -I -l -F $userinput 2>/dev/null | cut -f1-30 -d" "| wc -l`"
		FileLocate="`ls -Q -I -l -f -1 $userinput 2>/dev/null | cut -f1-30 -d" " | wc -l`"
		FileShow="`ls -pQ $userinput 2>/dev/null | grep -v /`"
		DirShow="`ls -Q -I -l -F $userinput 2>/dev/null | cut -f1-30 -d" " | grep /`"
#
# Load the function 3 Case Statnment (userinputmenu) for the variable $usersinput, to analyse weather what the user has inputed is a file or a directory.
#
		
				userinputmenu
closeloop4
done



