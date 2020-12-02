variable "environment" {
  default = "sandbox"
}

variable "project" {
  default = "murali-codetest"
}

variable "region" {
  default = "us-east-1"
}

variable "owner" {
  default = "murali"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/23"
}

variable "availability_zones" {
  default = ["us-east-1a" , "us-east-1b" , "us-east-1c"]
}


variable "instance_type" {
  default = "t2.nano"
}

variable "ami_id" {
  default = "ami-04d29b6f966df1537"
}

variable "keyname" {
  default = "murali"
}
