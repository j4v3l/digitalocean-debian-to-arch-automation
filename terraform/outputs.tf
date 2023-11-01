output "droplet_ip" {
  value = module.debian_droplet.droplet_ip
}

# output "volume_id" {
#   value = module.volume.volume_id.id
# }

# output "firewall_id" {
#   value = module.networking.firewall_id.id
# }

output "droplet_id" {
  value = module.debian_droplet.droplet_id
}
