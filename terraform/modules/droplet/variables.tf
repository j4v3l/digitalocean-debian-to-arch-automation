variable "droplet_name" {
  description = "Name of the droplet to be created"
  type        = string
}

variable "region" {
  description = "Region for the droplet"
  type        = string
}

variable "ssh_key_id" {
  description = "SSH Key ID for accessing the droplet"
  type        = string
}

variable "image_name" {
  description = "Image name for the droplet"
  type        = string
}

variable "size" {
  description = "Droplet size"
  type        = string
}

variable "droplet_id" {
  description = "The ID of the droplet the volume will be attached to"
  type        = string
}