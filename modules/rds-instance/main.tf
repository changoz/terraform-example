# RDS Instance
resource "aws_db_instance" "mysql" {
  identifier              = var.db_instance_name
  allocated_storage       = var.db_allocated_storage
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "8.0.20"
  instance_class          = "db.t2.micro"
  name                    = var.db_name
  username                = var.db_user
  password                = var.db_pass
  parameter_group_name    = "default.mysql8.0"
  port                    = 3306
  vpc_security_group_ids  = [ var.vpc_security_group_ids ]
  db_subnet_group_name    = var.rds_sec_group
}