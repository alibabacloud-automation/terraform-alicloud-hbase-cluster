Terraform module which creates a HBase cluster on Alibaba Cloud.  
terraform-alicloud-hbase-cluster
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/blob/master/README-CN.md)

Terraform module which creates HBase replica instance resources on Alibaba Cloud

These types of resources are supported:

* [Alicloud hbase instance](https://www.terraform.io/docs/providers/alicloud/r/hbase_instance.html)

----------------------

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.67.0+.

## Usage
-----
### You can use this in your terraform template with the following steps.

Adding a module resource to your template, e.g. main.tf

```hcl
module "hbase" {
  source               = "terraform-alicloud-modules/hbase/alicloud"
  region               = "cn-shenzhen"
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

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.


Authors
---------
Created and maintained by quanyun.

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
