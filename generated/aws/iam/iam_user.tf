resource "aws_iam_user" "tfer--AIDARF4Q2OA5AMUDBSNDQ" {
  force_destroy = "false"
  name          = "likeminds-admin-read-user"
  path          = "/"

  tags = {
    AKIARF4Q2OA5HNHP3VEY = "likeminds-read-user-access-key-for-terraform"
    createdBy            = "likeminds"
    env                  = "staging"
  }

  tags_all = {
    AKIARF4Q2OA5HNHP3VEY = "likeminds-read-user-access-key-for-terraform"
    createdBy            = "likeminds"
    env                  = "staging"
  }
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5BFUR5K27U" {
  force_destroy = "false"
  name          = "siddharth-dubey-nonprod"
  path          = "/"

  tags = {
    Organisation = "LikeMinds"
  }

  tags_all = {
    Organisation = "LikeMinds"
  }
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5BO3FCURRN" {
  force_destroy = "false"
  name          = "S3EnvDownloadUser"
  path          = "/"

  tags = {
    AKIARF4Q2OA5PL75Z6GH = "Credentials for Jenkins Beta server to access env files from S3"
  }

  tags_all = {
    AKIARF4Q2OA5PL75Z6GH = "Credentials for Jenkins Beta server to access env files from S3"
  }
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5CCO5WPCPJ" {
  force_destroy = "false"
  name          = "grafana"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5DR6CIMLCK" {
  force_destroy = "false"
  name          = "ankit-garg-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5EY3FOZGUJ" {
  force_destroy = "false"
  name          = "animesh-das-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5HDQU6BOKV" {
  force_destroy = "false"
  name          = "aditya-singh-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5HWYD2NTXP" {
  force_destroy = "false"
  name          = "mahir-gupta-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5JCX3EFPPC" {
  force_destroy = "false"
  name          = "shubh-gupta-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5K6VRXDX6V" {
  force_destroy = "false"
  name          = "ketan-yadav"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5KM6SON4LM" {
  force_destroy = "false"
  name          = "natesh-relhan-nonprod"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDARF4Q2OA5KVP7FX2TL" {
  force_destroy = "false"
  name          = "cloudwatch"
  path          = "/"
}
