resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-StackSet-Local-AdministrationRole_AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole" {
  name = "AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:*:iam::*:role/AWS-QuickSetup-StackSet-Local-ExecutionRole"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
}

resource "aws_iam_role_policy" "tfer--RCSL1Role_RCSL1Policy" {
  name = "RCSL1Policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:PutCompositeAlarm",
        "ec2:CreateTags",
        "ec2:DeleteTags",
        "ec2:RebootInstances",
        "ec2:StartInstances",
        "ec2:StopInstances",
        "ec2:CreateImage",
        "ec2:DeregisterImage",
        "ec2:ModifyImageAttribute",
        "ec2:DeleteSnapshot",
        "ssm:*",
        "rds:AddTagsToResource",
        "rds:RemoveTagsFromResource",
        "rds:StartDBCluster",
        "rds:StopDBCluster",
        "rds:StartDBInstance",
        "rds:StopDBInstance",
        "rds:CreateDBClusterSnapshot",
        "rds:DeleteDBClusterSnapshot",
        "rds:CreateDBSnapshot",
        "rds:DeleteDBSnapshot",
        "aws-portal:ViewBilling",
        "support:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "RCSL1Role"
}

resource "aws_iam_role_policy" "tfer--RCSL2Role_RCSL2Policy" {
  name = "RCSL2Policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "acm:DeleteCertificate",
        "apigateway:DELETE",
        "application-autoscaling:DeleteScalingPolicy",
        "application-autoscaling:DeleteScheduledAction",
        "autoscaling-plans:DeleteScalingPlan",
        "autoscaling:DeleteAutoScalingGroup",
        "autoscaling:DeleteLaunchConfiguration",
        "autoscaling:DeleteLifecycleHook",
        "autoscaling:DeleteNotificationConfiguration",
        "autoscaling:DeleteScheduledAction",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DeleteStackInstances",
        "cloudformation:DeleteStackSet",
        "cloudfront:DeleteCloudFrontOriginAccessIdentity",
        "cloudfront:DeleteDistribution",
        "cloudfront:DeleteStreamingDistribution",
        "cloudtrail:DeleteTrail",
        "cloudwatch:DeleteAlarms",
        "cloudwatch:DeleteDashboards",
        "codecommit:DeleteBranch",
        "codecommit:DeleteCommentContent",
        "codecommit:DeleteFile",
        "codecommit:DeleteRepository",
        "cognito-sync:DeleteDataset",
        "cognito-sync:QueryRecords",
        "config:DeleteAggregationAuthorization",
        "config:DeleteConfigRule",
        "config:DeleteConfigurationAggregator",
        "config:DeleteConfigurationRecorder",
        "config:DeleteDeliveryChannel",
        "config:DeleteEvaluationResults",
        "config:DeletePendingAggregationRequest",
        "config:DeleteRetentionConfiguration",
        "dynamodb:DeleteItem",
        "dynamodb:DeleteTable",
        "ec2:DeleteCustomerGateway",
        "ec2:DeleteDhcpOptions",
        "ec2:DeleteEgressOnlyInternetGateway",
        "ec2:DeleteFleets",
        "ec2:DeleteFlowLogs",
        "ec2:DeleteFpgaImage",
        "ec2:DeleteInternetGateway",
        "ec2:DeleteKeyPair",
        "ec2:DeleteLaunchTemplate",
        "ec2:DeleteLaunchTemplateVersions",
        "ec2:DeleteNatGateway",
        "ec2:DeleteNetworkAcl",
        "ec2:DeleteNetworkAclEntry",
        "ec2:DeleteNetworkInterface",
        "ec2:DeleteNetworkInterfacePermission",
        "ec2:DeletePlacementGroup",
        "ec2:DeleteRoute",
        "ec2:DeleteRouteTable",
        "ec2:DeleteSecurityGroup",
        "ec2:DeleteSpotDatafeedSubscription",
        "ec2:DeleteSubnet",
        "ec2:DeleteVolume",
        "ec2:DeleteVpc",
        "ec2:DeleteVpcEndpointConnectionNotifications",
        "ec2:DeleteVpcEndpoints",
        "ec2:DeleteVpcEndpointServiceConfigurations",
        "ec2:DeleteVpcPeeringConnection",
        "ec2:DeleteVpnConnection",
        "ec2:DeleteVpnConnectionRoute",
        "ec2:DeleteVpnGateway",
        "ec2:TerminateInstances",
        "ec2messages:DeleteMessage",
        "elasticloadbalancing:DeleteListener",
        "elasticloadbalancing:DeleteLoadBalancer",
        "elasticloadbalancing:DeleteLoadBalancerListeners",
        "elasticloadbalancing:DeleteLoadBalancerPolicy",
        "elasticloadbalancing:DeleteRule",
        "elasticloadbalancing:DeleteTargetGroup",
        "elasticmapreduce:DeleteSecurityConfiguration",
        "es:DeleteElasticsearchDomain",
        "es:DeleteElasticsearchServiceRole",
        "events:DeleteRule",
        "events:DisableRule",
        "firehose:DeleteDeliveryStream",
        "kinesis:DeleteStream",
        "kinesisanalytics:DeleteApplication",
        "kinesisanalytics:DeleteApplicationOutput",
        "kinesisanalytics:DeleteApplicationReferenceDataSource",
        "kms:DeleteAlias",
        "kms:DeleteImportedKeyMaterial",
        "lambda:DeleteAlias",
        "lambda:DeleteEventSourceMapping",
        "lambda:DeleteFunction",
        "lambda:DeleteFunctionConcurrency",
        "logs:DeleteDestination",
        "logs:DeleteLogGroup",
        "logs:DeleteLogStream",
        "logs:DeleteMetricFilter",
        "logs:DeleteResourcePolicy",
        "logs:DeleteRetentionPolicy",
        "logs:DeleteSubscriptionFilter",
        "rds:DeleteDBCluster",
        "rds:DeleteDBClusterParameterGroup",
        "rds:DeleteDBClusterSnapshot",
        "rds:DeleteDBInstance",
        "rds:DeleteDBParameterGroup",
        "rds:DeleteDBSecurityGroup",
        "rds:DeleteDBSubnetGroup",
        "rds:DeleteEventSubscription",
        "rds:DeleteOptionGroup",
        "redshift:DeleteCluster",
        "redshift:DeleteClusterParameterGroup",
        "redshift:DeleteClusterSecurityGroup",
        "redshift:DeleteClusterSubnetGroup",
        "redshift:DeleteEventSubscription",
        "redshift:DeleteHsmClientCertificate",
        "redshift:DeleteHsmConfiguration",
        "redshift:DeleteSnapshotCopyGrant",
        "route53:DeleteHealthCheck",
        "route53:DeleteHostedZone",
        "route53:DeleteQueryLoggingConfig",
        "route53:DeleteReusableDelegationSet",
        "route53:DeleteTrafficPolicy",
        "route53:DeleteTrafficPolicyInstance",
        "route53:DeleteVPCAssociationAuthorization",
        "route53:DisassociateVPCFromHostedZone",
        "s3:DeleteBucket",
        "s3:DeleteBucketWebsite",
        "s3:DeleteObject",
        "s3:DeleteObjectTagging",
        "s3:DeleteObjectVersion",
        "s3:DeleteObjectVersionTagging",
        "ses:DeleteConfigurationSet",
        "ses:DeleteConfigurationSetEventDestination",
        "ses:DeleteConfigurationSetTrackingOptions",
        "ses:DeleteCustomVerificationEmailTemplate",
        "ses:DeleteIdentity",
        "ses:DeleteIdentityPolicy",
        "ses:DeleteReceiptFilter",
        "ses:DeleteReceiptRule",
        "ses:DeleteReceiptRuleSet",
        "ses:DeleteTemplate",
        "ses:DeleteVerifiedEmailAddress",
        "sns:DeleteEndpoint",
        "sns:DeletePlatformApplication",
        "sns:DeleteTopic",
        "sqs:DeleteMessage",
        "sqs:DeleteMessageBatch",
        "sqs:DeleteQueue",
        "waf-regional:DeleteByteMatchSet",
        "waf-regional:DeleteGeoMatchSet",
        "waf-regional:DeleteIPSet",
        "waf-regional:DeleteRateBasedRule",
        "waf-regional:DeleteRegexMatchSet",
        "waf-regional:DeleteRegexPatternSet",
        "waf-regional:DeleteRule",
        "waf-regional:DeleteRuleGroup",
        "waf-regional:DeleteSizeConstraintSet",
        "waf-regional:DeleteSqlInjectionMatchSet",
        "waf-regional:DeleteXssMatchSet",
        "waf:DeleteByteMatchSet",
        "waf:DeleteGeoMatchSet",
        "waf:DeleteIPSet",
        "waf:DeleteRateBasedRule",
        "waf:DeleteRegexMatchSet",
        "waf:DeleteRegexPatternSet",
        "waf:DeleteRule",
        "waf:DeleteRuleGroup",
        "waf:DeleteSizeConstraintSet",
        "waf:DeleteSqlInjectionMatchSet",
        "waf:DeleteXssMatchSet"
      ],
      "Effect": "Deny",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "RCSL2Role"
}

resource "aws_iam_role_policy" "tfer--RCSPMORole_RCSPMOPolicy" {
  name = "RCSPMOPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "aws-portal:ViewBilling",
        "support:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "RCSPMORole"
}

resource "aws_iam_role_policy" "tfer--likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq_iam" {
  name = "iam"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:UpdateAccountPasswordPolicy",
        "iam:DeleteAccountPasswordPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq"
}

resource "aws_iam_role_policy" "tfer--likeminds-staging-start-stop-role_likeminds-staging-start-stop-role" {
  name = "likeminds-staging-start-stop-role"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeInstances",
        "ec2:StartInstances",
        "ec2:DescribeTags",
        "logs:*",
        "ec2:DescribeInstanceTypes",
        "ec2:StopInstances",
        "ec2:DescribeInstanceStatus"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/auto-start-stop": "Yes"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:ap-south-1:081371230266:instance/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "likeminds-staging-start-stop-role"
}
