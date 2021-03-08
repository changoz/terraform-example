# Variables file

variable "name" {
  description = "The EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "associate_public_ip_address" {
  description = "If the EC2 instance must have a public IP"
  type        = bool
}

variable "environment" {
  description = "Environment of the infrastructure and resources"
  type        = string
}

variable "tags" {
  description = "List of tags for the resources"
  type        = map(string)
}

variable "ssh_key_cz_arg" {
  description = "Amazon SSH Key to deploy to server"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Sec Group ID of EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Created Subnet ID"
  type        = string
}




