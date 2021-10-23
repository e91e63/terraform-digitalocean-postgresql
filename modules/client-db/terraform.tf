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
