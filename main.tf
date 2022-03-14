terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.69.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "tfbackend" {
  bucket = "dvd-terraformstate"
}

resource "aws_s3_bucket" "cloudformation" {
  bucket = "dvd-cloudformation-templates"
}



