terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_volume" "volume" {
  name                     = var.volume_name
  region                   = var.region
  size                     = var.volume_size
  initial_filesystem_type  = var.filesystem_type
  initial_filesystem_label = var.filesystem_label
  description              = var.volume_description

}
