resource "aws_ecs_service" "ecs_service" {
  name                   = "${var.app_name}-service"
  cluster                = aws_ecs_cluster.main.id
  task_definition        = aws_ecs_task_definition.ecs_task_definition.arn
  launch_type            = "FARGATE"
  desired_count          = 1
  enable_execute_command = true
  depends_on             = [aws_lb.lb, aws_lb_target_group.lb_tg]

  network_configuration {
    subnets         = [aws_subnet.private.id]
    security_groups = [aws_security_group.ecs_tasks.id]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.lb_tg.arn
    container_name   = var.app_name
    container_port   = 80
  }
}
