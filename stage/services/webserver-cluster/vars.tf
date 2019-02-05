variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-west-1"
}
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}