data "aws_iam_policy_document" "this" {
  statement {
    sid    = "VisualEditor0"
    effect = "Allow"

    actions = [
      "geo:ListDevicePositions",
      "geo:GetDevicePosition",
      "geo:CalculateRoute",
      "geo-routes:*",
      "geo:DescribePlaceIndex",
      "geo:DescribeGeofenceCollection",
      "geo:SearchPlaceIndexForPosition",
      "geo:GetPlace",
      "geo:ListTrackerConsumers",
      "geo-places:*",
      "geo:*",
      "geo:GetMapTile",
      "geo:ForecastGeofenceEvents",
      "geo:SearchPlaceIndexForText",
      "geo:DescribeKey",
      "geo:VerifyDevicePosition",
      "geo:DescribeMap",
      "geo:BatchGetDevicePosition",
      "geo:GetMapGlyphs",
      "geo:ListTagsForResource",
      "geo:GetDevicePositionHistory",
      "geo:DescribeTracker",
      "geo:GetMapSprites",
      "geo:GetMapStyleDescriptor",
      "geo:CalculateRouteMatrix",
      "geo:ListGeofences",
      "geo:GetGeofence",
      "geo-maps:*",
      "geo:SearchPlaceIndexForSuggestions",
      "geo:DescribeRouteCalculator",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = data.aws_iam_policy_document.this.json
}
