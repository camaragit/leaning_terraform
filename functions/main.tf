resource "aws_iam_user" "cloud" {
  name = split(":",var.cloud_users)[count.index]
  count = length(split(":",var.cloud_users))

}
resource "local_file" "lookup" {
  filename = lookup(var.forlookup,"keyb","default value if not found" )
  content = "test"
}

resource "local_file" "lookup2" {
  filename = lookup(var.forlookup,"keyz","default value if not found" )
  content = "test"
}

resource "local_file" "element" {
  filename = element(var.sf,1 )
  content = "test"
}
