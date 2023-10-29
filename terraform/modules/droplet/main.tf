terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_droplet" "debian_droplet" {
  name     = var.droplet_name
  size     = var.size
  region   = var.region
  image    = var.image_name
  ssh_keys = [var.ssh_key_id]

  tags = ["debian-to-arch"]
}
