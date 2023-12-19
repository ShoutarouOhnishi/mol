resource "aws_db_parameter_group" "parameter_group" {
  name        = "${var.app_name}-db-parameter-group"
  family      = "mysql8.0"
  description = "Custom parameter group"

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }

  parameter {
    name  = "collation_server"
    value = "utf8mb4_bin"
  }
}


resource "aws_db_instance" "rds" {
  allocated_storage                   = 20
  engine                              = "mysql"
  engine_version                      = "8.0.34"
  instance_class                      = "db.t2.micro"
  identifier                          = "${var.app_name}-db"
  username                            = data.aws_secretsmanager_secret_version.db_username.secret_string
  password                            = data.aws_secretsmanager_secret_version.db_password.secret_string
  parameter_group_name                = aws_db_parameter_group.parameter_group.name
  vpc_security_group_ids              = [aws_security_group.rds.id]
  db_subnet_group_name                = aws_db_subnet_group.main.name
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  db_name                             = var.db_name

  lifecycle {
    ignore_changes = [password]
  }
}

output "db_endpoint" {
  value       = aws_db_instance.rds.endpoint
  description = "The connection endpoint for the RDS instance"
}
