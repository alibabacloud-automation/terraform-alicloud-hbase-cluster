# Alibaba Cloud hbase-1.1 Terraform Module

Configuration in this directory creates set of HBase resources instance

## Usage

To run this example you need to execute:

```bash
module "hbase" {
  source  = "terraform-alicloud-modules/hbase/alicloud//modules/hbase-1.1"
  version = "~> 1.2"

  # omitted...
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->