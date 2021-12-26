terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

variable "droplet_size_slug" {
  type = "string"
  description = "The DO droplet size slug, as found in https://slugs.do-api.dev"
  default = "s-1vcpu-1gb"
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "minecraft-server" {
  image             = "rancheros"
  name              = "minecraft-server"
  region            = "ams3"
  size              = var.droplet_size_slug
  monitoring        = true
  ssh_keys          = [27035622, 32737777, 29695889]
  graceful_shutdown = true
}

resource "digitalocean_domain" "minecraft-server-domain" {
  name       = "minecraft.mariorios.dev"
  ip_address = digitalocean_droplet.minecraft-server.ipv4_address
}

resource "digitalocean_project" "minecraft" {
  name        = "minecraft"
  environment = "Production"
  purpose     = "Service or API"
  resources = [digitalocean_droplet.minecraft-server.urn, digitalocean_domain.minecraft-server-domain.urn]
}
