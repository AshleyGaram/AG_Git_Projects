# AG_Git_Projects

Scripting Assignment

Installation Instructions For All Ten Scripts:

•	These Scripts or programs must be install on a Linux Base System.

•	I Have Included a Tar.GZ file, ( called : agsc.tar.gz) which you should unzip into its own directory.

•	To Extract a tar.gz file, you must open “Terminal”, enter the directory were the tar.gz is located. (ider by typing it in, or dragging the file over from the ‘File Manager’ to the Terminal window, and adding cd (space) in front of it, (eg: cd ‘/home’ )).

•	Then Type tar –zxvf filename.tar.gz, (eg: tar –zxvf agsc.tar.gz) to extract the file into that directory.

•	Once you have unzip the zip file, you will notice about 10 (.sh) or script files. These are the program files, which  will need to be made executable.

•	Once you are in the directory. You must make all the files executable by the following commands, sudo chmod 755  -R `pwd` (This will make all the files in the current directory executable. Or you could do this individual to each file with this command, sudo chmod 755  filename.sh.

•	I have also included a bunch of test files in a separate directory (testf) which you could use to test option 3 & 6. You can make these files any permission you want. But you must first copy then into the directory with the script files. And then “Chmod” or change the permission of each file individual. With a command similar to the one show below.

1. sudo chmod 400 filename.txt (Read Permissions on file)
2. sudo chmod 200 filename.txt (write Permission on a file)
3. sudo chmod 100 filename.txt (executable permissions on a file)
4. sudo chmod 300 filename.txt (write & Execute permissions on a file)
5. sudo chmod 500 filename.txt (read & Execute permissions on a file)
6. sudo chmod 600 filename.txt (read & write permissions on a file)
7. sudo chmod 700 filename.txt (read, write & execute permissions on a   file)

•	Once all the .sh (or Script files) have been made executable, the program can be launched by typing ./menu.sh.




•	This will then bring up a menu with or the functions of the current program or script. In order to activate those functions, you must  type in the corresponding number or word referring to that functions. Which will then launch that function.

Functions Or Options Of  The Main Menu:

TopTen Function:
•	List the top 10 most successful user SSH logins, with user names and number of times logged in, in descending order of number of logins. 
Percentage of VPN Users:

•	Display the percentage of SSH users who have logged in using VPN.
(Virtual Network)

List The Current Read & Write Permissions:

•	List all the files of the current directory having read and write permission to the user.

Shows the Largest File within a Directory:

•	Presents the largest file in your directory and prints it out with its size.

A Program Which Prints the following to the screen:

•	Current home directory. 
•	Current user name.
•	The message "Today is :" with current date in Month Day Year  format
•	The message "No of users logged in :" with total no of current logged in users.
•	The message "Terminal :” With you own terminal number.
A Program which checks the users input to see if the file or directory exists:
•	Checks if name given is file or directory and if it is file then it should display content and if it is a directory then it should display the list. 

How to Run the TopTen.sh Script daily at 3:00am:

In order to run the topten script daily at 3am, you must type 00 03 * * * * /location of file, and enter. (Eg 00 03 * * * * /home/ash/script/topten.sh) This will set the script to run as a cron job at 3am every day of the week. 



