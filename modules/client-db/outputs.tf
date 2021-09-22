output "client_db" {
  value = {
    database = postgresql_database.main.name
    dsn      = "postgres://${postgresql_role.main.name}:${urlencode(postgresql_role.main.password)}@${var.postgresql_conf.host}:${var.postgresql_conf.port}/${postgresql_database.main.name}"
    host     = var.postgresql_conf.host
    password = postgresql_role.main.password
    port     = var.postgresql_conf.port
    user     = postgresql_role.main.name
  }
}
