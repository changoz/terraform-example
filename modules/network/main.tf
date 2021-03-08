# VPC ID
data "aws_vpc" "selected" {
  id = var.vpc_id
}

# Subnet Publica
resource "aws_subnet" "nuevasubnet" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.0.11.0/24"
  tags = {
    Name = var.subnet_name
  }
}

# Subnet Privada RDS 1
resource "aws_subnet" "rds_subnet" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.0.12.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a" 
  tags = {
    Name = var.subnet_name_rds
  }
}

# Subnet Privada RDS 2
resource "aws_subnet" "rds_subnet_2" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.0.13.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b" 
  tags = {
    Name = var.subnet_name_rds_2
  }
}

resource "aws_route_table_association" "private_routing_asoc_1" {
  subnet_id      = aws_subnet.rds_subnet.id
  route_table_id = var.private_routing_table
}

resource "aws_route_table_association" "private_routing_asoc_2" {
  subnet_id      = aws_subnet.rds_subnet_2.id
  route_table_id = var.private_routing_table
}

resource "aws_route_table_association" "public_routing_asoc" {
  subnet_id      = aws_subnet.nuevasubnet.id
  route_table_id = var.public_routing_table
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "${var.rds_sec_group}-subnet-rds"
  subnet_ids = [ aws_subnet.rds_subnet.id, aws_subnet.rds_subnet_2.id ]
}


# Define Security Group
resource "aws_security_group" "app_rules" {
  description = "Allow inbound traffic"
  name        = var.ec2_sec_group
  vpc_id      = data.aws_vpc.selected.id

  ingress {
    description = "TLS from VPC"
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "app_rules_rds" {
  description = "Allow inbound from App"
  name        = var.rds_sec_group
  vpc_id      = data.aws_vpc.selected.id
  
  ingress {
    description = "MySql port"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [aws_security_group.app_rules.id]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



