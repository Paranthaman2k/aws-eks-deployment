output "eks_cluster_name" {
  value = module.eks.eks_cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "eks_cluster_security_group_id" {
  value = module.eks.eks_cluster_security_group_id
}

output "node_group_arn" {
  value = module.eks.node_group_arn
}
