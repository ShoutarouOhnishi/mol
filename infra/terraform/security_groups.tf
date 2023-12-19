resource "aws_security_group" "ecs_tasks" {
  name        = "ecs-tasks"
  description = "Allow ECS tasks"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "ingress_sg_all" {
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.ecs_tasks.id
  source_security_group_id = aws_security_group.ecs_tasks.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "egress_all_all" {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.ecs_tasks.id
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group" "rds" {
  name        = "rds"
  description = "Allow RDS"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "rds_ingress" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.ecs_tasks.id
  security_group_id        = aws_security_group.rds.id
}

resource "aws_security_group" "bastion" {
  name        = "bastion"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["58.188.94.17/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "rds_ingress_from_bastion" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.bastion.id
  security_group_id        = aws_security_group.rds.id
}
