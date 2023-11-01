variable "do_token" {
  description = "DigitalOcean API Token"
  type        = string
}

variable "droplet_name" {
  description = "Name of the droplet to be created"
  type        = string
  default     = "debian-to-arch-droplet"
}

variable "region" {
  description = "Region for the droplet"
  type        = string
  default     = "nyc3"
}

variable "image_name" {
  description = "Image name for the droplet"
  type        = string
  default     = "debian-10-x64"
}

variable "size" {
  description = "Droplet size"
  default     = "s-1vcpu-1gb"
}

variable "ssh_port_range" {
  description = "SSH port range"
  default     = "22"
}

variable "ssh_source_addresses" {
  description = "SSH source addresses"
  default     = ["0.0.0.0/0"]
}

variable "volume_size" {
  description = "Volume size in GB"
  default     = 20
}

variable "firewall_name" {
  description = "Firewall name"
  default     = "my-firewall"
}

variable "filesystem_type" {
  description = "Filesystem type"
  default     = "ext4"
}

variable "filesystem_label" {
  description = "Filesystem label"
  default     = "debian"
}

variable "volume_description" {
  description = "Volume description"
  default     = "debian-volume"
}

variable "ssh_key_name" {
  description = "SSH key name"
  default     = "my-ssh-key"
}

variable "ssh_key_path" {
  description = "Path to the Public SSH Key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

