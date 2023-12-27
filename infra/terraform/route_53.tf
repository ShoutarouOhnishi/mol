data "aws_route53_zone" "hosted_zone" {
  name = var.hosted_domain
}

resource "aws_route53_record" "A" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.domain
  type    = "A"

  alias {
    name                   = aws_lb.lb.dns_name
    zone_id                = aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}


