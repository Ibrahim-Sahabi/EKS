terraform {
  #required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
}
  # backend "s3" {
  #   bucket         = "teamusa-test-bucket"
  #   region         = "us-east-2"
  #   key            = "eks/terraform.tfstate"
  #   # dynamodb_table = "Lock-Files"
  #   # encrypt        = true
  # }

  terraform {
  backend "s3" {
    bucket = "s3-bucket-projects"
    key    = "proj1/terraform.tfstate"
    region = "us-east-2"
  }
}


provider "aws" {
  region  = var.aws-region
}
