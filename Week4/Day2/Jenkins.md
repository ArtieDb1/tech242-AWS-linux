# Jenkins
Jenkins is a very powerful tool that helps release software from an initial push on github to a fully functional VM that runs your app. It allows for Continuous deployment of an app

![Alt text](<../../readme-images/Week4Images/cicd/Git pipeline.png>)

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins for CICD.png>)

Jenkins waits for any notification of a change on the dev branch on git hub

## Step 1: Setting public key for github
We give the public key so that Jenkins with the private key can unlock github with the public key

1. open git bash

This is so that we have a key from jenkins to the repo

```
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "artiedube7@gmail.com"
 artie-jenkins-2-github-jsonvh
```
1. go to the json vh repo on github and press **settings**
2. press **Deploy keys** and add a key
3. add the public key to the box and press enable


![Alt text](../../readme-images/Week4Images/cicd/Jenkins/1DeployKey.png)

Here is the command:
```
cat artie-jenkins-2-github-jsonvh.pub
```
![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/2 Adding new key.png>)

###### End of Step 1 Your screen should look like the following
![Alt text](../../readme-images/Week4Images/cicd/Jenkins/Setp1FinalResult.png)

## Step 2: Start Jenkins service

1. You were given credentials to log into Jenkins so use them to log in.

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/3 Log into jenkins.png>)

### 2.1: Creating a job
Lets create our job

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/4 Creating a job.png>)

Naming the job:
![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/5 Naming the job.png>)

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/6 Selecting build steps.png>)

Every time you run a job, it creates a build!
Remember to limit the builds to 3.

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/9 Discarding old jobs.png>)

If you forget to do this, then press configure on your job after finding it at the dashboard
![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/10 Configure .png>)


Scroll down to build steps, press **Execute shell**
Type in the following command 
```
uname -a
```
![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/13 Build Steps.png>)

Press Save! 
### 2.2 Building the job
Go to the dashboard then build the job.

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/7 Building job.png>)

Look at the image below the Executor status part says idle because there are no jobs running. 
They do build up eventually to show all of the jobs that are running 

## Step 3: Seeing the output of the command line

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/8 seeing output of job pt1.png>)

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/8 seeing output of job pt2.png>)

We can see here that the command line successfully processed our command 

## Build A pipeline of jobs
To build a pipeline you must manipulate the post-build tasks by configuring the job.

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/10 Configure .png>)

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/11 Building a pipeline 1.png>)

Type in  the name of the other job that you want to build after this one is complete 

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/11 Building a pipeline 2.png>)

I decided to configure the bost build steps of my first job

![Alt text](<../../readme-images/Week4Images/cicd/Jenkins/12 Building first Job in pipeline.png>)

Now look at the next 2 images.
The 2 jobs executed concurrently. I have underlined the times that they finished executing to illustrate how a pipeline works