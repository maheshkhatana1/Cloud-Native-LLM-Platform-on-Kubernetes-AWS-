module "vpc" {
  source = "../../modules/vpc"

  name            = "openwebui-dev"
  cidr            = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
}


module "eks" {
  source = "../../modules/eks"

  cluster_name    = "openwebui-dev"
  cluster_version = "1.29"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  instance_types = ["t3.large"]
}

module "alb_controller" {
  source = "../../modules/alb-controller"

  cluster_name        = module.eks.cluster_name
  oidc_provider_arn   = module.eks.oidc_provider_arn
  region              = "us-east-1"
  vpc_id              = module.vpc.vpc_id
}

