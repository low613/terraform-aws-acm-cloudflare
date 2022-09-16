## Requirements

The following requirements are needed by this module:

- <a name="requirement_aws"></a> [aws](#requirement\_aws) (~> 4.29.0)

- <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) (3.23.0)

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws) (~> 4.29.0)

- <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) (3.23.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_acm_certificate.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) (resource)
- [aws_acm_certificate_validation.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) (resource)
- [cloudflare_record.validation](https://registry.terraform.io/providers/cloudflare/cloudflare/3.23.0/docs/resources/record) (resource)
- [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/3.23.0/docs/data-sources/zone) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name)

Description: The primary domain name

Type: `string`

### <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name)

Description: The zone name

Type: `string`

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn)

Description: arn of certficate generated
