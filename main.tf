provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/hbase"
}

resource "alicloud_hbase_instance" "this" {
  name                   = var.instance_name
  zone_id                = var.availability_zone
  engine                 = var.engine
  engine_version         = var.engine_version
  master_instance_type   = var.master_instance_type
  core_instance_type     = var.core_instance_type
  core_instance_quantity = var.core_instance_quantity
  core_disk_type         = var.core_disk_type
  core_disk_size         = var.core_disk_size
  pay_type               = var.pay_type
  duration               = var.duration
  auto_renew             = var.auto_renew
  vswitch_id             = var.vswitch_id
  cold_storage_size      = var.cold_storage_size
}

