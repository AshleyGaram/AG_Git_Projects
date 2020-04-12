#!/bin/bash
#
# Script Name : VPN.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop3" Function is activied, within the script, it then kills that process ID.   #  which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop3()
{
   echo ""
   kill -s TERM $TOP_PID
}
#
#Colour Variable's
#
Wh='\e[0;37'm		# White Default Colour
#
BR='\e[1;31'm		# Red options
BG='\e[1;32'm       	# Green Selection
BP='\e[1;35'm      	# Purple Display titles
BB='\e[1;34'm        	# Blue exit
BY='\e[1;33'm      	# Yellow mistakes
#
#Actual VPN Percent script below + Variable's
#
totalvpn=`last | grep vpn | cut -f2 -d" " | sort | uniq -c | head -1`
totalusers=`last | cut -f2 -d" " | sort | uniq -c | head -1`
#
#
#exloop3 is a variable to loop the while loop below
#
exloop3=5
#
# While loop starts
#
while [ $exloop3 = 5 ]
do
	clear
	sleep 4
	echo 
	echo -e "						${BP}$USER, Main Menu will start in a moment!!${Wh}              	                            "
	echo ""	
	echo ""                            
	echo -e "			${BP}This script (VPN.SH) will Display a Percentage of SSH Users who have login below.${Wh}	      "
	echo ""	
	echo                        
	echo ""
	echo ""
	echo ""
	echo -e "			${BR}	Total Number of Users who have login This System, Shown below!!" ${Wh}                         
	echo ""
	echo "				$totalusers"
	echo ""
	echo ""
	echo -e " 			${BR}	Total VPN Users who have login This System, Shown below!!"	${Wh}
	echo ""
	echo "				$totalvpn"
	echo ""
	echo ""
#
#Calculation Variable's Below
# 
	dec_percent=$(echo "$totalvpn / $totalusers" | bc -l | cut -c 1-5)
#
#Actual Percent Calculation below
#
	echo -e "				${BR}VPN Decimal percent =${Wh} $dec_percent"
	echo ""
#
#Calculation variable for actual percent below
#
	vpnpercent=$(echo "$dec_percent * 100" |bc -l | cut -c 1-3)	
#
#
	echo ""
	echo -e "				${BR}Actual VPN Percent of users loged in =${Wh}" "$vpnpercent" "%"
	echo ""
	echo ""
#
# Displays a second selection for going back to Main Menu, or Quiting the menu. 
#
	sleep 3
	echo "                "
	echo ""
	echo ""
	echo 
	echo -e "	To Exit Type ${BR}(Quit)${Wh}, or to go back to Main Menu, Type${BR} (Menu)${Wh}, or to Refresh Current Menu Type${BR} (Refresh)${Wh} "    
	echo 
	echo ""
	echo ""                                                            
#
# The Lines below are all the Input variables for the menu.	
#
		read vpnselection
			case "$vpnselection" in
#
# IF Input is Menu or menu then do below.
#
			[Mm]enu)
			sleep 2
			echo ""
			echo ""
			echo "	"
			echo  -e  "${BG} $USER will go back to main menu${Wh}" 
			echo "	"	
			sleep 2
			exec ./menu.sh
			;;
#
# Refresh Current menu. Activities below
#
			[Rr]efresh)
			sleep 2
			echo ""
			echo ""
			echo "	"
			echo -e    "${BG} Current Menu will be refreshed${Wh} "
			echo ""
			sleep 2
			exec ./vpn.sh	
			;;
#
# IF Input is Quit or quit then do below.
#
			[Qq]uit)
			sleep 2
			echo ""
			echo ""
			echo ""
			echo -e " 	${BB} $USER will Quit program${Wh}"   
			echo "	"
			sleep 3
			clear
			echo ""
			echo ""
			echo "	"
			echo -e "  ${BB}  Exiting..............................................................................................${Wh}"
			echo "	"
			closeloop3 
			exloop3=6
			;;
#
# IF Input doesn't match the vpn selection selection then Display Below, and start the DoWhile loop again.
#
			*)
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
			echo "	"
			sleep 2
			exec ./vpn.sh
			;;
#
# Ends the CASE VPN Percent selection	
#
		esac
done
	


