#################
# Provider
#################
variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}

variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

##############################################################
# HBase Instance
##############################################################
variable "availability_zone" {
  description = "The available zone to launch hbase instance."
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "Display name of the instance, [2, 128] English or Chinese characters, must start with a letter or Chinese in size, can contain numbers, '_' or '.', '-'."
  type        = string
  default     = "tf-module-hbase"
}

variable "engine_version" {
  description = "The version number of the database. Valid value: hbase:1.1, 2.0."
  type        = string
  default     = "2.0"
}

variable "master_instance_type" {
  description = "The master instance type. Valid value: hbase.n1.medium, hbase.sn1.large, hbase.sn1.2xlarge, hbase.sn1.4xlarge and so on."
  type        = string
  default     = ""
}

variable "core_instance_type" {
  description = "The master instance type. Valid value: hbase.sn1.large, hbase.sn1.2xlarge, hbase.sn1.4xlarge, hbase.sn2.large, hbase.sn2.2xlarge, hbase.sn2.4xlarge and so on."
  type        = string
  default     = ""
}

variable "core_instance_quantity" {
  description = "core instance node count, [3-20]."
  type        = number
  default     = 3
}

variable "core_disk_type" {
  description = "core node disk type. Valid value:cloud_ssd, cloud_efficiency, cloud_essd, local_hdd_pro, local_ssd_pro."
  type        = string
  default     = "cloud_ssd"
}

variable "core_disk_size" {
  description = "one disk size, unit: GB, default 4 disk per core node; all disk size = coreNodeSize * 4 * core_disk_size(2 * 4 * 100 =800GB)."
  type        = number
  default     = 100
}

variable "pay_type" {
  description = "pay type, Valid value:Prepaid: The subscription billing method is used, Postpaid: The pay-as-you-go billing method is used."
  type        = string
  default     = "PostPaid"
}

variable "duration" {
  description = "The duration that you will buy HBase cluster, valid when pay_type = PrePaid."
  type        = string
  default     = 1
}

variable "auto_renew" {
  description = "auto to renew cluster, valid when pay_type = PrePaid."
  type        = string
  default     = "false"
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}

variable "cold_storage_size" {
  description = "cold storage disk size, 0 mean is_cold_storage = false."
  type        = number
  default     = 0
}

#################
# extend
#################
variable "create_instance" {
  description = "Whether to create HBase instance. If false, you can use a existing HBase instance by setting `existing_instance_id`."
  type        = bool
  default     = true
}

variable "existing_instance_id" {
  description = "The Id of an existing HBase instance. If set, the `create_instance` will be ignored."
  type        = string
  default     = ""
}