data "aws_secretsmanager_secret" "secrets" {
  name = "${terraform.workspace}-${var.secret_name}"
}

data "aws_secretsmanager_secret_version" "secrets" {
  secret_id = data.aws_secretsmanager_secret.secrets.id
}

data "aws_secretsmanager_secret" "db_username" {
  name = "${terraform.workspace}-DB_USERNAME"
}

data "aws_secretsmanager_secret_version" "db_username" {
  secret_id = data.aws_secretsmanager_secret.db_username.id
}

data "aws_secretsmanager_secret" "db_password" {
  name = "${terraform.workspace}-DB_PASSWORD"
}

data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = data.aws_secretsmanager_secret.db_password.id
}
