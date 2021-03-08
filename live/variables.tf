# Variables file
variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "region" {
  description = "AWS region this bucket should reside in"
  type        = string
}

#EC2 INSTANCE VARIABLES
variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "subnet_name" {
  description = "The subnet name"
  type        = string
}

variable "ec2_instance_name" {
  description = "The EC2 instance name"
  type        = string
}

variable "subnet_name_rds" {
  description = "The RDS Subnet name"
  type        = string
}

variable "private_routing_table" {
  description = "The existing private routing table ID"
  type        = string
}

variable "public_routing_table" {
  description = "The existing private routing table ID"
  type        = string
}


variable "subnet_name_rds_2" {
  description = "The RDS Subnet name"
  type        = string
}

variable "ec2_sec_group" {
  description = "The EC2 Sec group name"
  type        = string
}


variable "ssh_key_cz" {
  description = "The amazon key pair to use"
  type        = string
}

variable "environment" {
  description = "Environment of the infrastructure and resources"
  type        = string
}

#RDS INSTANCE VARIABLES
variable "rds_instance_name" {
  description = "The RDS instance name"
  type        = string
}

variable "rds_user" {
  description = "The RDS main user"
  type        = string
}

variable "rds_pass" {
  description = "The RDS password for main user"
  type        = string
}

variable "allocated_storage" {
  description = "The RDS password for main user"
  type        = number
}

variable "rds_database_name" {
  description = "The RDS database name"
  type        = string
}

variable "rds_sec_group" {
  description = "The RDS database name"
  type        = string
}