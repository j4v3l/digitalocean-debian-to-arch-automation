output "droplet_ip" {
  description = "value of the droplet ip"
  value       = digitalocean_droplet.debian_droplet.ipv4_address
}

# output "volume_id" {
#   value = digitalocean_volume.debian_volume.id
# }

# output "firewall_id" {
#   value = digitalocean_firewall.public_internet.id
# }

output "droplet_id" {
  description = "The ID of the created droplet."
  value       = digitalocean_droplet.debian_droplet
}


output "droplet_id_output" {
  description = "The ID of the created droplet."
  value       = digitalocean_droplet.debian_droplet.id
}
