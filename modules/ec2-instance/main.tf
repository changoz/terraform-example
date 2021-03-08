# EC2 instance module
# Latest Amazon AMI
data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
       name   = "architecture"
       values = ["x86_64"]
  }

  owners = ["amazon"] # Amazon
}

# EC2 instance
resource "aws_instance" "app" {
  ami                         = data.aws_ami.amazon-linux-2.id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.ssh_key_cz_arg
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [ var.vpc_security_group_ids ]
  
  # Instance tags
  tags = merge(
    {
      Name        = var.name
      Resource    = "ec2-instance"
      Environment = var.environment
    },
    var.tags
  )
}