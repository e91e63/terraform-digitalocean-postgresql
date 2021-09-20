output "terraform_role" {
  sensitive = true
  value     = module.terraform_role.conf
}
