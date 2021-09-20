output "conf" {
  value = {
    database = var.cluster_conf.database
    host     = var.cluster_conf.host
    password = postgresql_role.terraform.password
    port     = var.cluster_conf.port
    user     = postgresql_role.terraform.name
  }
}
