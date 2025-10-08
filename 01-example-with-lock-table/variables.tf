variable "auth" {
  type = object({
    region          = string
    assume_role_arn = string
  })

  default = {
    region          = "us-east-1"
    assume_role_arn = "arn:aws:iam::000000000000:role/TempRoleToTestTerraform"
  }
}

variable "default_tags" {
  type = map(string)
  default = {
    Project = "terraform-remote-backend"
  }
}

