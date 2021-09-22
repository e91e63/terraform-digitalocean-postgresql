resource "postgresql_role" "terraform" {
  create_database = true
  create_role     = true
  name            = "terraform"
  login           = true
  password        = random_password.terraform.result
}

resource "random_password" "terraform" {
  length  = 24
  keepers = { cluster_urn = var.cluster_conf.urn }
  special = true
}
