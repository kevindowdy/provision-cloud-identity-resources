variable "policy_name" {
  type        = string
  description = "Name of the IAM policy."
}

variable "lambda_function_arns" {
  type        = list(string)
  default     = ["*"]
  description = "Lambda function ARNs the policy allows deploy actions on. Defaults to all functions in the account."
}

variable "ecr_repository_arns" {
  type        = list(string)
  default     = ["*"]
  description = "ECR repository ARNs the policy allows repository-level actions on. Defaults to all repositories in the account."
}
