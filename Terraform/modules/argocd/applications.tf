# Create ArgoCD Applications
resource "null_resource" "argocd_applications" {
  count = length(var.applications)

  provisioner "local-exec" {
    command = <<EOF
# Configure kubectl to use EKS cluster
aws eks update-kubeconfig --name ${var.cluster_name} --region us-east-1

# Wait for ArgoCD CRDs to be available
kubectl wait --for condition=established --timeout=300s crd/applications.argoproj.io

# Create the ArgoCD Application
kubectl apply -f - <<YAML
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: ${var.applications[count.index].name}
  namespace: ${var.namespace}
spec:
  project: default
  source:
    repoURL: ${var.applications[count.index].repository_url}
    targetRevision: ${var.applications[count.index].target_revision}
    path: ${var.applications[count.index].path}
  destination:
    server: https://kubernetes.default.svc
    namespace: ${var.applications[count.index].destination_namespace}
  syncPolicy:
    automated:
      prune: ${var.applications[count.index].prune}
      selfHeal: ${var.applications[count.index].self_heal}
    syncOptions:
    - CreateNamespace=true
YAML
EOF
  }

  provisioner "local-exec" {
    when    = destroy
  command = <<EOF
# Configure kubectl for destroy (using hardcoded values)
aws eks update-kubeconfig --name otel-cluster --region us-east-1 || true
kubectl delete application ${self.triggers.name} -n argocd --ignore-not-found=true
EOF
  }

  depends_on = [time_sleep.wait_for_argocd]
}
