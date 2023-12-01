resource "aws_ecs_task_definition" "laravel" {
  family                   = "laravel"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "512"  # 必要なければ256に変更
  memory                   = "1024" # 必要なければ512に変更
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_execution_role.arn

  container_definitions = jsonencode([
    {
      name  = "laravel",
      image = aws_ecr_repository.main.repository_url, # ECRのURLを指定
      portMappings = [
        {
          containerPort = 80,
          hostPort      = 80
        },
      ],
      logConfiguration = {
        logDriver = "awslogs",
        options = {
          "awslogs-group"         = aws_cloudwatch_log_group.ecs_logs.name,
          "awslogs-region"        = "ap-northeast-1",
          "awslogs-stream-prefix" = "ecs"
        }
      },
      # TODO: AWS Secrets Managerを使用してセキュアな管理を行う
      environment = [
        {
          name  = "DB_HOST"
          value = aws_db_instance.laravel_db.address
        },
        {
          name  = "DB_DATABASE"
          value = "laraveldb"
        },
        {
          name  = "DB_USERNAME"
          value = "dbuser"
        },
        {
          name  = "DB_PASSWORD"
          value = "dbpassword"
        }
        # その他の環境変数...
      ],
    },
  ])
}
