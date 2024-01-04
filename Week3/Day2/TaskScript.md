Pre-requisites

You will need an EC2 instance running the JSONVoorhees Java-Atlas app

Step 1: Do it manually

1. Find a scary cat image on the web (either jpeg, jpg, or png)

2. Download it onto your VM

3. Upload it to S3 storage to your own bucket

4. Set permissions to make your uploaded scary cat image publicly accessible

5. Modify the JSONVoorhees home page (at /web/home) to include the scary cat image saved & use Maven command(s) to see the changes take effect in your refreshed web browser tab

Step 2: Automate

Create a Bash script called use-s3-image-on-homepage.sh to upload the scary cat image to S3, set permissions for public access, modify the app code to use to uploaded image, and run the app

Create a Bash script called revert-to-normal-homepage.sh to reverse the changes to the app code, remove the uploaded image from S3 storage, and re-run the app

Test to make sure:

You can alternate between running one script and the other continually, so that one makes the changes and the other reverse all the changes.

Make sure your scripts will work whether the app is running or not initially

```
# 1, 2
curl -o ~/AngryCat.png https://media.wired.com/photos/5cdefb92b86e041493d389df/191:100/w_1280,c_limit/Culture-Grumpy-Cat-487386121.jpg
echo "Downloading Cat Image"

#3
aws s3 cp angryCat.png s3://tech242-artie-first-bucket
echo "Moving cat image to Bucket"

#4 

# Set the variables
bucket_name="tech242-artie-first-bucket"
object_key="AngryCat.png"

# Enable or disable public access settings
# Replace 'false' with 'true' to block public access
aws s3api put-public-access-block --bucket $bucket_name --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

aws s3api put-bucket-acl --bucket $bucket_name --key s3://tech242-artie-first-bucket/AngryCat.png --acl public-read
aws s3api put-object-acl --bucket $bucket_name --key $object_key --acl public-read


# 4.5
sudo mv angryCat.png /repo/springapi/src/main/resources/static/images/angryCat.png
"moved image to the project"

#5
cd /repo/springapi/src/main/resources/templates

sudo sed -i 's#<img src="/images/friday13th.jpg" alt="friday13thposter">#<img src="https://tech242-artie-first-bucket.s3.eu-west-1.amazonaws.com/AngryCat.png" alt="angryCatPoster">#g' home.html
"Image changed"

cd /repo/springapi
sudo mvn package
"Running the project"

```

Only do this in case you stopped your VM
```
sudo mvn spring-boot:start
```

#### Reverting the image and deleting the bucket
```
cd /repo/springapi/src/main/resources/templates

sudo sed -i 's#<img src="https://tech242-artie-first-bucket.s3.eu-west-1.amazonaws.com/AngryCat.png" alt="angryCatPoster">#<img src="/images/friday13th.jpg" alt="friday13thposter">#g' home.html


echo "Image reverted"

aws s3 rm s3://tech242-artie-first-bucket/AngryCat.png          # removes singular file from the bucket
echo "Removed Singular File From Bucket"


```
