module "this" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.4"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true


  enable_irsa = true

  # ⭐ NEW WAY — ACCESS ENTRY
  access_entries = {
    mahesh_admin = {
      principal_arn = "arn:aws:iam::295655331805:user/mahesh.khatana"

      policy_associations = {
        admin = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
          access_scope = {
            type = "cluster"
          }
        }
      }
    }
  }

  eks_managed_node_groups = {
    default = {
      instance_types = var.instance_types
      desired_size   = var.desired_size
      min_size       = var.min_size
      max_size       = var.max_size
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Project     = "openwebui-ollama"
    Environment = "dev"
  }
}