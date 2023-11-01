terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}


module "ssh_key" {
  source         = "./modules/ssh_key"
  ssh_key_name   = var.ssh_key_name
  ssh_key_public = file(var.ssh_key_path)
}

module "debian_droplet" {
  source       = "./modules/droplet"
  droplet_name = var.droplet_name
  size         = var.size
  region       = var.region
  image_name   = var.image_name
  ssh_key_id   = module.ssh_key.ssh_key_id
  droplet_id   = module.debian_droplet.droplet_id_output
}

module "volume" {
  source             = "./modules/volume"
  volume_name        = "storage"
  region             = var.region
  volume_size        = var.volume_size
  filesystem_type    = var.filesystem_type
  filesystem_label   = var.filesystem_label
  volume_description = var.volume_description
  droplet_id         = module.debian_droplet.droplet_id_output
}

module "networking" {
  source               = "./modules/networking"
  firewall_name        = var.firewall_name
  droplet_ids          = [module.debian_droplet.droplet_id_output]
  ssh_port_range       = var.ssh_port_range
  ssh_source_addresses = var.ssh_source_addresses
}


resource "digitalocean_volume_attachment" "debian_volume" {
  droplet_id = module.debian_droplet.droplet_id_output
  volume_id  = module.volume.volume_id
}
