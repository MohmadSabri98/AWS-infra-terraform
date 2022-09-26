# AWS-infra-terraform
Deploy an infrastructure using terraform on aws resources
<img src="https://raw.githubusercontent.com/MohmadSabri98/AWS-infra-terraform/main/task.png" alt="Alt text" title="Optional title">
``` 
Creating new VPC
Creating 4 Subnets (2 private and 2 public)
Creating bastion host in one of the public subnet
Creating Ec2 Instance in one of the private subnet
Creating security group allow ssh port 22 and attach it to Bastion host
Creating security group allow ssh port 22 and port 3000 and attach it to EC2 instance
Creating internet Gateway and Nat Gateway
Using Secret Manager service to save private key for EC2 instance to connect to the instance
Create two workspaces dev and prod
Create two variable definition files
Create Lambda Function to send email
Create trigger to detect changes in state file
Create rds
Create elastic cache (redis)

```
