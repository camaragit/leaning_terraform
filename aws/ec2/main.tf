resource "aws_instance" "cerberus" {
  ami =var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.cerberus-key.id
  user_data = file("install-nginx.sh")

}
resource "aws_key_pair" "cerberus-key" {
  key_name = "cerberus"
  public_key = file("./.ssh/cerberus.pub")
}
