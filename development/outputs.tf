output "lambda_role_arn" {
  value       = module.lambda_role.role_arn
  description = "ARN of the Lambda execution role."
}

output "lambda_role_name" {
  value       = module.lambda_role.role_name
  description = "Name of the Lambda execution role."
}

output "github_actions_role_arn" {
  value       = module.github_actions_role.role_arn
  description = "ARN of the GitHub Actions OIDC role."
}

output "github_actions_role_name" {
  value       = module.github_actions_role.role_name
  description = "Name of the GitHub Actions OIDC role."
}

output "github_actions_deploy_policy_arn" {
  value       = module.github_actions_deploy_policy.policy_arn
  description = "ARN of the GitHub Actions deploy policy."
}
