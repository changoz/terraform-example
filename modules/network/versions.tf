# Versions

terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}