resource "aws_iam_user_group_membership" "tfer--aditya-singh-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "aditya-singh-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--animesh-das-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "animesh-das-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--ankit-garg-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "ankit-garg-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--ketan-yadav-002F-LikeMindsAdminUserGroup" {
  groups = ["LikeMindsAdminUserGroup"]
  user   = "ketan-yadav"
}

resource "aws_iam_user_group_membership" "tfer--likeminds-admin-read-user-002F-LikeMindsAdminReadOnlyUserGroup" {
  groups = ["LikeMindsAdminReadOnlyUserGroup"]
  user   = "likeminds-admin-read-user"
}

resource "aws_iam_user_group_membership" "tfer--mahir-gupta-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "mahir-gupta-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--natesh-relhan-nonprod-002F-LikeMindsAdminUserGroup" {
  groups = ["LikeMindsAdminUserGroup"]
  user   = "natesh-relhan-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--shubh-gupta-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "shubh-gupta-nonprod"
}

resource "aws_iam_user_group_membership" "tfer--siddharth-dubey-nonprod-002F-LikeMindsDevUserGroup" {
  groups = ["LikeMindsDevUserGroup"]
  user   = "siddharth-dubey-nonprod"
}
