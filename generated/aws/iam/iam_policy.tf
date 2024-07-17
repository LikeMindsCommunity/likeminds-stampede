resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-31bf3d31-bfae-4641-af68-399e6891b935" {
  name = "AWSLambdaBasicExecutionRole-31bf3d31-bfae-4641-af68-399e6891b935"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:ap-south-1:081371230266:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-south-1:081371230266:log-group:/aws/lambda/likeminds-staging-stop:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-33e02f0e-9657-405e-9aa1-0d834ecb7ee2" {
  name = "AWSLambdaBasicExecutionRole-33e02f0e-9657-405e-9aa1-0d834ecb7ee2"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:ap-south-1:081371230266:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-south-1:081371230266:log-group:/aws/lambda/mau_tracker:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Grafana_Policy" {
  name = "Grafana_Policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:DescribeAlarmsForMetric",
        "cloudwatch:DescribeAlarmHistory",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:ListMetrics",
        "cloudwatch:GetMetricData",
        "cloudwatch:GetInsightRuleReport"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowReadingMetricsFromCloudWatch"
    },
    {
      "Action": [
        "logs:DescribeLogGroups",
        "logs:GetLogGroupFields",
        "logs:StartQuery",
        "logs:StopQuery",
        "logs:GetQueryResults",
        "logs:GetLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowReadingLogsFromCloudWatch"
    },
    {
      "Action": [
        "ec2:DescribeTags",
        "ec2:DescribeInstances",
        "ec2:DescribeRegions"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowReadingTagsInstancesRegionsFromEC2"
    },
    {
      "Action": "tag:GetResources",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowReadingResourcesForTags"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--LikeMindsEKSAdminPolicy" {
  description = "EKS admin policy for likeminds users "
  name        = "LikeMindsEKSAdminPolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "eks:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": "eks.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    CreatedBy = "LikeMinds"
  }

  tags_all = {
    CreatedBy = "LikeMinds"
  }
}

resource "aws_iam_policy" "tfer--PrometheusCloudWatchExporterPolicy" {
  name = "PrometheusCloudWatchExporterPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:TagResource",
        "tag:GetResources",
        "cloudwatch:GetMetricData",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:ListMetrics"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--RapyderAdminUserPolicy" {
  description = "Default Policy for Rapyder Admin User Group"
  name        = "RapyderAdminUserPolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:AttachRolePolicy",
        "iam:AttachUserPolicy",
        "iam:CreatePolicy",
        "iam:CreateRole",
        "iam:CreateSAMLProvider",
        "iam:CreateUser",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:GetSAMLProvider",
        "iam:GetUser",
        "iam:GetUserPolicy",
        "iam:ListPolicies",
        "iam:ListPoliciesGrantingServiceAccess",
        "iam:ListPolicyTags",
        "iam:ListPolicyVersions",
        "iam:ListRolePolicies",
        "iam:ListRoleTags",
        "iam:ListRoles",
        "iam:ListSAMLProviderTags",
        "iam:ListSAMLProviders",
        "iam:ListUserPolicies",
        "iam:ListUsers",
        "iam:PassRole",
        "iam:PutRolePolicy",
        "iam:TagPolicy",
        "iam:TagRole",
        "iam:TagSAMLProvider",
        "iam:TagUser",
        "iam:UntagPolicy",
        "iam:UntagRole",
        "iam:UntagUser",
        "iam:UpdateRole",
        "iam:UpdateRoleDescription",
        "iam:UpdateSAMLProvider",
        "iam:UpdateUser",
        "cloudformation:*",
        "iam:AddClientIDToOpenIDConnectProvider",
        "iam:CreateOpenIDConnectProvider",
        "iam:GetOpenIDConnectProvider",
        "iam:ListOpenIDConnectProviderTags",
        "iam:ListOpenIDConnectProviders",
        "iam:RemoveClientIDFromOpenIDConnectProvider",
        "iam:TagOpenIDConnectProvider",
        "iam:UntagOpenIDConnectProvider",
        "iam:UpdateOpenIDConnectProviderThumbprint"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "Stmt1616052329341"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ScrutECRPermission" {
  name = "ScrutECRPermission"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetRepositoryPolicy",
        "ecr:DescribeRepositories",
        "ecr:ListImages",
        "ecr:DescribeImages",
        "ecr:BatchGetImage",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:ListTagsForResource",
        "ecr:DescribeImageScanFindings",
        "ecs:ListAccountSettings"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--SnapshotPolicy" {
  description = "SnapshotPolicy"
  name        = "SnapshotPolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::rapyder-likeminds-es-caravana"
      ]
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::rapyder-likeminds-es-caravana/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    Name = "SnapshotPolicy"
  }

  tags_all = {
    Name = "SnapshotPolicy"
  }
}

resource "aws_iam_policy" "tfer--ecr-full-access-policy" {
  description = "ecr-full-access-policy"
  name        = "ecr-full-access-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecr:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--es-snapshot-copy" {
  description = "es-snapshot-copy"
  name        = "es-snapshot-copy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::081371230266:role/TheSnapshotRole"
    },
    {
      "Action": "es:ESHttpPut",
      "Effect": "Allow",
      "Resource": "arn:aws:es:ap-south-1:081371230266:domain/likeminds-staging-os-caravan/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--likemind-stage-user-policy-es" {
  description = "likemind-stage-user-policy-es"
  name        = "likemind-stage-user-policy-es"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::081371230266:role/likeminds-staging-opensearch-role"
    },
    {
      "Action": "es:ESHttpPut",
      "Effect": "Allow",
      "Resource": "arn:aws:es:ap-south-1:081371230266:domain/likeminds-staging-os-caravan/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--likeminds-elb-waf-policy-staging" {
  description = "elb-shield-waf-policy"
  name        = "likeminds-elb-waf-policy-staging"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateTags"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/elbv2.k8s.aws/cluster": "false"
        },
        "StringEquals": {
          "ec2:CreateAction": "CreateSecurityGroup"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:security-group/*"
    },
    {
      "Action": [
        "ec2:CreateTags",
        "ec2:DeleteTags"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/elbv2.k8s.aws/cluster": "true",
          "aws:ResourceTag/elbv2.k8s.aws/cluster": "false"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:security-group/*"
    },
    {
      "Action": [
        "elasticloadbalancing:CreateLoadBalancer",
        "elasticloadbalancing:CreateTargetGroup"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/elbv2.k8s.aws/cluster": "false"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticloadbalancing:AddTags",
        "elasticloadbalancing:RemoveTags"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/elbv2.k8s.aws/cluster": "true",
          "aws:ResourceTag/elbv2.k8s.aws/cluster": "false"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:elasticloadbalancing:*:*:targetgroup/*/*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/net/*/*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/app/*/*"
      ]
    },
    {
      "Action": [
        "elasticloadbalancing:AddTags",
        "elasticloadbalancing:RemoveTags"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:elasticloadbalancing:*:*:listener/net/*/*/*",
        "arn:aws:elasticloadbalancing:*:*:listener/app/*/*/*",
        "arn:aws:elasticloadbalancing:*:*:listener-rule/net/*/*/*",
        "arn:aws:elasticloadbalancing:*:*:listener-rule/app/*/*/*"
      ]
    },
    {
      "Action": [
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:RevokeSecurityGroupIngress",
        "ec2:DeleteSecurityGroup",
        "elasticloadbalancing:ModifyLoadBalancerAttributes",
        "elasticloadbalancing:SetIpAddressType",
        "elasticloadbalancing:SetSecurityGroups",
        "elasticloadbalancing:SetSubnets",
        "elasticloadbalancing:DeleteLoadBalancer",
        "elasticloadbalancing:ModifyTargetGroup",
        "elasticloadbalancing:ModifyTargetGroupAttributes",
        "elasticloadbalancing:DeleteTargetGroup"
      ],
      "Condition": {
        "Null": {
          "aws:ResourceTag/elbv2.k8s.aws/cluster": "false"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:DeregisterTargets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:elasticloadbalancing:*:*:targetgroup/*/*"
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeAvailabilityZones",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeVpcs",
        "ec2:DescribeSubnets",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeInstances",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeTags",
        "ec2:DescribeVpcPeeringConnections",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeLoadBalancerAttributes",
        "elasticloadbalancing:DescribeListeners",
        "elasticloadbalancing:DescribeListenerCertificates",
        "elasticloadbalancing:DescribeSSLPolicies",
        "elasticloadbalancing:DescribeRules",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetGroupAttributes",
        "elasticloadbalancing:DescribeTargetHealth",
        "elasticloadbalancing:DescribeTags",
        "cognito-idp:DescribeUserPoolClient",
        "acm:ListCertificates",
        "acm:DescribeCertificate",
        "iam:ListServerCertificates",
        "iam:GetServerCertificate",
        "waf-regional:GetWebACL",
        "waf-regional:GetWebACLForResource",
        "waf-regional:AssociateWebACL",
        "wafv2:GetWebACL",
        "wafv2:GetWebACLForResource",
        "wafv2:AssociateWebACL",
        "shield:GetSubscriptionState",
        "shield:DescribeProtection",
        "shield:CreateProtection",
        "shield:DeleteProtection",
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:RevokeSecurityGroupIngress",
        "ec2:CreateSecurityGroup",
        "elasticloadbalancing:CreateListener",
        "elasticloadbalancing:DeleteListener",
        "elasticloadbalancing:CreateRule",
        "elasticloadbalancing:DeleteRule",
        "elasticloadbalancing:SetWebAcl",
        "elasticloadbalancing:ModifyListener",
        "elasticloadbalancing:AddListenerCertificates",
        "elasticloadbalancing:RemoveListenerCertificates",
        "elasticloadbalancing:ModifyRule"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--likeminds-staging-opensearch-snapshotrole" {
  description = "likeminds-staging-opensearch-snapshotrole"
  name        = "likeminds-staging-opensearch-snapshotrole"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::081371230266:role/OpenSearchSnapshotRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--likeminds-staging-vpc-flowlog" {
  description = "likeminds-staging-vpc-flowlog"
  name        = "likeminds-staging-vpc-flowlog"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
