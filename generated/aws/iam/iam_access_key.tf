resource "aws_iam_access_key" "tfer--AKIARF4Q2OA5CQZUO54Y" {
  depends_on = ["aws_iam_user.tfer--AIDARF4Q2OA5KVP7FX2TL"]
  status     = "Active"
  user       = "cloudwatch"
}

resource "aws_iam_access_key" "tfer--AKIARF4Q2OA5HNHP3VEY" {
  depends_on = ["aws_iam_user.tfer--AIDARF4Q2OA5AMUDBSNDQ"]
  status     = "Active"
  user       = "likeminds-admin-read-user"
}

resource "aws_iam_access_key" "tfer--AKIARF4Q2OA5KGYDKZF7" {
  depends_on = ["aws_iam_user.tfer--AIDARF4Q2OA5CCO5WPCPJ"]
  status     = "Inactive"
  user       = "grafana"
}

resource "aws_iam_access_key" "tfer--AKIARF4Q2OA5PL75Z6GH" {
  depends_on = ["aws_iam_user.tfer--AIDARF4Q2OA5BO3FCURRN"]
  status     = "Active"
  user       = "S3EnvDownloadUser"
}

resource "aws_iam_access_key" "tfer--AKIARF4Q2OA5PXIO5I44" {
  depends_on = ["aws_iam_user.tfer--AIDARF4Q2OA5HDQU6BOKV"]
  status     = "Active"
  user       = "aditya-singh-nonprod"
}
