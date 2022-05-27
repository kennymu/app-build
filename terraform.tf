
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "remote" {
    organization = "example-org-c0b0a1"

    workspaces {
      name = "app-build"
    }
  }
}

