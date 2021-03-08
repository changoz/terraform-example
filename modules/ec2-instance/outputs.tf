# Outputs file

output "instance_arn" {
  description = "The EC2 instance ARN"
  value       = aws_instance.app.arn
}

output "instance_public_ip" {
  description = "The EC2 instance public IP"
  value       = aws_instance.app.public_ip
}



