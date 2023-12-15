# User Data Automation 
When you are confident that your script works fine.

usually when automating, you must test everything manually you must: 
1. Test manually - SSH in the commands
2. Put commands into a script
3. User Data - creating a VM after altering the advanced settings

## User Data 
When you open an new VM, you have advanced settings at the bottom of the page of setup.
At the bottom of the advanced settings, you can add user data which you can add the contents of [a script](../../MySSHScript.txt) into.
This will mean that you dont have to worry about adding sudo in front of the commands because that user data is used in the root directory. USER DATA only runs once!
This is bad practice because if your script isnt 100% correct and idempotent, it can be difficult to troubleshoot the issue.

SO REMEMBER: user data starts in the root directory!

Think to your script. The first time that you worry about where the script is, you have to worry about the cloned git folder is going. Imagine your code being loaded into the root directory instead of the custom directory that you want.

Quick Note: {git clone [URL] repo} - will clone the git repo from the URL and call the cloned repo, 'repo'

### To combat this
You can add the appropriate directory changes (cd) into the script assuming that it is definitely planted into the root directory.