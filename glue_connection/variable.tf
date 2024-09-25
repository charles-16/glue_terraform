variable "availability_zone" {
  type = list(string)
  default = [ "us-east-1e" ]
}

variable "security_group" {
  type = list(string)
  default = [ "sg-08f60b3f8fd907895" ]
}

variable "subnet_id" {
  type = list(string)
  default = [ "subnet-006a66a3d1b284fc4", "subnet-0f94c69462a18b53e" ]
}