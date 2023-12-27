
data "aws_acm_certificate" "cert" {
  domain      = var.certificate_domain
  statuses    = ["ISSUED"]
  most_recent = true
}
