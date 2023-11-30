variable "filename" {
  default = "test.txt"
}
variable "contenu" {
  default = "contenu"
}
#Si on commente et que la ressource existait, un apply supprimera la ressource
resource "local_file" "myfile" {
  filename = var.filename
  content = var.contenu
}
