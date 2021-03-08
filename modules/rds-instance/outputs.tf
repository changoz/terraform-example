output "instance_arn" {
  description = "The RDS instance ARN"
  value       = aws_db_instance.mysql.arn
}

output "rds_database_name" {
  description = "The RDS instance main database name"
  value       = aws_db_instance.mysql.name
}

output "rds_instance_name" {
  description = "The RDS instance name"
  value       = aws_db_instance.mysql.identifier
}

output "rds_engine_name" {
  description = "The RDS instance engine version"
  value       = aws_db_instance.mysql.engine_version
}