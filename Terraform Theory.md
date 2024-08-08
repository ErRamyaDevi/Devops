# Terraform Providers:
+ official(Hashicorp owned) eg:AWS,Azure,GCP,Oracle,Kubernetes
+ Verified(third-party tied up with HashiCorp) eg: Alibaba
+ Community(Individual providers)

If you change anything manually outside of terraform(in AWS), then the change will not be reflected in tfstate unless you have used the particular resource/values to build your infrastructure.

For Example: Scenario: You have given "ami" "instance_type" alone to create the infrastructure and not any details about "running (or) stop (or) terminate" state.
  + if you stop the running instance manually, then tfstate state will not be notified and terraform displays "Infrastructure are up-to-date" while you execute "$terraform Plan"
  + If you change the instance type (or) ami ID, then tfstate will compare the current state with desired state and terraform displays that there is a change to add.
