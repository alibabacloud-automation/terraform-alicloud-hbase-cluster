##############################################################
# HBase Instance
##############################################################
variable "instance_name" {
  description = "Display name of the instance, [2, 128] English or Chinese characters, must start with a letter or Chinese in size, can contain numbers, '_' or '.', '-'."
  type        = string
  default     = "tf-testacc-name"
}

variable "core_instance_quantity" {
  description = "core instance node count, [3-20]."
  type        = number
  default     = 3
}

variable "core_disk_size" {
  description = "one disk size, unit: GB, default 4 disk per core node; all disk size = coreNodeSize * 4 * core_disk_size(2 * 4 * 100 =800GB)."
  type        = number
  default     = 400
}

variable "deletion_protection" {
  description = "The switch of delete protection."
  type        = bool
  default     = true
}

variable "cold_storage_size" {
  description = "cold storage disk size, 0 mean is_cold_storage = false."
  type        = number
  default     = 0
}