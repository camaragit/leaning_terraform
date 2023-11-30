output "os-version" {
  value = data.local_file.os.content
}
data "local_file" "os" {
  filename = "text.txt"
}
