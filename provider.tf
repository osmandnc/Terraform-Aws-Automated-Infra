terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "osman-tf-state-2026"
    key          = "infra-project/terraform.tfstate"
    region       = "eu-central-1"
    encrypt      = true
  }
}

provider "aws" {
  region = "eu-central-1"
}
