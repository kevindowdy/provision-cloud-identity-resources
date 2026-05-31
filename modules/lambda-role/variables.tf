variable "role_name" {
  type        = string
  description = "Name of the Lambda execution role."
}

variable "policy_arns" {
  type        = list(string)
  default     = []
  description = "Managed policy ARNs to attach beyond the basic execution policy."
}
