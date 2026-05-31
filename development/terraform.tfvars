aws_region = "us-east-1"

# Lambda role
lambda_role_name         = "testing-role"
lambda_extra_policy_arns = []

# GitHub Actions role
github_actions_role_name   = "dev-github-actions-role"
oidc_provider_arn          = "arn:aws:iam::123456789012:oidc-provider/token.actions.githubusercontent.com"
github_org                 = "kevindowdy"
github_repo                = "provision-cloud-runtime-resources"
github_ref_pattern         = "*"
github_actions_policy_arns = []
