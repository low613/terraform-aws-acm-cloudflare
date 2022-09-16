data "cloudflare_zone" "zone" {
  name = var.domain_name
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
  name = aws_acm_certificate.certificate.domain_validation_options[0].resource_record_name
  type = aws_acm_certificate.certificate.domain_validation_options[0].resource_record_type
  value = aws_acm_certificate.certificate.domain_validation_options[0].resource_record_value
}

resource "aws_acm_certificate_validation" "certificate" {
  certificate_arn = aws_acm_certificate.certificate.arn
  validation_record_fqdns = [var.domain_name]
}
