# Outputs file

output "vpc_id" {
  description = "The ID of our VPC"
  value       = module.network_and_groups.vpc_id
}

output "ec2_instance_arn" {
  description = "The ARN of the created EC2 instance"
  value       = module.ec2-instance.instance_arn
}

output "ec2_instance_public_ip" {
  description = "The public IP of the created EC2 instance"
  value       = module.ec2-instance.instance_public_ip
}

# RDS Outputs
output "rds_engine_name" {
  description = "The Key name for ec2"
  value       = module.rds_instance_app.rds_engine_name
}

output "rds_instance_name" {
  description = "The EC2 instance name"
  value       = module.rds_instance_app.rds_instance_name
}

output "rds_database_name" {
  description = "The EC2 instance main database name"
  value       = module.rds_instance_app.rds_database_name
}
