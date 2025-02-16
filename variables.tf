variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_prefix" {
  description = "cidr block for the subnet"
  type = string
}