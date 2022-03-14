# Create RDS Instance

resource "aws_db_subnet_group" "db-subnet-group" {
  name       = "dbsubnetgroup"
  subnet_ids = [aws_subnet.database-subnet-1.id, aws_subnet.database-subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "rds" {
  db_subnet_group_name   = aws_db_subnet_group.db-subnet-group.id
  allocated_storage      = var.allocated_storage
  engine                 = var.engine_type
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  multi_az               = true
  name                   = "mydb"
  username               = "admin"
  password               = "reallygoodpassword"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds-sg.id] 

}
