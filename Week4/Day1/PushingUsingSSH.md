# Using SSH for CICD
We want to set up ssh to push to GitHub
So far we have been using https to push to get hub and not the ssh url

ssh credentials are more secure than https 
but the security flaw of ssh is that the system has to be 
secure too

An ssh key pair has to be generated and a key pair is madeusing an RSA algorithm
each key pair has a private key and a public key 

We want to genarate an ssh keypair using rsa algorithm on the loca computer


# Steps 
## Step 1 - create the ssh key pair
Go into the git bash terminal
```
cd .ssh
ssh-keygen -t rsa -b 4096 -C "artiedube7@gmail.com"
# -t expects an algorithm (RSA)
# -b expects how many bytes 
# -C specify the owner/generator of the key of the

```



![Alt text](<../../../readme-images/Week4Images/cicd/1.1Generating the keypair and storing in a file.png>)

![Alt text](<../../../readme-images/Week4Images/cicd/1.1.1Public andPrivateKeys.png>)

## Step 2 - Give the **PUBLIC** key to github

1. Log into github
2. Go to account settings
3. press **SSH and GPG Keys**
4. press **New SSH key**
5. copy the name of the key from git bash
6. type the following

```
cat artie-github-key.pub

```

Your screen should look like this:

![Alt text](<../../../readme-images/Week4Images/cicd/2Giving Github the key.png>)
![Alt text](../../../readme-images/Week4Images/cicd/2.1.png)
The shown image is a public key so its not bad to show
DO NOT DO THIS WITH A PRIVATE KEY (Anything without the .pub extention)

## Step 3 - Adding private key to the ssh register
1. go to git bash and type in the following command 
```
eval `ssh-agent -s`
# output is Agent pid 1572

```
This command starts an agent that will run and be able to run the add commands 
This is will get access to the key

2. Adding the identity using the email
```
ssh-add artie-github-key
# Output: Identity added: artie-github-key (artiedube7@gmail.com)
```


3. Type the following in the git terminal

```
ssh -T git@github.com
```
![Alt text](<../../../readme-images/Week4Images/cicd/3 Authenticating access.png>)

The command works in other folders too because we want to be able to push from anyway

## Step 4 - Creating the github repo
This is a step that has been repeated throughout the course so to keep the file simple, no further detail shall be provided

## Step 5 - Push to the github repo
using these commands
```
echo "# YourStatement" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:ArtieDb1/Test-ssh.git
git push -u origin main
```

![Alt text](../../../readme-images/Week4Images/cicd/pushedurl.png)

# Blockers!
Open a new terminal and try to push the new file in the new terminal you get the following:
