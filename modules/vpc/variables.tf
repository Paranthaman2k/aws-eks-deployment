# modules/vpc/variables.tf

variable "region" {
  description = "AWS region for the availability zones"
}

variable "cluster_name" {}
variable "vpc_cidr" {}
variable "subnet_cidrs" {
  type = list(string)
}
