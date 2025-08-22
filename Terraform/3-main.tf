module "vpc" {
  source                = "./modules/vpc"
  
  vpc_cidr              = var.vpc_cidr
  availability_zones    = var.availability_zones
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  cluster_name          = var.cluster_name
}

module "eks" {
  source                = "./modules/eks"
  
  cluster_name          = var.cluster_name
  cluster_version       = var.cluster_version
  vpc_id                = module.vpc.vpc_id
  subnet_ids            = module.vpc.private_subnet_ids
  node_groups           = var.node_groups
}

# Install ArgoCD
resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "argocd"
  
  create_namespace = true
  
  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }
  
  set {
    name  = "server.extraArgs[0]"
    value = "--insecure"
  }

  depends_on = [module.eks]
}
