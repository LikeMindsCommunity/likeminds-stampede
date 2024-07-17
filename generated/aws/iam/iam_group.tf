resource "aws_iam_group" "tfer--LikeMindsAdminReadOnlyUserGroup" {
  name = "LikeMindsAdminReadOnlyUserGroup"
  path = "/"
}

resource "aws_iam_group" "tfer--LikeMindsAdminUserGroup" {
  name = "LikeMindsAdminUserGroup"
  path = "/"
}

resource "aws_iam_group" "tfer--LikeMindsDevUserGroup" {
  name = "LikeMindsDevUserGroup"
  path = "/"
}
