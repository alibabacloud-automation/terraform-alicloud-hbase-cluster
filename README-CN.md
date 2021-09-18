Terraform module which creates HBase instance resources on Alibaba Cloud  
terraform-alicloud-hbase-cluster
=====================================================================


本 Module 用于在阿里云的 VPC 下创建一个[HBase云数据库](https://help.aliyun.com/product/49055.html)。

本 Module 支持创建以下资源:

* [HBase 数据库实例 (hbase instance)](https://www.terraform.io/docs/providers/alicloud/r/hbase_instance.html)

## Terraform 版本

本模版要求使用 Terraform 0.12 和阿里云 Provider 1.67.0+。

## 用法
-----
### 你可以通过以下步骤增加terraform模板。

增加module资源到你的模板文件，例如main.tf

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

## 示例

* [hbase-1.1实例创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/examples/hbase-1.1)
* [hbase-2.0实例创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/examples/hbase-2.0)

## 模块

* [hbase-1.1](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/modules/hbase-1.1)
* [hbase-2.0](https://github.com/terraform-alicloud-modules/terraform-alicloud-hbase-cluster/tree/master/modules/hbase-2.0)


## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)


