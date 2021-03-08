#RDS INSTANCE VARIABLES
variable "db_instance_name" {
  description = "The RDS instance name"
  type        = string
}

variable "db_user" {
  description = "The RDS main user"
  type        = string
}

variable "db_pass" {
  description = "The RDS password for main user"
  type        = string
}

variable "db_allocated_storage" {
  description = "The RDS allocated storage"
  type        = number
}

variable "db_name" {
  description = "The RDS database name"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The ID of sec Group to ADD"
  type        = string
}

variable "rds_sec_group" {
  description = "The Name of rds sec group"
  type        = string
}


