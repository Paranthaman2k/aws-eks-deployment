variable "region" {
  default = "eu-central-1"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "node_group_size" {
  default = 2
}

variable "node_group_instance_type" {
  default = "t3.medium"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Root module variables.tf

variable "max_node_count" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
}

variable "min_node_count" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
}
