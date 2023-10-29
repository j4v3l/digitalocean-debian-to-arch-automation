terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_firewall" "public_internet" {
  name        = var.firewall_name
  droplet_ids = var.droplet_ids

  inbound_rule {
    protocol         = "tcp"
    port_range       = var.ssh_port_range
    source_addresses = var.ssh_source_addresses
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "1-65535"
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "1-65535"
  }
}
