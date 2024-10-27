provider "aws" {
  region = var.region
}

module "vpc" {
  source        = "./modules/vpc"
  cluster_name  = var.cluster_name
  vpc_cidr      = var.vpc_cidr
  subnet_cidrs  = var.subnet_cidrs
  region        = var.region    # Ensure this line passes region to the module
}


module "iam" {
  source       = "./modules/iam"
  cluster_name = var.cluster_name  # Pass the variable from root to IAM module
}



module "eks" {
  source              = "./modules/eks"
  cluster_name        = var.cluster_name
  subnet_ids          = module.vpc.private_subnets
  eks_cluster_role_arn = module.iam.eks_cluster_role_arn
  node_role_arn   = module.iam.node_role_arn
  node_group_size     = var.node_group_size
  node_group_instance_type = var.node_group_instance_type
  
  # Pass these variables to the EKS module
  max_node_count = var.max_node_count
  min_node_count = var.min_node_count
}