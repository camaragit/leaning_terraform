resource "local_file" "tfvarsfile" {
  filename = var.filename
  content = var.contenu
}
