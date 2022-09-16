terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.29.0"
    }

    cloudflare = {
        sousource = "cloudflare/cloudflare"
        version = "3.23.0"
    }
  }
}
