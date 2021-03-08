#CORE VARIABLES
variable "vpc_id" {
  description = "ID of the VPC where to create subnet"
  type        = string
}

variable "subnet_name" {
  description = "The subnet name"
  type        = string
}

variable "subnet_name_rds" {
  description = "The RDS subnet name"
  type        = string
}

variable "subnet_name_rds_2" {
  description = "The RDS subnet name second availability zone"
  type        = string
}

variable "private_routing_table" {
  description = "The existing private routing table ID"
  type        = string
}

variable "public_routing_table" {
  description = "The existing public routing table ID"
  type        = string
}

variable "ec2_sec_group" {
  description = "The EC2 group name"
  type        = string
}

variable "rds_sec_group" {
  description = "The RDS group name"
  type        = string
}

