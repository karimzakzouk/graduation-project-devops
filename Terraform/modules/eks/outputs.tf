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

output "karpenter_controller_role_arn" {
  description = "Karpenter controller IAM role ARN"
  value = aws_iam_role.karpenter_controller.arn
}

output "karpenter_interruption_queue_name" {
  description = "Karpenter interruption SQS queue name"
  value = aws_sqs_queue.karpenter_interruption.name
}