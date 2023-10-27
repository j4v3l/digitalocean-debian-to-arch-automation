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

resource "digitalocean_ssh_key" "my_key" {
  name       = "my-ssh-key"
  public_key = file("~/.ssh/id_rsa.pub")
}



resource "digitalocean_droplet" "debian_droplet" {
  name     = var.droplet_name
  size     = var.size
  region   = var.region
  image    = var.image_name
  ssh_keys = [digitalocean_ssh_key.my_key.id]

  tags = ["debian-to-arch"]

}

# resource "digitalocean_firewall" "public_internet" {
#   name        = "public-internet"
#   droplet_ids = [digitalocean_droplet.debian_droplet.id]
#   inbound_rule {
#     protocol   = "tcp"
#     port_range = "1-65535"
#   }
#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "22"
#     source_addresses = ["0.0.0.0/0"] # Your IP address
#   }
#   outbound_rule {
#     protocol   = "tcp"
#     port_range = "1-65535"
#   }
#   outbound_rule {
#     protocol   = "udp"
#     port_range = "1-65535"
#   }

# }
