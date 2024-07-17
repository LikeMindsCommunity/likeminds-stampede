resource "aws_iam_group_policy_attachment" "tfer--LikeMindsAdminReadOnlyUserGroup_ReadOnlyAccess" {
  group      = "LikeMindsAdminReadOnlyUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsAdminUserGroup_AdministratorAccess" {
  group      = "LikeMindsAdminUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsAdminUserGroup_IAMUserChangePassword" {
  group      = "LikeMindsAdminUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AWSLambda_FullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AmazonEC2FullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AmazonOpenSearchServiceFullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AmazonRDSFullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AmazonS3FullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_AmazonSSMFullAccess" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_CloudWatchFullAccessV2" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccessV2"
}

resource "aws_iam_group_policy_attachment" "tfer--LikeMindsDevUserGroup_IAMUserChangePassword" {
  group      = "LikeMindsDevUserGroup"
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
}
