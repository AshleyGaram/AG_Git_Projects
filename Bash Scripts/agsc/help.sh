#!/bin/bash
#
#
# Script Name : Help.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloophelp" Function is activied, within the script, it then kills that process ID.   #  which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloophelp()
{
   echo ""
   kill -s TERM $TOP_PID
}
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
#
# Actual Script For Help.sh Below!
#
# While loop Variable Below
#
helpmenuloop=9
#
# While Loop Starts
#
while [ $helpmenuloop = 9 ]
do
	clear
	echo
	echo
	echo	-e				" 			${BP}	This Is An Help Menu, Explaining All the Functions of The Main Menu Script Program!!! ${Wh}"
	echo	-e				"									${BR}(Page 1)${Wh}					"
	echo
	echo
	echo					" Hello $USER "
	echo
	echo
	echo
	echo	-e				" ${BR}Menu.sh. The Main Menu :${Wh}  This is the Main Menu Program which lists in a brief detail what each Selection From the Main menu will do! "
	echo					"			   This is a pretty Simple Program, Basically to load the main menu program you type ./menu.sh. at the directory "
	echo					"			   were you have installed it to (Which is `pwd`)." 
	echo					"			   And then a Menu will load up with 8 Selections. Which will be explained below. "
	echo	
	echo					"			   Once the Menu has loaded, Just Activate each Selection from the menu, by typeing in the cosponsoring number. "
	echo					"			   (eg: 1,2,3,4,5,6,7, 8 ) All of these Functions are highlighted 'Red' Throughout the Program " 
	echo					"			   There are also cosponsoring words throughout the program, which are highlighted 'Red' to. Which can active "
	echo					"			   different functions, or close down the existing program. (eg : Quit, Refresh, q ,Q , Menu etc. )."
	echo					"			   These all must be typed in correct spelling as show, otherwise the program will said 'That this is not "
	echo					"			   an Option', and reload the menu again waiting for an selection which match that menu, which is shown!!!. "
	echo					""
	echo	-e				" ${BR}Topten.sh TopTen:${Wh}	   This is a Program which show the TopTen Users who Have Loged into you server, or pc Recently. "
	echo					"			   All it does is load, and prints the TopTen Users, with the Total amount of times they have login in, on the to "
	echo					"			   Left hand side, of the screen. And also shows they Name on the right hand side of the screen."
	echo					"			   Once that has been shown it will then, bring up a line ask weather you would like to Refresh or reload the current" 
	echo					"			   function. Return Back to Main Menu, Or Quit to Command Prompt. Once you have typed in the cosponsoring" 
	echo					"			   word ( Highlighted Red ), it will perform that Function."
	echo
	echo	-e				" ${BR}VPN.sh VPN:${Wh}		   This is a Program which adds up the Total amount of users who have loged in. And Then it Sorts out all the user who"
	echo					"			   have loged in through VPN ( Virtual Private Network ). Then it will print out a percent, of VPN Users who Login into"
	echo					"			   this computer"
	echo
	echo
	echo	-e				"	Please Press ${BR}(Enter)${Wh}, To show page 2 of Help Menu. " 
	echo
	echo
#
#
#
	read page2
#
#
#
	sleep 2
	clear 
	echo	
	echo	-e				"				${BP}Help Menu${Wh} ${BR}(Page 2),${Wh} ${BP}Explaining All the Functions of The Main Menu Script Program!!!${Wh} " 
	echo									
	echo
	echo
	echo	-e				" ${BR}Fileinfo.sh &  ${Wh}	"
	echo    -e                              " ${BR}Disrwxmenu.sh FileInfo :${Wh} These are two programs. The 'Disrwxmenu.sh' file is, basically a Sub Menu Program for the fileinfo.sh program. This just"
	echo					"			   loads up a second menu selection, which corresponding to Loading, Quitting, Refreshing the FileInfo.sh Program. Or Returning "
	echo					" 			   Back to the Main Menu."
	echo
	echo					"			   The 'Fileinfo.sh' is a program, which analyse the Permissions (Read, Write & Execute) of all the files in the current "
	echo					"			   directory (`pwd`)," 
	echo					"			   and copy's the results to the cosponsoring files (r_Finfo.txt 'Read Files', rw_Finfo.txt 'Read & Writeable,'"
	echo					"			   rwx_Finfo.txt 'Read, Write & Execute-able', w_Finfo.txt 'Writeable', and x_Finfo.txt 'Execute Files')."
	echo					
	echo	-e				" ${BR}Listlargest.sh :${Wh}	   This is a program which locates the largest file within the current directory " 
	echo					"			   (`pwd`), and prints the size & name matching"
	echo					"			   that file to the screen."
	echo    				
	echo	-e				" ${BR}Userinfo.sh :${Wh}		   This is a Program which Prints a message with a Terminal Number or ID, Date, the current user ( $USER )" 
	echo					"			   Home Directory," 
	echo					"			   The name of the current user, using this computer ($USER), and the total number of users who have currently loging in to"
	echo					"			   the computer or server a that time. And then it prints all that info to the screen."
	echo			
	echo	-e				" ${BR}Filetype.sh &${Wh} "
	echo	-e				" ${BR}Filetype_Msub.sh :${Wh}	   These are two Programs. The 'Filetype_Msub.sh' file is , basically a Sub Menu Program for the Filetype.sh program. This "
	echo					"			   just loads up a second menu selection, which corresponding to Loading, Quitting, Refreshing the FileInfo.sh Program. Or "
	echo					"			   Returning Back to the Main Menu."
	echo					
	echo					"			   The 'Filetype.sh' is a program, which asks for the user to input or type the location of a current Directory and then,"
	echo					"			   it checks if that directory exists, if it doesn't exist, it will show you that it doesnt exist. But if it exist's, it "
	echo					"			   will print out the location and the total contents within that location. In order of Directory's First, the Files."
	echo
	echo					" 			   The Second Selection of that program, also asks for the user to put in the current name of a file within the current "
	echo					"			   directory (which is `pwd`)," 
	echo					"			   and it will check if it exists. If it does exist, it will then print out the contents within, "
	echo					"			   that file to the screen. So that the user can analyse the contents within that current file."
	echo					
	echo
	echo	
	echo  					" This is the end of the Help Menu."
	echo					
	echo 	-e				" If You have any questions or problems, Please email : ${BG}Ashley Garam (7729537@student.swin.edu.au) ${Wh}"
	echo	
	echo
	echo
	echo -e " 			To Exit Type ${BR}(Quit) ,${Wh} or to go back to Main Menu, Type ${BR}(Menu), ${Wh} Or Type ${BR} (Refresh) ${Wh} to Refresh current menu. "	
	echo ""
	echo "                                                            "
#
# The Lines below are all the Input variables for the menu.	
#
		read helpmenuexit
		case "$helpmenuexit" in
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
		closeloophelp
		helpmenuloop=8 
		;;
#
# If Input is Refresh or refresh then do below!
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
		helpmenuloop=9 
		;;
#
# IF Input doesnt match the Help.sh Menu selection then Display Below, and start the DoWhile loop again.
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
		echo ""                            
		echo ""		
		echo ""
		echo ""
		sleep 1
		helpmenuloop=9 
		;;
#
# Ends the CASE Help.sh selection	
#
	esac
done 

