#------------------------------------------------------------------------------#
# @title: Terraform Example
# @description: Used to test and provide a working example for this module.
#------------------------------------------------------------------------------#

terraform {
  required_version = "~> 1.5"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

#-{ Define Basic Variables }---------------------------------------------------#

variable "aws_region" {
  description = "(Optional) AWS region for this to be applied to. (Default: 'us-east-1')"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "(Optional) Provider AWS profile name for local aws cli configuration. (Default: '')"
  type        = string
  default     = ""
}

#-{ Configuration of module }--------------------------------------------------#

module "example" {
  source = "../../"

  tags = {
     ManagedBy = "Terraform"
  }

  example = {
    one = {name = "hello world"}
  }
}

#-{ Standard Output from Module }----------------------------------------------#

output "metadata" {
  description = "Output metadata regarding the apply."
  value       = module.example.apply_metadata
}

output "key_attributes" {
  description = "Output key attributes from this module."
  value       = module.example.key_attributes
}
