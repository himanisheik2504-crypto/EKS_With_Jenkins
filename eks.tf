module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.0.0"
  cluster_name    = "my-cluster"
  cluster_version = "1.28"
  subnets         = module.vpc_main.public_subnets
  vpc_id          = module.vpc_main.vpc_id
}
