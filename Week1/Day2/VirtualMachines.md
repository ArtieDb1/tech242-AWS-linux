# Virtual Machines
Virtual machines are a service offered by large cloud service providers. It is an embodiment of virtualiszation. In the previous section, we looked at the 4 different types of cloud services: SAAS, PAAS, FAAS, and IAAS. 
We briefly looked at the image which gave a detailed overview of their differences. One of the main distinguishing factors between the services is how some services offer virtualisation. This is the feature that allows a user essentially to have a virtual computer with virtual storage and RAM. Think about it as a way of renting out a computer that you cannot see but can interact with.
If youre using Amazon and ou want one of these virtual machines, AWS has its own version called an EC2 instance (Elastic Compute Cloud 2). In this section, I will look at the components of Amazon's VM and in the [next section](HowAnAWSVM.md)  I will look at how to get your own one up and running.

## Components of an EC2 Virtual machine
1. Region
2. Virtual Private Cloud (VPC)
3. Subnet
4. Elastic network interface
5. Elastic Block Store
6. EC2 Instance
7. Public IP
8. Private IP
9. 9 Security Group 
10. Inbound rules 
11. Outbound rules 
12. AMI
13. Key pair

Region:

Analogy: Regions are like different continents on the planet.
Explanation: Just as continents are separate geographic areas, AWS regions are isolated locations where AWS data centers are located. Each region operates independently.

Virtual Private Cloud (VPC):

Analogy: VPCs are like private estates or gated communities.
Explanation: VPCs provide a virtual network environment where you can logically isolate resources and define your network space within AWS.

Subnet:

Analogy: Subnets are like neighborhoods within an estate.
Explanation: Subnets are subdivisions of a VPC, allowing further segmentation of resources within the VPC. They help organize and manage resources more efficiently.

Elastic Network Interface:

Analogy: ENIs are like modular connectors or plugs.
Explanation: ENIs are network interfaces that can be attached to instances in a VPC, enabling them to communicate with the internet or other instances.

Elastic Block Store (EBS):

Analogy: EBS is like a detachable, expandable storage unit.
Explanation: EBS provides persistent block-level storage volumes for EC2 instances. It's like having a detachable hard drive that you can attach to an instance for additional storage.

EC2 Instance:

Analogy: EC2 instances are like customizable houses or apartments.
Explanation: EC2 instances are virtual servers in the cloud that you can configure based on your needs, just like customizing a house with specific features.

Public IP:
Analogy: Public IPs are like mailing addresses for buildings.
Explanation: Public IPs are unique addresses used to access EC2 instances from the internet.
Private IP:

Analogy: Private IPs are like room numbers within a building.
Explanation: Private IPs are internal addresses within the VPC for communication between instances.
Security Group:

Analogy: Security groups are like security teams or guards for buildings.
Explanation: Security groups act as virtual firewalls, controlling inbound antd outbound traffic for instances.
Inbound Rules:

Analogy: Inbound rules are like entry permissions for buildings.
Explanation: Inbound rules specify allowed incoming traffic to instances based on defined criteria.
Outbound Rules:

Analogy: Outbound rules are like exit permissions from buildings.
Explanation: Outbound rules define allowed outgoing traffic from instances to specific destinations.
AMI (Amazon Machine Image):

Analogy: AMIs are like blueprints or templates for building houses.
Explanation: AMIs are pre-configured templates used to create EC2 instances, containing the operating system, software, and configurations.
Key Pair:

Analogy: Key pairs are like a set of unique keys to access specific rooms.
Explanation: Key pairs consist of a public key and a private key used for secure access to EC2 instances, similar to having a special key to access a secure area.
