Terraform version 0.12.23

```
terraform init              -  initialize the plugins    
terraform plan              -   Dry run
terraform apply             -     Apply the stack
terraform destroy           -    Destroy the whole stack  

```

This terraform code assumes that :
--You already have the credentials with required previliges in .aws/credentials
--A bucket called "murali-tfstate" manually created to store the states of Terraform
-- Security groups can be further granularized as per requirement



This code will create the following stuff
--  VPC
-- gateway
-- route tables
-- 3 private and 3 public subnets
-- bastion host in public subnet with ssh access as ec2-user (key will be shared by me)
-- web server with EIP in public subnet ( can be access only from within the VPC)
-- app server in private subnet which can be access from


bastion : 54.88.80.9
web server :  https://54.225.144.110/   and ssh via "10.0.0.16"
ap server : 10.0.0.205
