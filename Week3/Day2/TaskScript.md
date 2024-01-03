Pre-requisites

You will need an EC2 instance running the JSONVoorhees Java-Atlas app

Step 1: Do it manually

1. Find a scary cat image on the web (either jpeg, jpg, or png)

2. Download it onto your VM

3. Upload it to S3 storage to your own bucket

4. Set permissions to make your uploaded scary cat image publicly accessible

Modify the JSONVoorhees home page (at /web/home) to include the scary cat image saved & use Maven command(s) to see the changes take effect in your refreshed web browser tab

Step 2: Automate

Create a Bash script called use-s3-image-on-homepage.sh to upload the scary cat image to S3, set permissions for public access, modify the app code to use to uploaded image, and run the app

Create a Bash script called revert-to-normal-homepage.sh to reverse the changes to the app code, remove the uploaded image from S3 storage, and re-run the app

Test to make sure:

You can alternate between running one script and the other continually, so that one makes the changes and the other reverse all the changes.

Make sure your scripts will work whether the app is running or not initially

```
# 1, 2
curl -o ~/angryCat.png https://media.wired.com/photos/5cdefb92b86e041493d389df/191:100/w_1280,c_limit/Culture-Grumpy-Cat-487386121.jpg

#3
aws s3 cp angryCat.png s3://tech242-artie-first-bucket

#4


```
source main resources static images