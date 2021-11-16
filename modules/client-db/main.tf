resource "postgresql_database" "main" {
  name  = var.client_name
  owner = postgresql_role.main.name
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
  keepers = { client_name = var.client_name }
  special = true
}

terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3"
    }
  }

  required_version = "~> 1"
}

provider "postgresql" {
  database  = var.postgresql_conf.database
  host      = var.postgresql_conf.host
  password  = var.postgresql_conf.password
  port      = var.postgresql_conf.port
  superuser = false
  username  = var.postgresql_conf.user
}
