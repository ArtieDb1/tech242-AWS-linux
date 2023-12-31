# what is a process
Somthing in memory that is possibly being used by the CPU. We say possibly because it is data that looks like its being processed by the cpu. 
There are 2 types:
1. System processes
2. User Processes - the command ps lists all of the user processes.
3. Processes provide services and dont actually provide an end interface for a user


ps aux - lists all of the processes with their details. is the command ends in d (demon), it means it is a background process
top - This is a process that shows all of the processes using the most cpu

to kill  a process, you must type in kill -q <process ID> - this will brute force kill a process

sleep 500 & - The & makes the sleep process run in the background 

Concurrent processing is just switching between processes very fast. 1 cpu, processes are sone one at a time
# Creating a script in bash
In this section, we will be creating script files to help with automation within Linux
A scritpt file is a file that is filled with linux commands. 
Before filling out this file with shell commands you must test to see that your commands are working.
Test out each command and then put those commands into a scriprt 

## How to create a script
.sh - is a script file 

Assuming you have logged into your virtual machine, and are able to run linux, Its should now be easy for you to create a new file.
Use the Nano command to do this and name the file provision.sh.
this will create a new file and open the text editor.
Please note that you do not need to use a touch command to create a new file if you are definitely going to append to the empty file stated in the nano command.

```
#!/bin/bash/
```
The line stated above is to be used at the beginning of every BASH file which tells the runner to go and find a BASH interprater using the given path.
The rest of the file is used for your commands. Look at the following screenshot.

![Alt text](../../readme-images/provisionSHFile.png)

This screenshot shows a list of commands that will install the nginx web server using terminal.
As a devops engineer, one thing you must always do is test all of your commands before putting them into a script. 
Before putting these into a nano editor we tested these commands individually:
1. sudo apt update -y will update every package within the list of packages in 
2. sudo apt upgrade -y will upgrade everything within the file

BONUS: Because we want to be able to log or seen when a process is done using echo, we can also change the colour of the the tect within the echo. Do this by defining an environment variable and using a predetermined code that represents the colour. Then you can call that colour in all of your echos. Look at the Photo for an example:

![Alt text](../../readme-images/ChangingTheColourOfText.png)


3. Once you have made your script, press ctrl+S then ctrl+Z which will return you to your main  terminal.
4. To run your script, all you have to so is put, "'./ScriptName.sh'" which will run every command in the script
5. Then you can type in the name of the package that you have installed with a -v at the end of the line
6. This will check to see that the version of the terminal has. This process will be repeated with a Java file.