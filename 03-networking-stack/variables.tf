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

variable "vpc" {
  type = object({
    cidr_block               = string
    name                     = string
    internet_gateway_name    = string
    nat_gateway_name         = string
    public_route_table_name  = string
    private_route_table_name = string
    public_subnets = list(object({
      cidr                    = string
      name                    = string
      availability_zone       = string
      map_public_ip_on_launch = bool
    }))
    private_subnets = list(object({
      cidr                    = string
      name                    = string
      availability_zone       = string
      map_public_ip_on_launch = bool
    }))
  })

  default = {
    cidr_block               = "10.0.0.0/24"
    name                     = "my-vpc"
    internet_gateway_name    = "my-vpc-internet-gateway"
    nat_gateway_name         = "my-vpc-nat-gw"
    public_route_table_name  = "my-vpc-public-rt"
    private_route_table_name = "my-vpc-private-rt"
    public_subnets = [{
      cidr                    = "10.0.0.0/26"
      name                    = "my-vpc-public-us-east-1a"
      availability_zone       = "us-east-1a"
      map_public_ip_on_launch = true
      },
      {
        cidr                    = "10.0.0.64/26"
        name                    = "my-vpc-public-us-east-1b"
        availability_zone       = "us-east-1b"
        map_public_ip_on_launch = true
    }]
    private_subnets = [{
      cidr                    = "10.0.0.128/26"
      name                    = "my-vpc-private-us-east-1a"
      availability_zone       = "us-east-1a"
      map_public_ip_on_launch = false
      },
      {
        cidr                    = "10.0.0.192/26"
        name                    = "my-vpc-private-us-east-1b"
        availability_zone       = "us-east-1b"
        map_public_ip_on_launch = false
    }]
  }
}