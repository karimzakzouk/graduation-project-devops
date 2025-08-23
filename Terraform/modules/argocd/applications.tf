resource "null_resource" "argocd_applications" {
  count = length(var.applications)

  # Store dynamic values in triggers
  triggers = {
    cluster_name = var.cluster_name
    namespace    = var.namespace
    app_name     = var.applications[count.index].name
  }

  # Creation
  provisioner "local-exec" {
    command = <<EOF
# Configure kubectl to use EKS cluster
aws eks update-kubeconfig --name ${self.triggers.cluster_name} --region us-east-1

# Wait for ArgoCD CRDs to be available
kubectl wait --for condition=established --timeout=300s crd/applications.argoproj.io

# Create the ArgoCD Application
kubectl apply -f - <<YAML
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: ${self.triggers.app_name}
  namespace: ${self.triggers.namespace}
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

  # Destroy
  provisioner "local-exec" {
    when = destroy
    command = <<EOF
# Configure kubectl for destroy (using dynamic triggers)
aws eks update-kubeconfig --name ${self.triggers.cluster_name} --region us-east-1 || true
kubectl delete application ${self.triggers.app_name} -n ${self.triggers.namespace} --ignore-not-found=true
EOF
  }

  depends_on = [time_sleep.wait_for_argocd]
}
