resource "aws_ecs_cluster" "main" {
  name = "${var.app_name}-cluster"

  configuration {
    execute_command_configuration {
      kms_key_id = aws_kms_key.ecs_execute_command.arn
      logging    = "OVERRIDE"

      log_configuration {
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.ecs_logs.name
      }
    }
  }
}
