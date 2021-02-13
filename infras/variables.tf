variable "longhorn_enabled" {
  type    = bool
  default = false
}

variable "monitoring_enabled" {
  type    = bool
  default = false
}

variable "vault_enabled" {
  type    = bool
  default = false
}

variable "default_pool" {
  type = string
}

variable "cloudflare_email" {
  type = string
}

variable "dev_domain" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
}

variable "dev_sub_domains" {
  type = map(object({
    service_name = string
    service_port = number
    subdomain    = string
  }))
  default = {}
}