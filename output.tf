output "certificate_arn" {
    description = "arn of certficate generated"
    value = aws_acm_certificate_validation.certificate.certificate_arn
}
