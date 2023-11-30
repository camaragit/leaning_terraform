resource "local_file" "dame" {
  filename = "dame.txt"
  content = "Bonjour Dame"
}
resource "local_sensitive_file" "sensensive" {
  filename = "fichier.txt"
  content = "contenu sensible"
}
resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
