variable "instances" {
  default = ["mongodb", "redis","mysql", "rabbitmq"]
}
variable "zone_id" {
  default = "Z0732355102QE6GB8XDYY"
}
variable "domain_name" {
  default = "sgrdevsecops.fun"
}