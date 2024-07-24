resource "aws_s3_bucket_policy" "tfer--cloudwatch-s3-access-logs-beta" {
  bucket = "cloudwatch-s3-access-logs-beta"
  policy = "{\"Id\":\"S3-Console-Auto-Gen-Policy-1708513083514\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"081371230266\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"logging.s3.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::cloudwatch-s3-access-logs-beta/*\",\"Sid\":\"S3PolicyStmt-DO-NOT-MODIFY-1708513083429\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--likeminds-alb-logs-beta" {
  bucket = "likeminds-alb-logs-beta"
  policy = "{\"Statement\":[{\"Action\":\"s3:PutObject\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"true\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::718504428378:root\"},\"Resource\":\"arn:aws:s3:::likeminds-alb-logs-beta/skulk-beta/AWSLogs/081371230266/*\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--likeminds-data-snapshots-beta" {
  bucket = "likeminds-data-snapshots-beta"
  policy = "{\"Id\":\"Policy15397346\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\",\"s3:GetBucketAcl\"],\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ap-south-1.elasticache-snapshot.amazonaws.com\"},\"Resource\":[\"arn:aws:s3:::likeminds-data-snapshots-beta\",\"arn:aws:s3:::likeminds-data-snapshots-beta/*\"],\"Sid\":\"Stmt15399483\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::likeminds-data-snapshots-beta\",\"arn:aws:s3:::likeminds-data-snapshots-beta/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--likeminds-nonprod-cloudtrail-081371230266-logs" {
  bucket = "likeminds-nonprod-cloudtrail-081371230266-logs"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs\",\"Sid\":\"AWSCloudTrailAclCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs/AWSLogs/081371230266/*\",\"Sid\":\"AWSCloudTrailWrite\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs\",\"arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--likeminds-nonprod-config-081371230266-logs" {
  bucket = "likeminds-nonprod-config-081371230266-logs"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::likeminds-nonprod-config-081371230266-logs\",\"Sid\":\"AWSConfigAclCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::likeminds-nonprod-config-081371230266-logs/AWSLogs/081371230266/*\",\"Sid\":\"AWSCconfigWrite\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::likeminds-nonprod-config-081371230266-logs\",\"arn:aws:s3:::likeminds-nonprod-config-081371230266-logs/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}
