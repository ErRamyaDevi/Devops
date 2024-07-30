# **Infrastructure as a code (IAC)** – 
#### (Scripting and automation the provisioning and managing resources) the ability to provision and support your Cloud infrastructure using code instead of manual processes and settings.
#### Involves managing and provisioning infrastructure (servers, networks, RDS, Ec2, DBs,S3 bucket creation) resources using code and automation.
#### Automates the process of provisioning, configuration (open SSH port, HTTP port), and scaling of infrastructure, saving time and effort.

# What is Terraform?

#### Terraform is a tool that supports multi-cloud provider. i.e., it can be used by amazon, GCP, Azure etc..Terraform by Hashicorp has huge community users.Multi cloud deployments.
#### Amazon has individual IAC named as CloudFormationTemplate(CFT) and Azure has Azure Resource Manager(ARM),GCP has some other IAC to work within their cloud. 
#### But Terraform are commonly accepted as it supports all.
#### Terraform needs access key and secret keys, while CFT, ARM doesn’t as it works inside their cloud provider.
#### Terraform codes are declarative and easy to understand by everyone. You can refer documentation in google.

### Benefits:
+ Consistency
+ Reduce manual errors
+ Scalability
+ Streamlines Infrastructure management.

### Declarative Vs Imperative:

##### Declarative – specifying the desired state and tools take of making it happen.
Example: Ansible, AWS CFT, Terraform, ARM
##### Imperative – specifying the steps to achieve the state.
Example: Bash script, Jenkins pipeline.

# **Terraform – API as Code (Aac)**
Application Programming interface (API).
Every User request over a web is API call. When a particular code/script enable request (or) access over a web is called API as a code. 
#### I.Q: How terraform works?
Terraform converts your request to the API call of AWS or any Cloud and gets the request back and again Terraform will send you the request back to you.
As a user, you aren’t directly talking to the APIs of AWS or any cloud. But you are writing Terraform scripts and terraform is converting your request into API calls.
So, terraform will take care of talking to all of those cloud providers using the concept of API as Code.
#### I.Q: Why do we use Terraform?
+ Manage any infrastructure
+ Track your infrastructure – Current state of your infrastructure will be tracked in terraform.tfstate file in root directory.
For better collaboration and scalability, Terraform provides various backend options where the state file can be stored remotely. such as Amazon S3 bucket, Terraform cloud, Azure Blob storage.
+ Automate Changes and Collaboration
Terraform supports collaboration among team members by allowing configuration files to be shared and modified collaboratively.
For example - If you want to upgrade the EC2 instance type, then update the terraform code and push this code to any VCS and raise the PR to validate the code with your teammate.
+ Standard configuration
Typically refers to the practice of defining and structuring your Terraform code like easily readable format, module structure, **variable usage** -- re-usability of code, as individual folder from outside

![image](https://github.com/ErRamyaDevi/Devops/assets/159974512/a3fc33cb-db46-45eb-ae5e-b300d3056da3)


## **Demo 1 in AWS linux**

### Install terraform on ubuntu22
[https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](url)
### $sudo apt-get update -y
### $sudo apt-get upgrade -y
### $sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

# Install the HashiCorp GPG key.
### wget -O- https://apt.releases.hashicorp.com/gpg | \
### gpg --dearmor | \
### sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

# Verify the key's fingerprint. The gpg command will report the key fingerprint:
### gpg --no-default-keyring \
### --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
### --fingerprint

# Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.
### echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

### $sudo apt update
### $sudo apt-get install terraform
### $terraform -help
### $terraform -help plan

# Do
Create input file – input.tf
Create output file – output.tf

# Don’t
Hard code any value into main file - main.tf

# Setup authentication for EC2 to run Terraform
# why we are creating IAM ROle?
### Though EC2 instance is a resource of AWS, it is a public instance which cannot be directly talk with any other AWS services. So we are creating IAM Role as below:
+ Create IAM Role with Admin access.
+ Attach this IAM role to ubuntu EC2 instance.

# How a third party tool will connect with AWS services(or) How local instance can be communicate with AWS instance?
+ First, create a IAM user instead of IAM Role, and associate recommended policies to IAM User.
+ Generate Access Key and Secret Key for particular IAM user.
+ Install AWS CLI/ Configure AWS in your local system and use generated Access key and secret Key to connect this local EC2 Instance.
  
# To execute the terraform
+ First to clone the below url in ubuntu machine
--> https://github.com/kohlidevops/terraform-project.git
### $git clone https://github.com/kohlidevops/terraform-project.git
### $cd /home/ubuntu/terraform-project/aws/local_state
### $ls -l
### File main.tf available.
+ $terraform init
+ $terraform plan
+ $terraform apply
+ $terraform destroy

### What is tfstate file?
   Terraform will use tfstate file to track everything that it created. For example, If Im going to change anything by tomorrow, then terraform will only understand using tfstate file that im updating the resource that I created yesterday.

### Why should we maintain tfstate file in remotely?
   Tfstate contains both sensitive and non-sensitive information. So we cant go with Git repositories.More people work with Terraform. So we can’t maintain with local system too.So we have a only option to store the tfstate file in remote backends. Everyone of your co-workers can access the file.Don’t manipulate or update the tfstate file by you own.


## **Demo 2 in linux locally**

![image](https://github.com/user-attachments/assets/48995479-96c2-4921-9d97-527fa7b187b2)

![image](https://github.com/user-attachments/assets/28a983a5-d1ba-482b-80ef-99d9b6ced3b0)

### Install using Command Prompt
+ Step 1: Start CMD with administrative privileges.
+ Step 2:Execute "wsl --install" command.
##### According to Microsoft the single command ''wsl --install" should automatically download and install Ubuntu.

## Get the Missing GPG Key:
### $ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
## Add the hashicorp Repository:
### $ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
## Update the Repository:
### sudo apt update
### $sudo apt-get install terraform
### terraform -v



