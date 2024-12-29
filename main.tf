module "ec2" {
source         = "./modules/ec2"
ami_id         = var.ami_id
instance_type  = var.instance_type
key_name       = var.key_name
}

module "rds" {
  source = "./modules/rds"
  allocated_storage   = var.allocated_storage
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  publicly_accessible = var.publicly_accessible
  security_group_id   = aws_security_group.ec2_sg.id
}
resource "aws_security_group" "ec2_sg" {
  name_prefix = "todo-ec2-sg"
  description = "Allow all traffic"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "Penghuot"
}

