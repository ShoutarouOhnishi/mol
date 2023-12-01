resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.laravel.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.laravel_tg.arn
  }
}
