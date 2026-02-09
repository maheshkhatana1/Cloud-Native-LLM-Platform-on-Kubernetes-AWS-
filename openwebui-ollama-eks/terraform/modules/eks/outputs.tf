output "cluster_name" {
  description = "EKS cluster name"
  value       = module.this.cluster_name
}

output "cluster_endpoint" {
  description = "EKS API server endpoint"
  value       = module.this.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data"
  value       = module.this.cluster_certificate_authority_data
}

output "oidc_provider_arn" {
  description = "OIDC provider ARN for IRSA"
  value       = module.this.oidc_provider_arn
}
