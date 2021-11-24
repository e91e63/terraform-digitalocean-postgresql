terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }
  }
  required_version = "~> 1"
}

locals {
  postgresql_conf = defaults(var.postgresql_conf, {
    name = "${var.project_info.name}-postgresql"
  })
}

resource "digitalocean_database_cluster" "main" {
  engine               = "pg"
  name                 = local.postgresql_conf.name
  node_count           = local.postgresql_conf.node_count
  private_network_uuid = local.postgresql_conf.vpc_uuid
  region               = local.postgresql_conf.region
  size                 = local.postgresql_conf.size
  version              = local.postgresql_conf.version
}

resource "digitalocean_project_resources" "main" {
  project = var.project_info.id
  resources = [
    digitalocean_database_cluster.main.urn
  ]
}
