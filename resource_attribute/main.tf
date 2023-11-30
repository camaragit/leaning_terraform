resource "time_static" "time_update" {
}
resource "local_file" "time" {
  #On depend implicitement de la ressource time_static.time_update
  content = "Time stamp of this file is ${time_static.time_update.id}"
  filename = "time.txt"
  #dependance explicite m
  depends_on = [
  random_pet.my_pet
  ]
}

resource "random_pet" "my_pet" {
  prefix = "Test"
  separator = "."
  length = 3
}
resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits = "4096"
}
resource "local_file" "key_details" {
  filename = "key.txt"
  content = "${tls_private_key.pvtkey.private_key_pem}"
}
resource "local_file" "whale" {
  filename = "whale"
  content = "whale"
  depends_on = [ local_file.krill ]
}
resource "local_file" "krill" {
  filename = "krill"
  content = "krill"
}
