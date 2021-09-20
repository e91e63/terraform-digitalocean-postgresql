variable "postgresql_conf" {
  type = object({
    name                   = string
    name                   = string
    node_count             = string
    node_droplet_size_slug = string
    private_network_uuid   = string
    region                 = string
    size                   = string
    version                = string
  })
}

variable "project_conf" {
  type = object({
    name = string
  })
}
