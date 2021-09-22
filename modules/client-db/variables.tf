variable "client_name" {
  type = string
}

variable "postgresql_conf" {
  type = object({
    database = string
    host     = string
    password = string
    port     = string
    user     = string
  })
}
