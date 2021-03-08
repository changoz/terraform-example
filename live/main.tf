# Main Infra


module "network_and_groups" {
  source                      = "../modules/network"
  subnet_name                 = var.subnet_name
  ec2_sec_group               = var.ec2_sec_group
  rds_sec_group               = var.rds_sec_group
  vpc_id                      = var.vpc_id
  subnet_name_rds             = var.subnet_name_rds
  subnet_name_rds_2           = var.subnet_name_rds_2
  private_routing_table       = var.private_routing_table
  public_routing_table        = var.public_routing_table
}

# APP Instance 
module "ec2-instance" {
  source                      = "../modules/ec2-instance"
  name                        = var.ec2_instance_name
  instance_type               = var.instance_type
  environment                 = var.environment
  ssh_key_cz_arg              = var.ssh_key_cz
  subnet_id                   = module.network_and_groups.subnet_id
  vpc_security_group_ids      = module.network_and_groups.ec2_group_id
  associate_public_ip_address = true
  tags = {
    terraform = true
  }
}

# RDS Instance
module "rds_instance_app" {
  source                      = "../modules/rds-instance"
  db_instance_name            = var.rds_instance_name
  db_allocated_storage        = var.allocated_storage
  db_name                     = var.rds_database_name
  db_user                     = var.rds_user
  db_pass                     = var.rds_pass
  vpc_security_group_ids      = module.network_and_groups.rds_group_id
  rds_sec_group               = module.network_and_groups.rds_group_name
}