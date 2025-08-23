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
  wait             = true
  timeout          = 600
  
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

# Wait for ArgoCD to be ready before creating applications
resource "time_sleep" "wait_for_argocd" {
  depends_on = [helm_release.argocd]
  create_duration = "60s"
}

# Create ArgoCD Application automatically using kubectl
resource "null_resource" "solar_system_app" {
  provisioner "local-exec" {
    command = <<EOF
# Configure kubectl to use EKS cluster
aws eks update-kubeconfig --name ${module.eks.cluster_name} --region us-east-1

# Wait for ArgoCD CRDs to be available
kubectl wait --for condition=established --timeout=300s crd/applications.argoproj.io

# Create the ArgoCD Application
kubectl apply -f - <<YAML
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: solar-system
  namespace: argocd
spec:
  project: default
  source:
    repoURL: https://github.com/KarimZakzouk/Graduation-Project-Devops
    targetRevision: HEAD
    path: helm
  destination:
    server: https://kubernetes.default.svc
    namespace: default
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
    syncOptions:
    - CreateNamespace=true
YAML
EOF
  }

  provisioner "local-exec" {
    when    = destroy
    command = <<EOF
# Configure kubectl for destroy
aws eks update-kubeconfig --name ${module.eks.cluster_name} --region us-east-1 || true
kubectl delete application solar-system -n argocd --ignore-not-found=true
EOF
  }

  depends_on = [time_sleep.wait_for_argocd]
}