resource "aws_lb" "lb" {
  name               = "${var.app_name}-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ecs_tasks.id]
  subnets            = [aws_subnet.public.id, aws_subnet.public2.id]

  enable_deletion_protection = false
}

output "elb_dns_name" {
  value       = aws_lb.lb.dns_name
  description = "The DNS name of the load balancer"
}
