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

# resource "aws_security_group_rule" "ecs_tasks_egress" {
#   type              = "egress"
#   from_port         = 0
#   to_port           = 0
#   protocol          = "-1"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.ecs_tasks.id
# }

# resource "aws_security_group_rule" "vpc_endpoint_ecr_ingress" {
#   type                     = "ingress"
#   from_port                = 443
#   to_port                  = 443
#   protocol                 = "tcp"
#   security_group_id        = aws_security_group.ecs_tasks.id
#   source_security_group_id = aws_security_group.ecs_tasks.id
# }

# resource "aws_security_group_rule" "ecs_tasks_ecr_access" {
#   type              = "egress"
#   from_port         = 443
#   to_port           = 443
#   protocol          = "tcp"
#   security_group_id = aws_security_group.ecs_tasks.id
#   cidr_blocks       = ["0.0.0.0/0"]
# }


resource "aws_security_group" "rds" {
  name        = "rds"
  description = "Allow RDS"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "rds_ingress" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = [aws_vpc.main.cidr_block]
  security_group_id = aws_security_group.rds.id
}
