## VPC's
On Azure these are Virtual Networks 
Imagine you have an Apartment building (AWS public cloud)
When you create a cloud everyone has a default VPC
A VPC is the the shared flat within the apartment buildings
The subnet is within the apartment and there are 3 of them normally. A subnet on Amazon is usually private by default

![Alt text](<../../readme-images/Week2 Images/VPC Building Diagram.png>)

These are default subnets come as 3 and can each be associated with their own availability zone

    - 1a -> zone can be for room 1
    - 1b -> zone can be for room 2
    - 1c -> zone can be for room 3

Each subnet (room) has an availability zone 
An availability zone can act like a contingency plan. If one availability zone goes down, there is another one available 

Today we will create a custom VPC with 2 rooms:
One room/subnet is going to be public and the other is going to be private.
With these 2 rooms you can decide their availability zones.

Look at the photo below. This is a diagram on how the entire VPC network works. The internet gateway acts as a door between the VCP and the Internet.

![Alt text](<../../readme-images/Week2 Images/Custom VPC.png>)


# Steps to create a VPC
### Step 1 
Create a VPC - route table.

![Alt text](<../../readme-images/Week2 Images/Creating a VPC step 1.png>)

![Alt text](<../../readme-images/Week2 Images/Creating VPC.png>)

#### Step 2
Creating each subnet / room

![Alt text](<../../readme-images/Week2 Images/Pressing subnet, vpc,route tables internet gateway.png>)

![Alt text](<../../readme-images/Week2 Images/Creating a subnet.png>)

#### Step 3
Creating the internet gateway

Must attach internet gateway to a VPC
![Alt text](<../../readme-images/Week2 Images/Attatching Ineernet gateway to VPC.png>)

#### Step 4
Create a public route table 
![Alt text](<../../readme-images/Week2 Images/Creating a route table.png>)
#### Step 5
Associate the public route table with the subnet
![Alt text](<../../readme-images/Week2 Images/Creating a route.png>)
#### Step 6
Associate the internet gateway with the route table 
![Alt text](<../../readme-images/Week2 Images/AttatchVPC1.png>)
#### Step 7
Check that we have set things up the way we intended to with the VPC.

![Alt text](<../../readme-images/Week2 Images/Final VPC Structure.png>)
#### Step 8 
Set up the Database VM

#### Step 9 
Set up the Api VM