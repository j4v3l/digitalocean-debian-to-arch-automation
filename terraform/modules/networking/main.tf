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

  inbound_rule {
    protocol         = "tcp"
    source_addresses = ["0.0.0.0/0"]
    port_range       = "53"
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "1-65535"
  }

  outbound_rule {
    protocol   = "icmp"
    port_range = "1-65535"
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "53"
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "1-65535"
  }
}
