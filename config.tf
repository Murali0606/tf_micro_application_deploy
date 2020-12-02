provider "aws" {
  version = "~> 2.0"
  region  = var.region

}

terraform {
  required_version = "= 0.12.23"

  backend "s3" {
    bucket               = "murali-tfstate"
    key                  = "core-infra"
    region               = "us-east-2"

  }
}


locals {
  tags = {
    project     = var.project
    owner       = var.owner
    environment = var.environment
    created     = "terraform"
  }

}

data "aws_caller_identity" "current" {
}
