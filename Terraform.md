# Infrastructure as a code (IAC) – 
##### (Scripting and automation the provisioning and managing resources) the ability to provision and support your Cloud infrastructure using code instead of manual processes and settings.
##### Involves managing and provisioning infrastructure (servers, networks, RDS, Ec2, DBs,S3 bucket creation) resources using code and automation.
##### Automates the process of provisioning, configuration (open SSH port, HTTP port), and scaling of infrastructure, saving time and effort.

# What is Terraform?

##### Terraform is a tool that supports multi-cloud provider. i.e., it can be used by amazon, GCP, Azure etc..Terraform by Hashicorp has huge community users.
##### Amazon has individual IAC named as CloudFormationTemplate(CFT) and azure Azure Resource Manager(ARM),GCP has some other IAC to work within their cloud. 
##### But Terraform are commonly accepted as it supports all.
##### Terraform needs access key and secret keys, while CFT, ARM doesn’t as it works inside their cloud provider.
##### Terraform codes are declarative and easy to understand by everyone. You can refer documentation in google.

### **Benefits:**
+ Consistency
+ Reduce manual errors
+ Scalability
+ Streamlines Infrastructure management.

# Declarative Vs Imperative:

##### Declarative – specifying the desired state and tools take of making it happen.
Example: Ansible, AWS CFT, Terraform, ARM
##### Imperative – specifying the steps to achieve the state.
Example: Bash script, Jenkins pipeline.


