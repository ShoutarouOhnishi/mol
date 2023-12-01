resource "aws_lb_target_group" "laravel_tg" {
  name        = "laravel-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"

  health_check {
    enabled = true
    path    = "/" # Laravelアプリケーションのヘルスチェック用パス
  }
}
