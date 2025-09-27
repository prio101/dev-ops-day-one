terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.67.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

variable "digitalocean_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "ssh_key_name" {
  description = "Name of the SSH key in DigitalOcean"
  type        = string
  default     = "WSL Desktop"
}

resource "digitalocean_droplet" "web" {
  image    = "ubuntu-22-04-x64"
  name     = "example-droplet"
  region   = "nyc3"
  size     = "s-1vcpu-1gb"
  ssh_keys = var.ssh_key_name != "" ? [data.digitalocean_ssh_key.default.id] : []

  tags = ["web"]
}

data "digitalocean_ssh_key" "default" {
  name = var.ssh_key_name
}

output "droplet_ip" {
  value = digitalocean_droplet.web.ipv4_address
}



