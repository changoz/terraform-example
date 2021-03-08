output "vpc_id" {
  description = "The ID of our VPC"
  value       = data.aws_vpc.selected.id
}

output "subnet_id" {
  description = "The ID of subnet"
  value       = aws_subnet.nuevasubnet.id
}

output "rds_group_id" {
  description = "The ID of the RDS group"
  value       = aws_security_group.app_rules_rds.id
}

output "rds_group_name" {
  description = "The ID of the RDS group"
  value       = aws_db_subnet_group.db_subnet.name
}

output "ec2_group_id" {
  description = "The ID of the EC2 Group"
  value       = aws_security_group.app_rules.id
}
