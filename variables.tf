#------------------------------------------------------------------------------#
# @title: Terraform Outputs
# @description: Define module variables.
#------------------------------------------------------------------------------#

variable "tags" {
  description = "(Optional) Map of tags to apply to the created resources."
  type        = map(any)
  default     = {}
}

variable "example" {
  description = "Define an example configuration"

  type = map(object({
    name = optional(string)
  }))
}
