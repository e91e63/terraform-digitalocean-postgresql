output "info" {
  sensitive = true
  value = {
    database = digitalocean_database_cluster.main.database
    host     = digitalocean_database_cluster.main.host
    password = digitalocean_database_cluster.main.password
    port     = digitalocean_database_cluster.main.port
    user     = digitalocean_database_cluster.main.user
    urn      = digitalocean_database_cluster.main.urn
  }
}
