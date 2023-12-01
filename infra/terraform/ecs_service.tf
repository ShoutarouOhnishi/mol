resource "aws_ecs_service" "laravel" {
  name            = "laravel-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.laravel.arn
  launch_type     = "FARGATE"
  desired_count   = 1
  depends_on      = [aws_lb.laravel, aws_lb_target_group.laravel_tg]

  network_configuration {
    subnets         = [aws_subnet.private.id]
    security_groups = [aws_security_group.ecs_tasks.id]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.laravel_tg.arn
    container_name   = "laravel"
    container_port   = 80
  }
}
