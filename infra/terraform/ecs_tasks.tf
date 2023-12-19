resource "aws_ecs_task_definition" "ecs_task_definition" {
  family                   = var.app_name
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "512"  # FIXNE: 必要なければ256に変更
  memory                   = "1024" # FIXNE: 必要なければ512に変更
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_execution_role.arn

  container_definitions = jsonencode([
    {
      name    = "${var.app_name}",
      image   = aws_ecr_repository.main.repository_url, # ECRのURLを指定
      command = ["/var/www/html/entrypoint.sh"]
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
          "awslogs-region"        = var.region,
          "awslogs-stream-prefix" = "ecs"
        }
      },
      "secrets" : [
        {
          name      = "APP_KEY",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_KEY::"
        },

        {
          name      = "APP_NAME",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_NAME::"
        },
        {
          name      = "APP_ENV",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_ENV::"
        },
        {
          name      = "APP_DEBUG",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_DEBUG::"
        },
        {
          name      = "APP_URL",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_URL::"
        },
        {
          name      = "APP_TIMEZONE",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:APP_TIMEZONE::"
        },
        {
          name      = "LOG_CHANNEL",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:LOG_CHANNEL::"
        },
        {
          name      = "LOG_DEPRECATIONS_CHANNEL",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:LOG_DEPRECATIONS_CHANNEL::"
          }, {
          name      = "LOG_LEVEL",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:LOG_LEVEL::"
        },
        {
          name      = "DB_CONNECTION",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_CONNECTION::"
        },
        {
          name      = "DB_HOST",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_HOST::"
        },
        {
          name      = "DB_PORT",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_PORT::"
        },
        {
          name      = "DB_DATABASE",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_DATABASE::"
        },
        {
          name      = "DB_USERNAME",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_USERNAME::"
        },
        {
          name      = "DB_PASSWORD",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:DB_PASSWORD::"
        },
        {
          name      = "BROADCAST_DRIVER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:BROADCAST_DRIVER::"
        },
        {
          name      = "CACHE_DRIVER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:CACHE_DRIVER::"
        },
        {
          name      = "FILESYSTEM_DRIVER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:FILESYSTEM_DRIVER::"
        },
        {
          name      = "QUEUE_CONNECTION",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:QUEUE_CONNECTION::"
        },
        {
          name      = "SESSION_DRIVER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:SESSION_DRIVER::"
        },
        {
          name      = "SESSION_LIFETIME",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:SESSION_LIFETIME::"
        },
        {
          name      = "MEMCACHED_HOST",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MEMCACHED_HOST::"
        },
        {
          name      = "REDIS_HOST",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:REDIS_HOST::"
        },
        {
          name      = "REDIS_PASSWORD",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:REDIS_PASSWORD::"
        },
        {
          name      = "REDIS_PORT",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:REDIS_PORT::"
        },
        {
          name      = "MAIL_MAILER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_MAILER::"
        },
        {
          name      = "MAIL_HOST",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_HOST::"
        },
        {
          name      = "MAIL_PORT",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_PORT::"
        },
        {
          name      = "MAIL_USERNAME",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_USERNAME::"
        },
        {
          name      = "MAIL_PASSWORD",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_PASSWORD::"
        },
        {
          name      = "MAIL_ENCRYPTION",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_ENCRYPTION::"
        },
        {
          name      = "MAIL_FROM_ADDRESS",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_FROM_ADDRESS::"
        },
        {
          name      = "MAIL_FROM_NAME",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MAIL_FROM_NAME::"
        },
        {
          name      = "MIX_PUSHER_APP_KEY",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MIX_PUSHER_APP_KEY::"
        },
        {
          name      = "MIX_PUSHER_APP_CLUSTER",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:MIX_PUSHER_APP_CLUSTER::"
        },
        {
          name      = "FIREBASE_CREDENTIALS",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:FIREBASE_CREDENTIALS::"
        },
        {
          name      = "SPEC_PATH",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:SPEC_PATH::"
        },
        {
          name      = "SAIL_XDEBUG_MODE",
          valueFrom = "${data.aws_secretsmanager_secret_version.secrets.arn}:SAIL_XDEBUG_MODE::"
        }

      ]
    },
  ])

}
