# **Infrastructure as a code (IAC)** – 
#### (Scripting and automation the provisioning and managing resources) the ability to provision and support your Cloud infrastructure using code instead of manual processes and settings.
#### Involves managing and provisioning infrastructure (servers, networks, RDS, Ec2, DBs,S3 bucket creation) resources using code and automation.
#### Automates the process of provisioning, configuration (open SSH port, HTTP port), and scaling of infrastructure, saving time and effort.

# What is Terraform?

#### Terraform is a tool that supports multi-cloud provider. i.e., it can be used by amazon, GCP, Azure etc..Terraform by Hashicorp has huge community users.
#### Amazon has individual IAC named as CloudFormationTemplate(CFT) and azure Azure Resource Manager(ARM),GCP has some other IAC to work within their cloud. 
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






