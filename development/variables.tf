variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy into."
}

# ── Lambda role ──────────────────────────────────────────────────────────────

variable "lambda_role_name" {
  type        = string
  default     = "dev-lambda-execution-role"
  description = "Name of the Lambda execution role."
}

variable "lambda_extra_policy_arns" {
  type        = list(string)
  default     = []
  description = "Additional managed policy ARNs to attach to the Lambda role beyond AWSLambdaBasicExecutionRole."
}

# ── GitHub Actions role ──────────────────────────────────────────────────────

variable "github_actions_role_name" {
  type        = string
  default     = "dev-github-actions-role"
  description = "Name of the GitHub Actions OIDC role."
}

variable "oidc_provider_arn" {
  type        = string
  description = "ARN of the GitHub Actions OIDC provider (token.actions.githubusercontent.com) in this account."
}

variable "github_org" {
  type        = string
  description = "GitHub organization that owns the repository (e.g. my-org)."
}

variable "github_repo" {
  type        = string
  description = "GitHub repository name within the org (e.g. my-repo)."
}

variable "github_ref_pattern" {
  type        = string
  default     = "*"
  description = "Ref pattern appended to the OIDC subject (e.g. * for any ref, ref:refs/heads/main for a specific branch)."
}

variable "github_actions_deploy_policy_name" {
  type        = string
  default     = "dev-github-actions-deploy-policy"
  description = "Name of the IAM policy granting Lambda deploy and ECR access to the GitHub Actions role."
}

variable "lambda_function_arns" {
  type        = list(string)
  default     = ["*"]
  description = "Lambda function ARNs the GitHub Actions role may deploy to. Defaults to all functions."
}

variable "ecr_repository_arns" {
  type        = list(string)
  default     = ["*"]
  description = "ECR repository ARNs the GitHub Actions role may access. Defaults to all repositories."
}
