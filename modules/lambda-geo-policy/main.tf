data "aws_iam_policy_document" "this" {
  statement {
    sid    = "VisualEditor0"
    effect = "Allow"

    actions = [
      "geo:*",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = data.aws_iam_policy_document.this.json
}
