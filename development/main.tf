data "aws_caller_identity" "current" {}

locals {
  github_allowed_subjects  = ["repo:${var.github_org}/${var.github_repo}:${var.github_ref_pattern}"]
  oidc_provider_arn        = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/token.actions.githubusercontent.com"
  github_deploy_policy_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/${var.github_actions_deploy_policy_name}"
}

module "lambda_role" {
  source = "../modules/lambda-role"

  role_name   = var.lambda_role_name
  policy_arns = var.lambda_extra_policy_arns
}

module "github_actions_deploy_policy" {
  source = "../modules/github-actions-deploy-policy"

  policy_name          = var.github_actions_deploy_policy_name
  lambda_function_arns = var.lambda_function_arns
  ecr_repository_arns  = var.ecr_repository_arns
}

module "github_actions_role" {
  source = "../modules/github-actions-role"

  role_name         = var.github_actions_role_name
  oidc_provider_arn = local.oidc_provider_arn
  allowed_subjects  = local.github_allowed_subjects
  policy_arns       = [local.github_deploy_policy_arn]

  depends_on = [module.github_actions_deploy_policy]
}
