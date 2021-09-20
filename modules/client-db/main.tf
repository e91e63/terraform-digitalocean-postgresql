resource "postgresql_database" "main" {
  name              = var.client_name
  owner             = postgresql_role.main.name
}

resource "postgresql_role" "main" {
  create_database = false
  create_role     = false
  name            = var.client_name
  login           = true
  password        = random_password.main.result
}

resource "random_password" "main" {
  length  = 24
  keepers = { client_name = var.client_name}
  special = true
}
