# Copying a file from our local machine to a VM

To get code onto our VM, we can either use git to import code of manyally copy our files onto a VM.
This file will show how to manually export files to a VM

## The SCP Command 
SCP stands for "secure copy" and its best to think of scp as a super safe way to move files between different places, like from your computer to another computer far away. It's like a super secure delivery service for your files!

```
scp /path/to/local/file username@remote-server:/path/on/remote/server //Basic idea on how they work
scp -i /path/to/private_key /path/to/local/file username@ec2-instance-ip:/path/on/ec2/instance //Example in practice 

```
You must open up your Terminal and use this to run a script
#!/bin/bash
