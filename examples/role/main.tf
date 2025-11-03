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

resource "sftpgo_role" "test" {
    name    = "test"
    description = "created from Terraform"
}