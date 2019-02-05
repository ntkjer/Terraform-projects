## Introduction
Creates an S3 instance with state locking provided by DynamoDB.

We lock states for DRY principles. 

## Requirements

Requires terragrunt, which can be installed on OS X as follows:
```
brew install terragrunt
```

Which allows us to handle shared locks on state files. Terragrunt interfaces with
Terraform and takes care of locking schemes for us!

##Configs

All terragrunt resources are not saved in a ```.terragrunt``` file because this will be deprecated in future versions.
Therefore, we should add our ```.terragrunt``` configurations in our secret file: ```terraform.tfvars```

## Execution
```
terragrunt init
terragrunt apply
terragrunt destroy
```