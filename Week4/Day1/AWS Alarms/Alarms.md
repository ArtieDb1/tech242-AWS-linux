# Alarms
Alarms are used to inform the operator when a VM has exceeded a metric that they are monitoring.

It is a relatively simple process to follow:
1. Create an alarm 
2. Let it monitor an EC2 Instance 
3. Set up an email subscription service for the alerts to go to
4. Use the VM and you will get the CPU to trigger the alarm successfully.

The Steps are as follows
## Step 1: Search CloudWatch on the EC2 instance

![Alt text](../../../readme-images/Week4Images/Step1.png)

## Step 2: Select All Alarms
![Alt text](../../../readme-images/Week4Images/Step2.png)

![Alt text](../../../readme-images/Week4Images/Step3.png)

## Step 3: Select Metrics
Metrics are a paramiter, the value of which are going to be used to trrigger the alarm. In this case the CPU utilisation.
### 3.1
![Alt text](<../../../readme-images/Week4Images/Select a metric.png>)

![Alt text](<../../../readme-images/Week4Images/Selecting Instance.png>)

### 3.2
**Remember:** Copy the Instance ID from the instance page so that you know what instance youre monitoring.
![Alt text](../../../readme-images/Week4Images/CopyingInstanceID.png)

## 3.3
![Alt text](../../../readme-images/Week4Images/4.1SelectingMetrics1.png)

![Alt text](../../../readme-images/Week4Images/4.1SelectMetrics.png)

![Alt text](<../../../readme-images/Week4Images/Selecting Instance.png>)

## Step 4: Specifying metric conditions
![Alt text](<../../../readme-images/Week4Images/Specify metric conditions.png>)

![Alt text](<../../../readme-images/Week4Images/Specify metric conditions2.png>)

## Step 5: Configuring the actions
![Alt text](../../../readme-images/Week4Images/4.2.png)

### Step 5.1: Creating an email subscription list
**Make sure you enter the email correctly**

![Alt text](<../../../readme-images/Week4Images/Creating email subscription.png>)

## Step 6: Setting the description

![Alt text](../../../readme-images/Week4Images/4.3.png)

## Final result
With the app running, I ran many commands very fast, 

![Alt text](../../../readme-images/Week4Images/FINALRESULT.png)
