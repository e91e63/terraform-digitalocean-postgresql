variable "postgresql_info" {
  type = object({
    database = string
    host     = string
    password = string
    port     = string
    user     = string
    urn      = string
  })
}
