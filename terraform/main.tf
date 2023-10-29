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
  ssh_key_name   = "my-ssh-key"
  ssh_key_public = file("~/.ssh/id_rsa.pub")
}

module "debian_droplet" {
  source       = "./modules/droplet"
  droplet_name = var.droplet_name
  size         = var.size
  region       = var.region
  image_name   = var.image_name
  ssh_key_id   = module.ssh_key.ssh_key_id
}

# module "volume" {
#   source             = "./modules/volume"
#   volume_name        = "debian-volume"
#   region             = var.region
#   volume_size        = 20 # Example size, or pass through a variable
#   filesystem_type    = "ext4"
#   filesystem_label   = "storage"
#   volume_description = "debian-volume"
#   droplet_id         = module.debian_droplet.droplet_ip
# }

# module "networking" {
#   source               = "./modules/networking"
#   firewall_name        = "my-firewall"
#   droplet_ids          = [module.debian_droplet.droplet_ip] # Assuming the droplet module outputs the droplet ID
#   ssh_port_range       = "22"
#   ssh_source_addresses = ["0.0.0.0/0"] # Replace with your actual IP if needed
# }


