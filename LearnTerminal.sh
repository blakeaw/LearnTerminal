#!/bin/bash

###############################################################################
# Interactive Bash script used to teach some of the basic terminal commands.
# Dependencies: directory LTdir and contents. script terminal_firework.sh                       
#
#
# Author: Blake Wilson - blake.wilson@utdallas.edu
# For questions, comments, suggestion, or to report problems contact me at the 
# provided e-mail address. 
#
#################################################################################


TOPDIR=`pwd`
at="@LT; "
cd ./LTdir

# Introduction--beginning
clear
echo "Welcome to the amazing world of the terminal!"
# Ask for player's name, which is variable Pname
echo "My name is LT. What is your name?"
echo " "
echo -n "Enter your name : "
read Pname
clear
echo -e "Well $Pname, I'm glad to meet you! I hope your ready for a great adventure\n into the wondrous terminal world!\n" 
# First enter read. Used to give player
# time to read text before moving on
echo -n "[Enter] to continue... "
read En 
clear
echo -e "Alright, let's get on then. We'll be covering several basic commands\n today. These commands will allow you to navigate your\n directories, do simple file displays, and more.\n"
echo " "

## pwd 
echo -e "The first command we will cover is the 'pwd' command."
echo -e "Try typing 'pwd' and then press enter.\n"
echo -n "$Pname$at" 
read com
pwd 
sleep 0.5
echo " "
echo -e "'pwd' stands for print working directory. This command displays\n your current directory (LTdir) and the path to that directory.\n"
echo -n "[Enter] to continue... "
read En 
clear

## ls 
echo -e "Now, the next command we will cover is the 'ls' command."
echo -e "Try typing 'ls' and then press enter.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "'ls' stands for list short. This command displays\n the contents of a directory, i.e. it lists all\n the files and sub-directories.\n"
echo -n "[Enter] to continue... "
read En 
clear

## cd 
echo -e "The next command we will cover is the 'cd' command."
echo -e "Try typing 'cd SomeDirectory' and then press enter.\n"
echo -n "$Pname$at" 
read com
cd SomeDirectory
sleep 0.5
echo " "
echo -e "'cd' stands for change directory. This command changes\n your current working directory, to the specified path.\n"
echo -n "[Enter] to continue... "
read En 
echo " "
echo -e "Now, let's check our use of the 'cd' command with 'pwd'.\n"
echo -e "Try typing 'pwd' and then press enter.\n"
echo -n "$Pname$at" 
read com
pwd
sleep 0.5
echo " "
echo -e "Great! As you can see, we successfully changed our directory to\n the one named 'SomeDirectory'.\n"
echo -n "[Enter] to continue... "
read En 
clear

## cp 

echo -e "Okay, let's go over some file/directory manipulation commands\n The first we will cover is the 'cp' command.\n "
echo -e "First we need to see what is in this directory.\n \n Use the 'ls' command.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "Okay, looks like there are two text files here. Let's try a new\n command called 'cp' on one of these files.\n"
echo -e "Type 'cp Afile_in_SomeDirectory.txt Shortfile.txt' and the press enter.\n"
echo -n "$Pname$at" 
read com
cp Afile_in_SomeDirectory.txt Shortfile.txt
sleep 0.5
echo " "
echo -e "Now use the 'ls' command again.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "'cp' stands for copy. This command makes a copy of the specified file to\n the specified name and path. e.g. We copied the text file 'Afile_in_SomeDirectory.txt' to\n the file 'Shortfile.txt' in our current directory.\n \n Note: To use 'cp' to copy directories requires the addition of the '-r' flag,\n e.g. 'cp -r adirectory anotherdirectory' \n"
echo -n "[Enter] to continue... "
read En 
clear 

## mv

echo -e "Okay, let's try another new command called 'mv'.\n"
echo -e "Type 'mv Shortfile.txt Junk.txt' and the press enter.\n"
echo -n "$Pname$at" 
read com
mv Shortfile.txt Junk.txt
sleep 0.5
echo " "
echo -e "Now use the 'ls' command.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "'mv' stands for move. This command moves the specified file/directory to\n a new name or path. e.g. We moved the text file 'Shortfile.txt' to\n the file 'Junk.txt', which now is in place of 'Shortfile.txt'.\n \n Note: 'mv' can be used to move a file or directory to another path, e.g. the command 'mv Shortfile.txt ../'\n would have moved 'Shortfile.txt' one directory up ('../' stands for one directory up).\n "
echo -n "[Enter] to continue... "
read En 
clear

## rm
echo -e "Okay, we've learned how to copy and move files/directories. Now, our\n next command is the 'rm' command."
echo -e "First let's recheck what is in this directory.\n Use the 'ls' command.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "Okay, let's try our new 'rm' command on the text file named 'Junk.txt'.\n"
echo -e "Type 'rm Junk.txt' and the press enter.\n"
echo -n "$Pname$at" 
read com
rm Junk.txt
sleep 0.5
echo " "
echo -e "Now use the 'ls' command.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "'rm' stands for remove. This command removes/deletes the specified file.\n e.g. We removed the text file 'Junk.txt' and so now it no longer exists.\n \n Note: 'rm' can be used to remove directories with the addition of the\n '-r' flag, e.g. 'rm -r adirectory', which will delete the directory along with all of its contents.\n If you need to remove an empty directory use the 'rmdir' command.\n -- Great care should be taken when using remove commands!!\n "
echo -n "[Enter] to continue... "
read En 
clear

## more
echo -e "So far we've learned some basic navigation and file/directory manipulation commands.\n Now let's move on to a few simple, but handy, file display commands.\n"
echo -n "[Enter] to continue... "
read En 
clear

echo -e "First let's recheck what is in this directory.\n \n Use the 'ls' command.\n"
echo -n "$Pname$at" 
read com
ls --color
sleep 0.5
echo " "
echo -e "Okay, let's try a new command called 'more' on the text file named 'Afile_in_SomeDirectory.txt'.\n"
echo -e "Type 'more Afile_in_SomeDirectory.txt' and the press enter.\n"
echo -n "$Pname$at" 
read com
more Afile_in_SomeDirectory.txt
sleep 0.5
echo " "

echo -e "'more' displays the contents of a file in the terminal window. It's a \n quick and useful way to check a files contents when \n navigating through directories from the terminal.\n \n Note: 'more' starts at the top of a file for display. For longer files\n it will only display a portion of the file. To continue to to the next\n portion use <spacebar>. To stop before the end of\n a file simply type 'q'. \n"
echo -n "[Enter] to continue... "
read En 
clear

## head and tail
echo -e "Now we are going to cover the last two commands, 'head' and 'tail'.\n"
echo -e "First let's try the 'head' command.\n"
echo -e "Type 'head AlongFile_in_SomeDirectory.txt'\n"
echo -n "$Pname$at" 
read com
head AlongFile_in_SomeDirectory.txt
sleep 1
echo " "
echo -e "Okay, now try the 'tail' command.\n"
echo -e "Type 'tail AlongFile_in_SomeDirectory.txt' and the press enter.\n"
echo -n "$Pname$at" 
read com
tail AlongFile_in_SomeDirectory.txt
sleep 1
echo " "

echo -e "'head' displays the top portion of a file in the terminal window, while\n 'tail' displays the bottom portion. These commands are especially useful\n for long files that you only need to see what is contained at\n the top or bottom of the file. \n"
echo -n "[Enter] to continue... "
read En 
clear
echo -e "Well, that concludes our adventure into the wonderful world of the terminal!\n"
echo -e "Would you like to see the terminal fireworks before you go? \n"
echo -n "Type answer [y, n] : " 
read answer
case $answer in 
		y) echo "Great! Here we go!\n"
			sleep 1
			source $TOPDIR/terminal_firework.sh;;
		n) echo "Oh, that's too bad. Maybe another time.\n";;
		
		*) echo "I'm not sure what that means, so I'm assuming no." ;;
	esac

echo -e "Well, I enjoyed our adventure and I hope you did too.\n \n Goodbye and Good Luck! \n \n LT signing off..." 
sleep 5

clear
echo "Thanks for playing Learn Terminal!"
echo "I hope you had some fun and learned some stuff."
echo "Writer/Developer: Blake Wilson"
echo "E-mail: blake.wilson@utdallas.edu"
sleep 10
clear
exit





