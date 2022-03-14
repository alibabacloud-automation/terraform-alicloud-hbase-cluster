#################
# HBase Instance
#################
output "this_hbase_instance_id" {
  description = "The ID of the HBase instance."
  value       = local.this_instance_id
}

output "this_hbase_instance_name" {
  description = "The name of HBase instance."
  value       = concat(alicloud_hbase_instance.this.*.name, [""])[0]
}

output "this_hbase_instance_zone_id" {
  description = "The Zone to launch the HBase instance."
  value       = concat(alicloud_hbase_instance.this.*.zone_id, [""])[0]
}

output "this_hbase_instance_engine_version" {
  description = "The engine version of the HBase instance."
  value       = concat(alicloud_hbase_instance.this.*.engine_version, [""])[0]
}

output "this_hbase_instance_master_instance_type" {
  description = "The instance type of the master node. "
  value       = concat(alicloud_hbase_instance.this.*.master_instance_type, [""])[0]
}

output "this_hbase_instance_core_instance_type" {
  description = "The instance type of the core node. "
  value       = concat(alicloud_hbase_instance.this.*.core_instance_type, [""])[0]
}

output "this_hbase_instance_core_instance_quantity" {
  description = "The count of the core node. "
  value       = concat(alicloud_hbase_instance.this.*.core_instance_quantity, [""])[0]
}

output "this_hbase_instance_core_disk_type" {
  description = "The disk type of the core node. "
  value       = concat(alicloud_hbase_instance.this.*.vswitch_id, [""])[0]
}

output "this_hbase_instance_core_disk_size" {
  description = "The disk size of the core node. "
  value       = concat(alicloud_hbase_instance.this.*.core_disk_size, [""])[0]
}

output "this_hbase_instance_pay_type" {
  description = "The pay type"
  value       = concat(alicloud_hbase_instance.this.*.pay_type, [""])[0]
}

output "this_hbase_instance_duration" {
  description = "The duration that you will buy HBase instance."
  value       = concat(alicloud_hbase_instance.this.*.duration, [""])[0]
}

output "this_hbase_instance_auto_renew" {
  description = "True/False to auto renew. "
  value       = concat(alicloud_hbase_instance.this.*.auto_renew, [""])[0]
}

output "this_hbase_instance_vswitch_id" {
  description = "The virtual switch ID to launch HBase instances in one VPC. "
  value       = concat(alicloud_hbase_instance.this.*.vswitch_id, [""])[0]
}

output "this_hbase_instance_cold_storage_size" {
  description = "The HBase instance backup period. "
  value       = concat(alicloud_hbase_instance.this.*.cold_storage_size, [""])[0]
}