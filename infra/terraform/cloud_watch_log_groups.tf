resource "aws_cloudwatch_log_group" "ecs_logs" {
  name              = "/ecs/ecs-logs"
  retention_in_days = 30
}
