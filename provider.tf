#-------------------------------------------------------------------------------
# Requirements
#-------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = ">= 3.52.0"
  }
}

provider "aws" {
    region = "${var.AWS_REGION}"
}
