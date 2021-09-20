terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.14.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  required_version = "~> 1"
}

provider "postgresql" {
  database = var.cluster_conf.database
  host     = var.cluster_conf.host
  password = var.cluster_conf.password
  port     = var.cluster_conf.port
  username = var.cluster_conf.user
}
