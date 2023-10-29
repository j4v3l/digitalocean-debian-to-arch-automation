variable "firewall_name" {
  description = "The name of the firewall"
  type        = string
  default     = "public-internet"
}

variable "droplet_ids" {
  description = "A list of droplet IDs to apply the firewall to"
  type        = list(string)
}

variable "ssh_port_range" {
  description = "The port range for SSH inbound rules"
  type        = string
  default     = "22"
}

variable "ssh_source_addresses" {
  description = "A list of source IP addresses to allow SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
