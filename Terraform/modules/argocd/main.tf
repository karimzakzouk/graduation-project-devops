# Install ArgoCD using Helm
resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = var.namespace
  version    = var.chart_version
  
  create_namespace = true
  wait             = true
  timeout          = var.timeout
  
  set {
    name  = "server.service.type"
    value = var.service_type
  }
  
  dynamic "set" {
    for_each = var.insecure ? [1] : []
    content {
      name  = "server.extraArgs[0]"
      value = "--insecure"
    }
  }

  # Additional ArgoCD configurations
  set {
    name  = "server.extraArgs[1]"
    value = "--grpc-web"
  }

  # Configure ArgoCD to work with LoadBalancer
  set {
    name  = "server.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-type"
    value = "nlb"
  }

  set {
    name  = "server.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-scheme"
    value = "internet-facing"
  }
}

# Wait for ArgoCD to be ready before creating applications
resource "time_sleep" "wait_for_argocd" {
  depends_on      = [helm_release.argocd]
  create_duration = var.wait_for_ready
}
