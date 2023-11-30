resource "aws_security_group" "dynamicsg" {
  name = "dynamic_sg"
  description = "Ingress for vault"
  dynamic "ingress" {
    for_each = var.sg_port
    content {
      cidr_blocks = [0.0.0.0/32]
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
    }
  }
}
resource "aws_security_group" "dynamicsg_iterator" {
  name = "dynamic_sg"
  description = "Ingress for vault"
  dynamic "ingress" {
    for_each = var.sg_port
    iterator = port
    content {
      cidr_blocks = [0.0.0.0/32]
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
    }
  }
}
