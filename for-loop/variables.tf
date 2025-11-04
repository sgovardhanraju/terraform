variable "instances" {
  # default = ["mongodb", "redis","mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
  default = {
    mongodb = "t3.micro"
    redis = "t3.micro"
    mysql = "t3.small"
  }
}
variable "zone_id" {
  default = "Z0732355102QE6GB8XDYY"
}
variable "domain_name" {
  default = "sgrdevsecops.fun"
}