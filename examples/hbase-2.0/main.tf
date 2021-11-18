variable "region" {
  default = "cn-shenzhen"
}

provider "alicloud" {
  region = var.region
}

data "alicloud_zones" "default" {
  available_resource_creation = "HBase"
  enable_details              = true
}

data "alicloud_vpcs" "default" {
  is_default = true
}

data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids.0
  zone_id = data.alicloud_zones.default.zones.0.id
}

module "hbase_example" {
  source                 = "../../modules/hbase-2.0"
  region                 = var.region
  instance_name          = "tf-module-hbase-2.0-example"
  availability_zone      = data.alicloud_zones.default.zones.0.id
  master_instance_type   = "hbase.sn1.large"
  core_instance_type     = "hbase.sn1.large"
  core_instance_quantity = 3
  core_disk_type         = "cloud_ssd"
  core_disk_size         = 400
  pay_type               = "PostPaid"
  auto_renew             = "false"
  vswitch_id             = data.alicloud_vswitches.default.ids.0
  cold_storage_size      = 0

}