# Learning Linux
Linux is an operating system and it is imperitive that there a user knows how to navigate the terminal.
The terminal uses BASH as its shell
#### What is BASH
Bash stands for Bourne Again SHell
A shell is simply just an interface that runs commands. Meaning bash is a special type of shell that is used by Linux.

## Bash commands
In linux there are many useful bash commands. The following are the commands that are useful to know within the terminal:

- -y: tells the terminal to do the following command without any questions
- uname: prints operating system that youre in
- whoami: prints the name of the user profile that is being logged
- cat: prints an output
- history: prints all previous commands in the terminal (Up to 500 of them). [ !7 will print the 7th element ]
- ls lists all contents of the folder that you are currently in 
  - [-l prints details of all files witin the directory]
  - [-la prints all of the hidden files in a directory]
- cd: changes directory
  - [cd .. changes to the parent directory of your current directory]
- ~: whenever you see this symbol, you can use it to go to the home directory or 
- curl <webAddress>: this will establish a connection with the server and can allow downloading from the specified address
  - you must declare the name you would like to gie to the file if you are downloading

```
curl https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg cat.jpg

```

- file: This will print out the file type
``` 
file cat.jpg 
```

- mv: This can move or rename files
```
mv cat.jpg cat.txt
mv cat.jpg -t /home/user/path
```
### File Handling from the terminal 
- rm: This will move the file stated after
  - [-r remove the following file and eveything in it recursively ]
  - [-f force remove the following file]
  - [-rf reccursively force remove the following files]
  - [-d permanently delete the following files]
- cat: prints out the contents of the following file but you can use it to concatinate 1 file's contents with another

```
cat filename.txt
cat file1.txt file2.txt
cat file1.txt file2.txt > combined_files.txt
```
- nano: opens a text editor ready for the use of the user
  - [Ctrl + S: saves what you have just typed]
  - [Ctrl + X: exits the text editor]
- head -n : prints the first n lines from the sprecified ext file
- tail -n : prints the last n lines from the sprecified ext file
- nl: this will add line numbers to every line in your file
- grep: this finds a word within a file
- touch: creates the following file
- 
```
cat joke.txt | grep "the chicken"
//eveerything before the pipe is a command
//the pipe takes the output of the first command and uses at input for the second function after it
//This command will get the output of the file and then find the words "the chicken"
//the terminal will show the lines that have "the chicken within them
```

- Look at the following code:

```
apt install tree
sudo apt instaall tree
sudo apt update
```
apt is a package containing commands provided by linux. This command won't work initially because you need to be logged in as the main user to install commands. To sort this out ultimately, you have to type sudo at the beginning of the line.
Sudo will log you in as a super user. It means Super User DO the following.
if you use sudo, it will also allow you to access the root directory. Without it, you can't change directory to the root folder.

***Remember, that every time you see a forward slash (/) at the beginning of a path, it means that it is an absolute path and the top of it will be the root directory