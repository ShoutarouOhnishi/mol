resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = tls_private_key.private_key.public_key_openssh
}

resource "local_sensitive_file" "private_key" {
  content         = tls_private_key.private_key.private_key_pem
  filename        = "${path.module}/privates/private_key.pem"
  file_permission = "0600"
}
