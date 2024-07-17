resource "aws_s3_bucket" "tfer--cf-templates-1qhvnje0a2dl-ap-south-1" {
  bucket        = "cf-templates-1qhvnje0a2dl-ap-south-1"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "cf-templates-1qhvnje0a2dl-ap-south-1"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--cloudwatch-s3-access-logs-beta" {
  bucket        = "cloudwatch-s3-access-logs-beta"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "cloudwatch-s3-access-logs-beta"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "S3-Console-Auto-Gen-Policy-1708513083514",
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "081371230266"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "logging.s3.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::cloudwatch-s3-access-logs-beta/*",
      "Sid": "S3PolicyStmt-DO-NOT-MODIFY-1708513083429"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--likeminds-alb-logs-beta" {
  bucket        = "likeminds-alb-logs-beta"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "likeminds-alb-logs-beta"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "true"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::718504428378:root"
      },
      "Resource": "arn:aws:s3:::likeminds-alb-logs-beta/skulk-beta/AWSLogs/081371230266/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  tags = {
    Name = "likeminds-alb-logs-beta"
  }

  tags_all = {
    Name = "likeminds-alb-logs-beta"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--likeminds-configs-beta" {
  bucket        = "likeminds-configs-beta"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "likeminds-configs-beta"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--likeminds-data-snapshots-beta" {
  bucket        = "likeminds-data-snapshots-beta"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "likeminds-data-snapshots-beta"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Policy15397346",
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:ListBucket",
        "s3:GetBucketAcl"
      ],
      "Effect": "Allow",
      "Principal": {
        "Service": "ap-south-1.elasticache-snapshot.amazonaws.com"
      },
      "Resource": [
        "arn:aws:s3:::likeminds-data-snapshots-beta",
        "arn:aws:s3:::likeminds-data-snapshots-beta/*"
      ],
      "Sid": "Stmt15399483"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::likeminds-data-snapshots-beta",
        "arn:aws:s3:::likeminds-data-snapshots-beta/*"
      ],
      "Sid": "AllowSSLRequestsOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--likeminds-nonprod-cloudtrail-081371230266-logs" {
  bucket        = "likeminds-nonprod-cloudtrail-081371230266-logs"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "180"
      expired_object_delete_marker = "false"
    }

    id = "likeminds-nonprod-cloudtrail-lifecycle-rule"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "likeminds-nonprod-cloudtrail-081371230266-logs"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs",
      "Sid": "AWSCloudTrailAclCheck"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs/AWSLogs/081371230266/*",
      "Sid": "AWSCloudTrailWrite"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs",
        "arn:aws:s3:::likeminds-nonprod-cloudtrail-081371230266-logs/*"
      ],
      "Sid": "AllowSSLRequestsOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--likeminds-nonprod-config-081371230266-logs" {
  bucket        = "likeminds-nonprod-config-081371230266-logs"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "180"
      expired_object_delete_marker = "false"
    }

    id = "likeminds-nonprod-config-lifecycle-rule"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "likeminds-nonprod-config-081371230266-logs"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::likeminds-nonprod-config-081371230266-logs",
      "Sid": "AWSConfigAclCheck"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::likeminds-nonprod-config-081371230266-logs/AWSLogs/081371230266/*",
      "Sid": "AWSCconfigWrite"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::likeminds-nonprod-config-081371230266-logs",
        "arn:aws:s3:::likeminds-nonprod-config-081371230266-logs/*"
      ],
      "Sid": "AllowSSLRequestsOnly"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--rapyder-likeminds-es-caravana" {
  bucket        = "rapyder-likeminds-es-caravana"
  force_destroy = "false"

  grant {
    id          = "7474bf5128dbeb17bdb53c2b9490bbfb3feacb6709dff4e2116ffcb2b746b26b"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  logging {
    target_bucket = "cloudwatch-s3-access-logs-beta"
    target_prefix = "rapyder-likeminds-es-caravana"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  tags = {
    Name = "rapyder-likeminds-es-caravana"
  }

  tags_all = {
    Name = "rapyder-likeminds-es-caravana"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
