variable "addresses" {
  type = list
}

variable "aws_ni_name" {
  type = string
  default = "test-network-interface"
}

variable "instance_type" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "script_data" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "volume_size" {
  type = number
}

variable "ebs_type" {
  type = string
}

variable "instance_ami_id" {
    type = string
}