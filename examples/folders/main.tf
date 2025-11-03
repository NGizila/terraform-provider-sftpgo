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

data "sftpgo_folders" "folders" {}

output "folders" {
  value = data.sftpgo_folders.folders
}