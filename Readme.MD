


eks-cluster
├── main.tf               # Main configuration to call modules
├── variables.tf          # Define inputs for the root module
├── outputs.tf            # Outputs for the root module
├── modules
│   ├── vpc
│   │   ├── main.tf       # VPC module code
│   │   ├── variables.tf  # Variables for VPC
│   │   └── outputs.tf    # Outputs for VPC
│   ├── iam
│   │   ├── main.tf       # IAM roles and policies
│   │   ├── variables.tf  # Variables for IAM
│   │   └── outputs.tf    # Outputs for IAM
│   └── eks
│       ├── main.tf       # EKS Cluster and Node Group
│       ├── variables.tf  # Variables for EKS
│       └── outputs.tf    # Outputs for EKS
