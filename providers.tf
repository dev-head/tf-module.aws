#------------------------------------------------------------------------------#
# @title: Terraform Outputs
# @description: Provide access to your resources and configurations.
#------------------------------------------------------------------------------#

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6"
    }
  }
}
