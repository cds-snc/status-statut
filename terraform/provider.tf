terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      ssc_cbrid = "22DI"
    }
  }
}

provider "aws" {
  alias  = "core_services"
  region = var.region
  default_tags {
    tags = {
      ssc_cbrid = "22DH"
    }
  }
}