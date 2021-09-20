output "client_db" {
  value = {
    database = postgresql_database.main.name
    dsn = "postgres://${postgresql_role.main.name}:${urlencode(postgresql_role.main.password)}@${var.postgres_conf.host}:${var.postgres_conf.port}/${postgresql_database.main.name}"
    host     = var.postgres_conf.host
    password = postgresql_role.main.password
    port     = var.postgres_conf.port
    user     = postgresql_role.main.name
  }
}
