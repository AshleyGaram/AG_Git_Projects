#!/bin/bash
#
# Script Name : Menu.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop1" Function is activied, within the script, it then kills that process ID.   #  which is this script, which in turn shut down or terminates the current script running.) 
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop1()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
# Colour Variables
#
Wh='\e[0;37'm	# White Default Colour
#
BR='\e[1;31'm	# Red options
BG='\e[1;32'm	# Green Selection
BP='\e[1;35'm	# Purple Display titles
BB='\e[1;34'm   # Blue exit
BY='\e[1;33'm   # Yellow mistakes
#
#
# exloop1 is a Variable to exit or to keep the while loop below
#
exloop1=0
#
# Do While Loop Starts. It keeps continuing the loop until x = 1, when it will exit or do some other function
#
while [ $exloop1 = 0 ]
do 
#
#Displays The Menu Below
#
	clear
	echo 				""
	echo -e				"                                ${BP}Ashley Garam Script Assignment${Wh}                               "
	echo 				""
	echo -e				"       Hello ${BR} $USER ${Wh}                                                                              " 
	echo -e				" 			              ${BG}   Menu Options Below${Wh}                                      "                  
	echo 				"                                                                                                "       
	echo 		                "                                                                                                "
	echo -e 		       "${BR}1. ${Wh} Lists Top Ten ${BR}SSH${Wh} Login.                                                     "
	echo                            "                                                                                                "
	echo -e 		       "${BR}2. ${Wh} Lists Display the percentage of SSH Users logged in via ${BR}VPN.${Wh}                 "
	echo                            "                                                                                                "
	echo -e			       "${BR}3. ${Wh} List All Read & Write Permissions to ${BR} $USER ${Wh}                           "
	echo                            "                                                                                                "
	echo -e			       "${BR}4. ${Wh} Extract largest file in ${BR}`pwd`${Wh} and print size of file to screen.               "
	echo                            "                                                                                                "
	echo -e			       "${BR}5. ${Wh} Display information about current user, (${BR} $USER${Wh} ) who has logined into Computer.       "
	echo                            "                                                                                                "
	echo -e			       "${BR}6. ${Wh} Checks Whether The Users input is idler a File Or a Directory.                                       "
	echo                            "                                                                                                "
	echo -e			       "${BR}7. ${Wh} Type ${BR}(Help)${Wh} or ${BR}7.${Wh}" "To bring up the help menu.                              	 "
	echo                            "                                                                                                "
	echo -e			       "${BR}8. ${Wh} Type${BR} 8${Wh}, ${BR} Q ${Wh} or ${BR} Quit. ${Wh} To Quit the menu          "
	echo                            "                                                                                                "
	echo 				""	
	echo                            "                                                                                                "
	sleep 1
	echo 				""
	echo -e				"      Please Type In Your ${BR} Selection ${Wh} below, from the menu above.  	"
	echo 			""	
	echo ""                            
	echo ""
#
# 		The lines below are all the Selection variable's for the menu. (Do while Selections)
#
		read selection
		case "$selection" in
#
# 		1. List Top Ten SSH Logins. Command activating below
#
		1)
		sleep 2
		echo 			""
		echo -e			"      ${BG}$USER has selected, 1. List TOP Ten SSH Logins ${Wh}		                                 "
		echo 			""	
		echo ""                            
		echo ""
		sleep 2
		exec ./topten.sh
		;;
#
#		2. Display the percentage of SSH Users logged in using vpn. command activating below
#
		2)
		sleep 2
		echo 			""
		echo -e 		"      ${BG}$USER Has Selected, Display the percentage of SSH Users logged in Via VPN!!	${Wh}	 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		exec ./vpn.sh
		;;
#
#		3. List All Read & Write Permissions to USER". Command Activating below.
#
		3)
		sleep 2
		echo 			""
		echo 	-e		"   ${BG}$USER Has Selected, 3. List All Read & Write Permission of the ${BR} $USER ${Wh}	               	 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		exec ./fileinfo.sh		
		;;
#
#		4. Listlarge.sh file. Command Acitivating below.
#
		4)
		sleep 2
		echo 			""
		echo 	-e		"     ${BG}$USER Has Selected 4. Extract Largest file in `pwd` and display size of largest file to screen ${Wh}	 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		exec ./listlarge.sh
		;;
#
#		5. Display information about current user $USER login into computer
#
		5)
		sleep 2
		echo 			""
		echo -e			"    ${BG}Display $USER's , info list ${Wh}                    	                                 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		exec ./userinfo.sh
		;;
#
#		6. Searchs an input to be idler a file or directory. Command Activating below.
#
		6)
		sleep 2
		echo 			""
		echo -e 		"   ${BG} This Selection will Search's for a given file or directory then displays it to the screen ${Wh}  "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		exec ./filetype_Msub.sh
		;;
#
#		7. Type Help or 7." "To bring up help menu. Command Activating below.
#
		7)
		sleep 2
		echo 			""
		echo 	-e		"   ${BG} This will display the Help Menu, for the main menu ${Wh}	                                 "
		echo 			""	
		echo 			""	
		echo ""                            
		echo ""		
		sleep 2
		exec ./help.sh
		;;
#
#		Loads Help Menu
#
		[Hh]elp)
		sleep 2
		echo 			""
		echo 	-e		"   ${BG} This will display the Help Menu, for the main menu ${Wh}	                                 "
		echo 			""	
		echo 			""	
		echo ""                            
		echo ""		
		sleep 2
		exec ./help.sh
		;;
#
#		8. Type 8, q or Quit to end the menu. Command Activating below.
#
		8)
		sleep 2
		echo 			""
		echo 	-e		"   ${BB} $USER you will Now Quit the Main Menu Program ${Wh}		                                 "
		echo 			""	
		sleep 2
		clear
		echo 			""
		echo 	-e		"   ${BB}    Exiting........................................ ${Wh}		                                 "
		echo 			""	
		sleep 3
		echo 			""	
		echo ""                            
		echo ""
		closeloop1
		exloop1=1
		;;
#
#	 	8. Quit Section below for exiting script
#
		[Qq]uit)
		sleep 2
		echo 			""
		echo 	-e		"   ${BB}    $USER you will Now Quit the Main Menu Program ${Wh}		                                 "
		echo 			""	
		echo ""                            
		echo ""
		echo "" 
		sleep 2
		clear
		echo 			""
		echo -e			" ${BB}      Exiting................................................................................. ${Wh}"
		echo 			""	
		echo 			""	
		echo ""                            
		echo ""	
		closeloop1
		exloop1=1			
		;;
#
#		8. q Section below for exiting script
#
		q)
		sleep 2
		echo 			""
		echo -e			"  ${BB}     $USER you will Now Quit the Main Menu Program	${Wh}	                                 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		clear
		echo 			""
		echo  -e		"   ${BB}    Exiting........................................................................... ${Wh}	"
		echo 			""	
		sleep 3	
		echo 			""	
		echo ""                            
		echo ""	
		closeloop1
		exloop1=1
		;;
#
#		Q Section below for exiting script
#
		Q)
		sleep 2
		echo 			""
		echo -e			"  ${BB}     $USER you will Now Quit the Main Menu Program	${Wh}	                                 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		clear
		echo 			""
		echo  -e		"   ${BB}    Exiting........................................................................... ${Wh}	"
		echo 			""	
		sleep 3	
		echo 			""	
		echo ""                            
		echo ""	
		closeloop1
		exloop1=1
		;;		
#
# 		The Line Below tells the script to loop if the input is anything else other then what is in the case selection command. 
#
		*)
		clear
		sleep 2
		echo 			""
		echo 	-e		"    ${BY}   $USER This is not an option ${Wh}	 			                                 "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		sleep 2
		echo 			""
		echo -e			"  ${BY}     $USER, Please type the number or letter referring to Menu	${Wh}                         "
		echo 			""	
		echo ""                            
		echo ""
		echo ""
		echo ""
		sleep 1
		echo 			""
		echo -e			"   ${BY}    $USER, Main Menu will start in a moment!!  ${Wh}            	                                 "
		echo 			""	
		sleep 4
		exloop1=0
		;;
#
# 	Ends the case selection	
#
	esac
done 


