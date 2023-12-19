resource "aws_instance" "bastion" {
  ami           = "ami-012261b9035f8f938" # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"

  key_name = aws_key_pair.deployer.key_name

  vpc_security_group_ids = [aws_security_group.bastion.id]

  subnet_id = aws_subnet.public.id # パブリックサブネットのID

  tags = {
    Name = "Bastion"
  }
}

output "ec2_public_ip" {
  value       = aws_instance.bastion.public_ip
  description = "The public IP address of the Bastion host"
}

