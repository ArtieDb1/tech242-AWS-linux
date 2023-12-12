# The EC2 Instance

One of the services that cloud services are the virtualisation. This is a service that gives a user virtual resources. One component that allows virtualization is the instance component. An instance is a virtual component and the EC2 instance is a type of VM that is offered by AWS.

## What is an EC2 instance
An EC2 is a virtual machine. In order to undertand the virtual machine, an analogy used effectivvely is likening the entire system to an apartment complex 
[Insert apartment analogy here]

## tips to creating an EC2 VM

To create an instance the steps are as follows
1. log into AWS
2. on the search menu, search for ec2 virtual servers in the cloud
3. Then press launch instance
4. Name the instance
5. search for an OS for the Linux to emulate in the application OS images section and type in (20230424)
   1. Here you must find the one with an iID that ends in 1e9 and is version 18.04 of ubuntu
6. keep the instance type as t2 micro - which determines how much one has to pay for a running instance
7. On the key-pair section, search tech242
8. In the next section, allow SSH and HTTP traffic 
9. Once you are happy with all of the instance press 'launch instance'


## How to run the VM
Before running the VM, one must have a file that holds the key pair values. These are private keys that only you should have and NEVER share.
once you have downloaded this and put it into a hidden .ssh folder, then you can open git bash. To run the VM, the steps are as follows.

1. Go to the .ssh folder and type in the following command : chmod 400 tech242.pem
