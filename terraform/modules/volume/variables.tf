variable "volume_name" {
  description = "The name of the volume"
  type        = string
}

variable "region" {
  description = "The region to create the volume in"
  type        = string
}

variable "volume_size" {
  description = "The size of the volume in GiB"
  type        = number
}

variable "filesystem_type" {
  description = "The filesystem type of the volume"
  type        = string
}

variable "filesystem_label" {
  description = "The filesystem label of the volume"
  type        = string
}

variable "volume_description" {
  description = "A description for the volume"
  type        = string
}

variable "droplet_id" {
  description = "The ID of the droplet the volume will be attached to"
  type        = string
}
