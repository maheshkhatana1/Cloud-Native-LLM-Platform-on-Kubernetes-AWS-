variable "aws_region" {}
variable "cluster_name" {}
variable "cluster_version" {}

variable "vpc_cidr" {}
variable "azs" { type = list(string) }
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }

variable "instance_types" { type = list(string) }