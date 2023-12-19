resource "aws_lb_target_group" "lb_tg" {
  name        = "${var.app_name}-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"

  health_check {
    enabled = true
    path    = "/" # アプリケーションのヘルスチェック用パス
  }
}
