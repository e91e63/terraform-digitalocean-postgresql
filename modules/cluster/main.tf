resource "digitalocean_database_cluster" "main" {
  engine               = "pg"
  name                 = var.postgresql_conf.name
  node_count           = var.postgresql_conf.node_count
  private_network_uuid = var.postgresql_conf.private_network_uuid
  region               = var.postgresql_conf.region
  size                 = var.postgresql_conf.size
  version              = var.postgresql_conf.version
}

resource "digitalocean_project_resources" "main" {
  project = var.project_info.id
  resources = [
    digitalocean_database_cluster.main.urn
  ]
}
