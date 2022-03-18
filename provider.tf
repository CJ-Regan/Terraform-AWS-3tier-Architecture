terraform {
  required_version = ">= 1.0.0"

  required_providers {
      aws = "3.64.0"
  }
}


provider "aws" {
  region = "eu-west-2"
}