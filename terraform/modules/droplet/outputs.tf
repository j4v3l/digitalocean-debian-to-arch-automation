output "droplet_ip" {
  value = digitalocean_droplet.debian_droplet.ipv4_address
}

# output "volume_id" {
#   value = digitalocean_volume.debian_volume.id
# }

# output "firewall_id" {
#   value = digitalocean_firewall.public_internet.id
# }
