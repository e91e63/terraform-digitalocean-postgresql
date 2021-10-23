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
  database  = var.postgresql_info.database
  host      = var.postgresql_info.host
  password  = var.postgresql_info.password
  port      = var.postgresql_info.port
  username  = var.postgresql_info.user
  superuser = false
}
