variable "sg_port" {
  type = list(number)
  description = "List of ingress port"
  default = [8200,8300,8400,8700]
}
