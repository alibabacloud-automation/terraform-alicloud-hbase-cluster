provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/hbase"
}
locals {
  engine_version = "1.1"
}

module "hbase" {
  source = "../../"
  region = var.region

  #################
  # HBase Instance
  #################
  instance_name          = var.instance_name
  availability_zone      = var.availability_zone
  engine_version         = local.engine_version
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

