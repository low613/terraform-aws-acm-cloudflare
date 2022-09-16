data "cloudflare_zone" "zone" {
  name = var.zone_name
}

resource "aws_acm_certificate" "certificate" {
    domain_name = var.domain_name
    validation_method = "DNS"
     lifecycle {
       create_before_destroy = true
     }

     tags = {
       "Name" = var.domain_name
     }
}

resource "cloudflare_record" "validation" {
  zone_id = data.cloudflare_zone.zone.zone_id
  for_each = {
    for dvo in aws_acm_certificate.certificate.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      value = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  name = each.value.name
  type = each.value.type
  value = each.value.value
}

resource "aws_acm_certificate_validation" "certificate" {
  certificate_arn = aws_acm_certificate.certificate.arn
  validation_record_fqdns = [var.domain_name]
}
