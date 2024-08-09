# Terraform Providers:
+ official(Hashicorp owned) eg:AWS,Azure,GCP,Oracle,Kubernetes
+ Verified(third-party tied up with HashiCorp) eg: Alibaba
+ Community(Individual providers)

If you change anything manually outside of terraform(in AWS), then the change will not be reflected in tfstate unless you have used the particular resource/values to build your infrastructure.

For Example: Scenario: You have given "ami" "instance_type" alone to create the infrastructure and not any details about "running (or) stop (or) terminate" state.
  + If you stop the running instance manually, then tfstate state will not be notified and terraform displays "Infrastructure are up-to-date" while you execute "$terraform Plan"
  + If you change the instance type (or) ami ID, then tfstate will compare the current state with desired state and terraform displays that there is a change to add.But the drawback here is tfstate file will not be updated and it shows only the old one.

# Terraform Refresh:
This command updates the state of terraform with real infrastructure.(this command will overwrites the tfstate file with current manual change in EC2 or any other resources)
```
terraform refresh
cat tfstate.tf
terraform show(JSON format)
```
