# AWS Cloudformation stack Terraform module

## Usage

```hcl
module "my_cfn_stack" {
  source = "github.com/olegbuevich/terraform-aws-cloudformation-stack"

  name = "my-stack"
  parameters = {
    repoName = "MyRepo"
  }
  s3_bucket            = "deploy-artifacts-us-east-1"
  s3_object_key_prefix = "app1/my-stack"
  template_file_path   = "path/to/template.cfn.yaml"
  capabilities = [
    "CAPABILITY_AUTO_EXPAND"
  ]
}
```
