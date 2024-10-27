# modules/eks/variables.tf

variable "cluster_name" {}
variable "eks_cluster_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "node_group_size" {
  default = 2
}

variable "node_group_instance_type" {
  default = "t3.medium"
}


# modules/eks/variables.tf

variable "max_node_count" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
  default     = 3  # Set a default value or adjust as needed
}

variable "min_node_count" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
  default     = 1  # Set a default value or adjust as needed
}

variable "desired_node_count" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
  default     = 2  # This will cause an error
}

variable "node_role_arn" {
  description = "ARN of the IAM role for the EKS node group"
  type        = string
}
