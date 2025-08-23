resource "random_password" "dex_secret" {
  length  = 64
  special = true
}


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

  # Server service type
  set {
    name  = "server.service.type"
    value = var.service_type
  }

  # Extra server arguments
  dynamic "set" {
    for_each = var.insecure ? [1] : []
    content {
      name  = "server.extraArgs[0]"
      value = "--insecure"
    }
  }

  set {
    name  = "server.extraArgs[1]"
    value = "--grpc-web"
  }

  # LoadBalancer annotations
  set {
    name  = "server.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-type"
    value = "nlb"
  }

  set {
    name  = "server.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-scheme"
    value = "internet-facing"
  }

  # ✅ Dex secret key (production)
    set {
    name  = "dex.config.server.secretKey"
    value = var.dex_secret_key != null ? var.dex_secret_key : random_password.dex_secret.result
    }
}

# Wait for ArgoCD to be ready before creating applications
resource "time_sleep" "wait_for_argocd" {
  depends_on      = [helm_release.argocd]
  create_duration = var.wait_for_ready
}
