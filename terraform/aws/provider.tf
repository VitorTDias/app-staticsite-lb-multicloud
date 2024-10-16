terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.70"
    }
  }
  backend "s3" {
    bucket         = "staticsitelbmulticloudtfvitor"
    key            = "terraform.tfstate"
    dynamodb_table = "staticsitelbmulticloudtfvitor"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}