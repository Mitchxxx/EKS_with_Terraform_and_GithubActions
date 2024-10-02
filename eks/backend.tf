terraform {
  required_version = "~> 1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "mitchdev-cicd-terraform-eks"
    region         = "eu-west-1"
    key            = "Github-Actions-EKS/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}