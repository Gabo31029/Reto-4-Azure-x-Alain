variable "environments" {
  description = "Lista de entornos"
  type        = list(string)
  default     = ["dev", "test", "prod"]
}

variable "location" {
  type    = string
  default = "brazilsouth"
}
