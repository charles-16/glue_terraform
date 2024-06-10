resource "aws_glue_connection" "vpc_connection" {
  name = "Glue_vpc_connection"
  description = "Glue_Access_to_VPC"
  connection_type = "NETWORK"

  physical_connection_requirements {
    availability_zone = var.availability_zone[0]
    security_group_id_list = var.security_group
    subnet_id = var.subnet_id[0]
  }
}