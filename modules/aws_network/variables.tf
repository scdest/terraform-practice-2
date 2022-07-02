variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "private_route_table_name" {
  type = string
  default = "test-route-table"
}

variable "security_group_name" {
  type = string
  default = "test-security-group-name"
}

variable "nat" {
  type = string
  default = "test-nat"
}