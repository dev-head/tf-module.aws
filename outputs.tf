#------------------------------------------------------------------------------#
# @title: Terraform Outputs
# @description: Provide access to your resources and configurations.
#------------------------------------------------------------------------------#

output "apply_metadata" {
  description = "Output metadata regarding the apply."
  value = format("[%s]::[%s]::[%s]",
    data.aws_caller_identity.current.account_id,
    data.aws_caller_identity.current.arn,
    data.aws_caller_identity.current.user_id
  )
}

output  "key_attributes" {
  description = "Map of maps, indexed by they `var.keys` key, to ensure it's accessible."
  value = {
    for key,val in var.example : key => {
      name = lookup(val, "name")
    }
  }
}

output  "key_resources" {
  description = "Provide full access to resource objects."
  value = {
    # resources = {for key,val in var.example : key => someresource.default-01[key]}
  }
}
