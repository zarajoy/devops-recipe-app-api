terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-zarajoy-tf-state"
    key            = "tf-state-setup"
    region         = "ap-southeast-2"
    encrypt        = "true"
    dynamodb_table = "devops-zarajoy-tf-lock"
  }
}

provider "aws" {
  region = "ap-southeast-2"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManagedBy   = "Terraform/Setup"
    }
  }
}