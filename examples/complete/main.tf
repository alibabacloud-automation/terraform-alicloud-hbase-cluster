data "alicloud_vpcs" "default" {
  name_regex = "default-NODELETING"
}

data "alicloud_vswitches" "default" {
  name_regex = "default-zone-f"
  vpc_id     = data.alicloud_vpcs.default.vpcs.0.id
}

data "alicloud_hbase_instance_types" "default" {
  engine      = "hbase"
  charge_type = "PostPaid"
  zone_id     = data.alicloud_vswitches.default.vswitches.0.zone_id
}

module "hbase" {
  source = "../.."

  create = true

  instance_name          = var.instance_name
  availability_zone      = data.alicloud_vswitches.default.vswitches.0.zone_id
  engine_version         = "2.0"
  master_instance_type   = data.alicloud_hbase_instance_types.default.master_instance_types.0.instance_type
  core_instance_type     = data.alicloud_hbase_instance_types.default.core_instance_types.0.instance_type
  core_instance_quantity = var.core_instance_quantity
  core_disk_type         = "cloud_ssd"
  core_disk_size         = var.core_disk_size
  pay_type               = "PostPaid"
  duration               = 1
  auto_renew             = false
  deletion_protection    = var.deletion_protection
  vswitch_id             = data.alicloud_vswitches.default.vswitches.0.id
  cold_storage_size      = var.cold_storage_size

}

module "hbase_1_1" {
  source = "../../modules/hbase-1.1"

  create = true

  instance_name          = var.instance_name
  availability_zone      = data.alicloud_vswitches.default.vswitches.0.zone_id
  master_instance_type   = data.alicloud_hbase_instance_types.default.master_instance_types.0.instance_type
  core_instance_type     = data.alicloud_hbase_instance_types.default.core_instance_types.0.instance_type
  core_instance_quantity = var.core_instance_quantity
  core_disk_type         = "cloud_ssd"
  core_disk_size         = var.core_disk_size
  pay_type               = "PostPaid"
  duration               = 1
  auto_renew             = false
  deletion_protection    = var.deletion_protection
  vswitch_id             = data.alicloud_vswitches.default.vswitches.0.id
  cold_storage_size      = var.cold_storage_size

}

module "hbase_2_0" {
  source = "../../modules/hbase-2.0"

  create = true

  instance_name          = var.instance_name
  availability_zone      = data.alicloud_vswitches.default.vswitches.0.zone_id
  master_instance_type   = data.alicloud_hbase_instance_types.default.master_instance_types.0.instance_type
  core_instance_type     = data.alicloud_hbase_instance_types.default.core_instance_types.0.instance_type
  core_instance_quantity = var.core_instance_quantity
  core_disk_type         = "cloud_ssd"
  core_disk_size         = var.core_disk_size
  pay_type               = "PostPaid"
  duration               = 1
  auto_renew             = false
  deletion_protection    = var.deletion_protection
  vswitch_id             = data.alicloud_vswitches.default.vswitches.0.id
  cold_storage_size      = var.cold_storage_size

}