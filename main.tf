locals {
  postgresql_conf_default = {
    name                   = "${var.project_conf.name}-postgresql"
    node_count             = 1
    node_droplet_size_slug = "s-2vcpu-2gb"
    private_network_uuid   = null
    region                 = "sfo2"
    size                   = "db-s-1vcpu-1gb"
    version                = "13"
  }

  postgresql_conf_merged = merge(
    local.postgresql_conf_default,
    var.postgresql_conf,
  )
}

module "cluster" {
  source = "./modules/cluster"

  postgresql_conf = local.postgresql_conf_merged
  project_conf    = var.project_conf
}

module "terraform_role" {
  source = "./modules/terraform-role"

  cluster_conf = module.cluster.conf
}
