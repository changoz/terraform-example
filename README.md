# Terraform AWS Academy

## Secret var file should contain following vars:

* environment: Env to use 
* rds_user: RDS Server DB user
* rds_pass: RDS server DB password  
* ssh_key_cz: Amazon key/pair name to use  

## Public var file should contain

* vpc_id: A valid an existent VPC ID as network resources are added under this VPC 
* Existing private and public routing tables to make the associations 

## Resources Created

* Public Subnet 
* EC2 Instance within the public subnet
* 2 Private Subnets in different AZ
* 1 Security Group related to EC2 Instance
* 1 Security Group related to RDS Instance
* 1 DB Security Group
* RDS Server within the private subnets with permissions applied 





