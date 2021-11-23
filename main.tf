resource "alicloud_hbase_instance" "this" {
  count                  = var.create ? 1 : 0
  name                   = var.instance_name
  zone_id                = var.availability_zone
  engine                 = "hbase"
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

