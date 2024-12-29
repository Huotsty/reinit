resource "aws_db_instance" "todo_rds" {
  allocated_storage    = var.allocated_storage
  engine               = "mysql"
  engine_version      = var.engine_version
  instance_class       = var.instance_class
  
  username             = var.username
  password             = var.password
  publicly_accessible  = var.publicly_accessible
  skip_final_snapshot  = true
  storage_type         = "gp2"
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Todo-RDS"
  }
}
