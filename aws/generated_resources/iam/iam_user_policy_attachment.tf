resource "aws_iam_user_policy_attachment" "tfer--S3EnvDownloadUser_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "S3EnvDownloadUser"
}

resource "aws_iam_user_policy_attachment" "tfer--aditya-singh-nonprod_ecr-full-access-policy" {
  policy_arn = "arn:aws:iam::081371230266:policy/ecr-full-access-policy"
  user       = "aditya-singh-nonprod"
}

resource "aws_iam_user_policy_attachment" "tfer--cloudwatch_CloudWatchLogsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
  user       = "cloudwatch"
}

resource "aws_iam_user_policy_attachment" "tfer--grafana_Grafana_Policy" {
  policy_arn = "arn:aws:iam::081371230266:policy/Grafana_Policy"
  user       = "grafana"
}
