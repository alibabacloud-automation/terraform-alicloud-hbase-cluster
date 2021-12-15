Terraform module which creates HBase instance resources on Alibaba Cloud  
terraform-alicloud-hbase-cluster



本 Module 用于在阿里云的 VPC 下创建一个[HBase云数据库](https://help.aliyun.com/product/49055.html)。

本 Module 支持创建以下资源:

* [HBase 数据库实例 (hbase instance)](https://www.terraform.io/docs/providers/alicloud/r/hbase_instance.html)

## 用法

### 你可以通过以下步骤增加terraform模板。

增加module资源到你的模板文件，例如main.tf

```hcl
module "hbase" {
  source               = "terraform-alicloud-modules/hbase-cluster/alicloud"
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
本Module从版本v1.1.0开始已经移除掉如下的 provider 的显示设置：

```hcl
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/hbase-cluster"
}
```

如果你依然想在Module中使用这个 provider 配置，你可以在调用Module的时候，指定一个特定的版本，比如 1.0.0:

```hcl
module "hbase" {
  source            = "terraform-alicloud-modules/hbase-cluster/alicloud"
  version           = "1.0.0"
  region            = "cn-shenzhen"
  profile           = "Your-Profile-Name"
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```

如果你想对正在使用中的Module升级到 1.1.0 或者更高的版本，那么你可以在模板中显示定义一个系统过Region的provider：
```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
}
module "hbase" {
  source            = "terraform-alicloud-modules/hbase-cluster/alicloud"
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```
或者，如果你是多Region部署，你可以利用 `alias` 定义多个 provider，并在Module中显示指定这个provider：

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
  alias   = "sz"
}
module "hbase" {
  source            = "terraform-alicloud-modules/hbase-cluster/alicloud"
  providers         = {
    alicloud = alicloud.sz
  }
  instance_name     = "tf-module-hbase"
  availability_zone = "cn-shenzhen-b"
  // ...
}
```

定义完provider之后，运行命令 `terraform init` 和 `terraform apply` 来让这个provider生效即可。

更多provider的使用细节，请移步[How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |

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


