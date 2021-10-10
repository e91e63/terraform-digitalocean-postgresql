variable "postgresql_conf" {
  type = object({
    name                   = optional(string)
    node_count             = string
    node_droplet_size_slug = string
    region                 = string
    size                   = string
    version                = string
    vpc_uuid               = string
  })
}

variable "project_info" {
  type = object({
    id   = string
    name = string
  })
}
