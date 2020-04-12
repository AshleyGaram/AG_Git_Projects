#!/bin/bash
#
#
#
#
# Script Name : Fileinfo.sh
# Author: Ashley Garam
# Date: 20/06/2014
#
# Exitting Function For Script
# (This Function allocates a process ID number To The Script which is Launched, to the variable $TOP_PID. So when the "closeloop8" Function is activied, within the script, it then kills that process ID.   # which is this script, which in turn shut down or terminates the current script running.) 
#
#
trap "exit 1" TERM
export TOP_PID=$$

function closeloop8()
{
   echo ""
   kill -s TERM $TOP_PID
}
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
# Touch makes files in Linux, These files will store all the results from the Read , Write & Executable analysing.
#
touch rw_Finfo.txt	#Read & Writeable Files
touch rwx_Finfo.txt	#Read, Writeable & Executable Files
touch r_Finfo.txt	#Readable Files
touch w_Finfo.txt	#Writeable Files
touch x_Finfo.txt	#Executable Files
touch rx_Finfo.txt	#Read & Executable Files
touch wx_Finfo.txt 	#write & Executable files
#
# Echo > "" clears the existing Results files each time the script loads
#
echo "$clear" > rw_Finfo.txt
echo "$clear" > rwx_Finfo.txt
echo "$clear" > r_Finfo.txt
echo "$clear" > w_Finfo.txt
echo "$clear" > x_Finfo.txt
echo "$clear" > rx_Finfo.txt
echo "$clear" > wx_Finfo.txt
sleep 2 
#
# Count Total files below in Directory variable
#
counttotal="`ls -l | grep ^- |  cut -f1 -d" "| cut -c 2-4 | wc -l`"
#
# While Loop Variable in order to loop and exit the menu.
#
exloop8=4
#
#Starts the count variable for the loop
#
count=0 
#
#
clear
echo -e "Total Files To Look at = ${BR}$counttotal${Wh}"
sleep 5	 
	while [ $exloop8 = 4 ]
		do
#
# starts counting		
#				
		echo		
		echo		
		echo -e "${BG}$count${Wh}" 
		(( count++ ))
		clear
		echo -e "Total Files To Look at = ${BR}$counttotal${Wh}"		
		echo
		echo
		echo -e "File Number = ${BR}$count${Wh}"
		echo
#
# Varible to display and analyse the permission of each file
#
		displayrwx="`ls -l | grep ^- | cut -f1 -d" " | cut -c 2-4 | sed -n ''$count'p'`"
		echo
		echo
		echo $displayrwx
		echo
#
# Case Menu Below to analyse the permission variables of each file in the directory
#		
			case "$displayrwx" in
#
# Permission Variable for Read files
#
				r--)
				echo -e "${BR}Readable${Wh}  File shown below"
				echo ""
				File_name_countr="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countr', which is current file being analysed to the count.
				echo				
				echo -e ${BG}$File_name_countr${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'r_Finfo.txt'"
				echo
				echo "$File_name_countr" >> r_Finfo.txt # Copys the results to the file r_Finfo.txt
				;;
#
# Permissions variable for Read & Executable Files
#
				r-x)
				echo -e "${BR} Readable & Writable ${Wh}  File shown below"
				echo ""
				File_name_countrx="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countrx', which is current file being analysed to the count.
				echo				
				echo -e ${BG}$File_name_countrx${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'rx_Finfo.txt'"
				echo
				echo "$File_name_countrx" >> rx_Finfo.txt # Copys the results to the file rx_Finfo.txt
				;;
#
# Permissions variable for Write & Executeable Files
#
				-wx)
				echo -e "${BR} Writeable & Executable ${Wh}  File shown below"
				echo ""
				File_name_countwx="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countwx', which is current file being analysed to the count.
				echo				
				echo -e ${BG}$File_name_countwx${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'wx_Finfo.txt'"
				echo
				echo "$File_name_countwx" >> wx_Finfo.txt # Copys the results to the file wx_Finfo.txt
				;;
#
# Permission Variable for Read, Write Executable files
#
				rwx)
				echo -e "${BR}Read, Write & Executable${Wh}   File shown below"
				echo
				File_name_countrwx="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countrwx', which is current file being analysed to the count.
				echo
				echo -e ${BG}$File_name_countrwx${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'rwx_Finfo.txt'"
				echo
				echo "$File_name_countrwx" >> rwx_Finfo.txt # Copy's the results to the file rwx_Finfo.txt
				;;
#
# Permission Variable for Read, Write
#
				rw-)
				echo -e "${BR}Read & Writeable${Wh}  File shown below"
				echo
				File_name_countrw="`ls -pQ | grep -v / | sed -n ''$count'p'`"  # Set the variable 'File_name_countrw', which is current file being analysed to the count.
				echo				
				echo -e ${BG}$File_name_countrw${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'rw_Finfo.txt'"
				echo
				echo "$File_name_countrw" >> rw_Finfo.txt # Copy's the results to the file rw_Finfo.txt
				;;
#
# Permission Variable for Writeable files
#
				-w-)
				echo -e "${BR}Writeable${Wh}  File shown below"
				echo
				File_name_countw="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countw', which is current file being analysed to the count.
				echo				
				echo -e ${BG}$File_name_countw${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'w_Finfo.txt'"
				echo
				echo "$File_name_countw" >> w_Finfo.txt # Copy's the results to the file w_Finfo.txt
				;;
#
# Permission Variable for Executable files
#
				--x)
				echo -e "${BR}Executable${Wh} File shown below"
				echo
				File_name_countx="`ls -pQ | grep -v / | sed -n ''$count'p'`" # Set the variable 'File_name_countx', which is current file being analysed to the count.
				echo
				echo -e ${BG}$File_name_countx${Wh} #Displays the Name of the file.
				echo
				echo "Copying result to File 'rw_Finfo.txt'"
				echo
				echo "$File_name_countx" >> x_Finfo.txt # Copy's the results to the file x_Finfo.txt
				;;
#
# End Of Case Menu For analyse the permission variables of each file in the directory of each file in the directory
#
			esac
		echo
		echo
		echo
		echo
# 
# To Exit The analysing of permission variables for all the files within the directory
# 
		if [ "$count" = "$counttotal"  ] 
			then
			echo
			echo
			echo -e "${BP}Entering The Results Menu${Wh}"
			sleep 4			
			echo
			echo
			exec ./disrwxmenu.sh
		fi
done	
