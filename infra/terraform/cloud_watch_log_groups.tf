resource "aws_cloudwatch_log_group" "ecs_logs" {
  name              = "/ecs/ecs-logs"
  retention_in_days = 30
  kms_key_id        = aws_kms_key.ecs_execute_command.arn
}
