variable "filename" {
  default = "test.txt"
}
variable "contenu" {
  default = "contenu"
}
resource "local_file" "myfile" {
  filename = var.filename
  content = var.contenu
}
