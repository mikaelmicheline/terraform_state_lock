terraform {
  backend "s3" {
    bucket         = "remote-backend-bucket-000000000000"
    key            = "state-locking/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-backend-state-locking-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.auth.region
  assume_role {
    role_arn = var.auth.assume_role_arn
  }
  default_tags {
    tags = var.default_tags
  }
}