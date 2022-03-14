#################
# HBase Instance
#################
output "this_hbase_instance_id" {
  description = "The ID of the HBase instance."
  value       = module.hbase.this_hbase_instance_id
}

output "this_hbase_instance_name" {
  description = "The name of HBase instance."
  value       = module.hbase.this_hbase_instance_name
}

output "this_hbase_instance_zone_id" {
  description = "The Zone to launch the HBase instance."
  value       = module.hbase.this_hbase_instance_zone_id
}

output "this_hbase_instance_engine_version" {
  description = "The engine version of the HBase instance."
  value       = module.hbase.this_hbase_instance_engine_version
}

output "this_hbase_instance_master_instance_type" {
  description = "The instance type of the master node. "
  value       = module.hbase.this_hbase_instance_master_instance_type
}

output "this_hbase_instance_core_instance_type" {
  description = "The instance type of the core node. "
  value       = module.hbase.this_hbase_instance_core_instance_type
}

output "this_hbase_instance_core_instance_quantity" {
  description = "The count of the core node. "
  value       = module.hbase.this_hbase_instance_core_instance_quantity
}

output "this_hbase_instance_core_disk_type" {
  description = "The disk type of the core node. "
  value       = module.hbase.this_hbase_instance_core_disk_type
}

output "this_hbase_instance_core_disk_size" {
  description = "The disk size of the core node. "
  value       = module.hbase.this_hbase_instance_core_disk_size
}

output "this_hbase_instance_pay_type" {
  description = "The pay type"
  value       = module.hbase.this_hbase_instance_pay_type
}

output "this_hbase_instance_duration" {
  description = "The duration that you will buy HBase instance."
  value       = module.hbase.this_hbase_instance_duration
}

output "this_hbase_instance_auto_renew" {
  description = "True/False to auto renew. "
  value       = module.hbase.this_hbase_instance_auto_renew
}

output "this_hbase_instance_vswitch_id" {
  description = "The virtual switch ID to launch HBase instances in one VPC. "
  value       = module.hbase.this_hbase_instance_vswitch_id
}

output "this_hbase_instance_cold_storage_size" {
  description = "The HBase instance backup period. "
  value       = module.hbase.this_hbase_instance_cold_storage_size
}