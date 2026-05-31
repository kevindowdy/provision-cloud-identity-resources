data "aws_iam_policy_document" "this" {
  statement {
    sid    = "LambdaDeploy"
    effect = "Allow"

    actions = [
      "lambda:UpdateFunctionCode",
      "lambda:UpdateFunctionConfiguration",
      "lambda:GetFunction",
    ]

    resources = var.lambda_function_arns
  }

  # ecr:GetAuthorizationToken is a registry-level action — it must target "*"
  # regardless of how repositories are scoped below.
  statement {
    sid       = "ECRAuth"
    effect    = "Allow"
    actions   = ["ecr:GetAuthorizationToken"]
    resources = ["*"]
  }

  statement {
    sid       = "ECRRepositoryAccess"
    effect    = "Allow"
    actions   = ["ecr:*"]
    resources = var.ecr_repository_arns
  }
}

resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = data.aws_iam_policy_document.this.json
}
