variable "vpc_cidr" {
  type = string
}

variable "subnetpc1_cidr" {
  type = string
}

variable "subnetpc2_cidr" {
  type = string
}

variable "subnetpv1_cidr" {
  type = string
}

variable "subnetpv2_cidr" {
  type = string
}

variable "region" {
  type = string
}

variable "aws_ami_amzaon_linux" {
  type = string
}

variable "db_instance_password" {
  type = string
}
#####in this case you will enter your db instance password and must be more than 8 character#####
