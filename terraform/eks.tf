module "eks" {
  source = "terraform-aws-modules/eks/aws"

  name               = var.project_name
  kubernetes_version = "1.36"

  endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  enable_cluster_creator_admin_permissions = true

  addons = {
    vpc-cni = {
      before_compute = true
    }

    coredns    = {}
    kube-proxy = {}
  }

  eks_managed_node_groups = {
    demo = {
      min_size     = 1
      max_size     = 1
      desired_size = 1

      instance_types = ["t3.small"]
    }
  }
}