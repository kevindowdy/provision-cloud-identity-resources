output "policy_arn" {
  value       = aws_iam_policy.this.arn
  description = "ARN of the Lambda SES policy."
}

output "policy_name" {
  value       = aws_iam_policy.this.name
  description = "Name of the Lambda SES policy."
}
