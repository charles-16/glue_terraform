variable "availability_zone" {
  type = list(string)
  default = [ "us-east-1e" ]
}

variable "security_group" {
  type = list(string)
  default = [ "sg-91bfcabf" ]
}

variable "subnet_id" {
  type = list(string)
  default = [ "subnet-c63fc8a0", "subnet-ffdb5db2" ]
}