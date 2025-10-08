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

variable "bucket_name" {
  type    = string
  default = "remote-backend-bucket-000000000000"
}

variable "dynamo_table_name" {
  type    = string
  default = "remote-backend-state-locking-table"
}