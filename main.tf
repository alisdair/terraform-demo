resource "null_resource" "foo" {
  triggers {
    always = "#{uuid()}"
  }
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 20
}

output "random" {
  value = "${random_id.random.hex}"
}
