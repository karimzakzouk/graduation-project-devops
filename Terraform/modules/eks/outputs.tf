output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value = aws_eks_cluster.main.name
}

output "cluster_certificate_authority_data" {
  description = "EKS cluster certificate authority data"
  value = aws_eks_cluster.main.certificate_authority[0].data
}