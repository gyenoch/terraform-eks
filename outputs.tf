output "cluster_id" {
  description = "EKS Cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS Control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security Group ID Attached to the Control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS Region"
  value       = var.aws_region
}

output "oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}


#output "zz_update_kubeconfig_command" {
# value = "aws eks update-kubeconfig --name " + module.eks.cluster_id
#  value = format("%s %s %s %s", "aws eks update-kubeconfig --name", module.eks.cluster_id, "--region", var.aws_region)
#}