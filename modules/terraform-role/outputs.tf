output "info" {
  sensitive = true
  value = {
    database = var.postgresql_info.database
    host     = var.postgresql_info.host
    password = postgresql_role.terraform.password
    port     = var.postgresql_info.port
    user     = postgresql_role.terraform.name
  }
}
