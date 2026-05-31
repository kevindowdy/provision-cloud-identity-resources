data "aws_iam_policy_document" "this" {
  statement {
    sid       = "SID1"
    effect    = "Allow"
    actions   = ["ses:SendEmail"]
    resources = ["*"]
  }

  statement {
    sid       = "SID2"
    effect    = "Allow"
    actions   = ["ses:SendRawEmail"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = data.aws_iam_policy_document.this.json
}
