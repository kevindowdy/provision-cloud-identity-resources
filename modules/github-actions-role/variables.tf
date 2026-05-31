variable "role_name" {
  type        = string
  description = "Name of the IAM role."
}

variable "oidc_provider_arn" {
  type        = string
  description = "ARN of the GitHub Actions OIDC provider in this account."
}

variable "allowed_subjects" {
  type        = list(string)
  description = "List of OIDC subject claims permitted to assume this role (e.g. repo:org/repo:environment:production)."
}

variable "policy_arns" {
  type        = list(string)
  default     = []
  description = "Managed policy ARNs to attach to the role."
}
