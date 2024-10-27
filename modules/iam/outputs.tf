output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

# modules/iam/outputs.tf

output "node_role_arn" {
  value = aws_iam_role.eks_node_group_role.arn  # Update with the correct resource name
}
