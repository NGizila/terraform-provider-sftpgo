terraform {
  required_providers {
    sftpgo = {
      source = "registry.terraform.io/NGizila/sftpgo"
    }
  }
}

provider "sftpgo" {
  host     = "http://localhost:8080"
  username = "admin"
  password = "password"
}

data "sftpgo_defender_entries" "entries" {}

output "entries" {
  value = data.sftpgo_defender_entries.entries
}