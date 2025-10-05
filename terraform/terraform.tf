# terraform remote state on terraform
# you will get this script from terraform cloud while creating a new workspace
terraform {
  cloud {

    organization = "practice-projects"

    workspaces {
      name = "tmp"
    }
  }
}
