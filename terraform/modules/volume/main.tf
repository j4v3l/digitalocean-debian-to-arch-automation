terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_volume" "debian_volume" {
  name                     = var.volume_name
  region                   = var.region
  size                     = var.volume_size
  initial_filesystem_type  = var.filesystem_type
  initial_filesystem_label = var.filesystem_label
  description              = var.volume_description
}

resource "digitalocean_volume_attachment" "debian_volume_attachment" {
  droplet_id = var.droplet_id
  volume_id  = digitalocean_volume.debian_volume.id
}
