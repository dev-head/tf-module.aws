Terraform AWS Module
====================

Description
-----------
This is a terraform module template.

Example
-------
> [Example Module](./example/default) found in `./example/default`


Usage :: Defined Variables
---------------------------
```hcl-terraform

module "aws" {
  source = "git@github.com:dev-head/tf-module.aws.git?ref=0.0.1"

}
```

Outputs
-------
| key               | type      | Description
|:-----------------:|:---------:| ------------------------------------------------------------------------------------:|
| apply_metadata    | string    | Output metadata regarding the apply.
| key_attributes    | object    | Map of maps, indexed by they `var.keys` key, to ensure it's accessible.
| key_resources     | object    | Provide full access to resource objects.

#### Example
```
key_attributes = {
}
```
