Terraform module which creates a HBase cluster on Alibaba Cloud.  
terraform-alicloud-hbase-cluster


English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/blob/master/README-CN.md)

Terraform module which creates HBase replica instance resources on Alibaba Cloud

These types of resources are supported:

* [Alicloud hbase instance](https://www.terraform.io/docs/providers/alicloud/r/hbase_instance.html)

----------------------

## Usage

### You can use this in your terraform template with the following steps.

Adding a module resource to your template, e.g. main.tf

```hcl
module "hbase" {
  source               = "terraform-alicloud-modules/hbase/alicloud"
  #################
  # HBase Instance
  #################
  instance_name          = "tf-module-hbase"
  availability_zone      = "cn-shenzhen-b"
  engine_version         = "2.0"
  master_instance_type   = "hbase.n1.medium"
  core_instance_type     = "hbase.sn1.large"
  core_instance_quantity = 3
  core_disk_type         = "cloud_ssd"
  core_disk_size         = 100
  pay_type               = "PostPaid"
  auto_renew             = "false"
  vswitch_id             = "vsw-wz9dtqayzctoqh*******"
  cold_storage_size      = 0
}
```

## Examples

* [example of hbase-1.1](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/examples/hbase-1.1)
* [example of hbase-2.0](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/examples/hbase-2.0)

## Modules

* [hbase-1.1](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/modules/hbase-1.1)
* [hbase-2.0](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/modules/hbase-2.0)

## Notes
From the version v1.1.0, the module has removed the following `provider` setting:

```hcl
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/hbase"
}
```

If you still want to use the `provider` setting to apply this module, you can specify a supported version, like 1.0.0:

```hcl
module "hbase" {
  source            = "terraform-alicloud-modules/hbase/alicloud"
  version           = "1.0.0"
  region            = "cn-shenzhen"
  profile           = "Your-Profile-Name"
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```

If you want to upgrade the module to 1.1.0 or higher in-place, you can define a provider which same region with
previous region:

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
}
module "hbase" {
  source            = "terraform-alicloud-modules/hbase/alicloud"
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```
or specify an alias provider with a defined region to the module using `providers`:

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
  alias   = "sz"
}
module "hbase" {
  source            = "terraform-alicloud-modules/hbase/alicloud"
  providers         = {
    alicloud = alicloud.sz
  }
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```

and then run `terraform init` and `terraform apply` to make the defined provider effect to the existing module state.

More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |


Authors
---------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
