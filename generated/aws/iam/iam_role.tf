resource "aws_iam_role" "tfer--AWS-QuickSetup-StackSet-Local-AdministrationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"sts:AssumeRole\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:*:iam::*:role/AWS-QuickSetup-StackSet-Local-ExecutionRole\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-StackSet-Local-ExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::081371230266:role/AWS-QuickSetup-StackSet-Local-AdministrationRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-StackSet-Local-ExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AWSDataLifecycleManagerDefaultRoleForAMIManagement" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dlm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSDataLifecycleManagerServiceRoleForAMIManagement"]
  max_session_duration = "3600"
  name                 = "AWSDataLifecycleManagerDefaultRoleForAMIManagement"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon EKS to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKSNodegroup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows Amazon EKS to create and manage Nodegroups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSNodegroup"
  path                 = "/aws-service-role/eks-nodegroup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonGuardDuty" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "guardduty.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "A service-linked role required for Amazon GuardDuty to access your resources. "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonGuardDuty"
  path                 = "/aws-service-role/guardduty.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonOpenSearchService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "opensearchservice.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonOpenSearchServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonOpenSearchService"
  path                 = "/aws-service-role/opensearchservice.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAutoScaling" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudWatchEvents" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudWatchEventsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudWatchEvents"
  path                 = "/aws-service-role/events.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForConfig" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForConfig"
  path                 = "/aws-service-role/config.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForEC2Spot" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "spot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default EC2 Spot Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForEC2Spot"
  path                 = "/aws-service-role/spot.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForEC2SpotFleet" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "spotfleet.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default EC2 Spot Fleet Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotFleetServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForEC2SpotFleet"
  path                 = "/aws-service-role/spotfleet.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElastiCache" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticache.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElastiCache"
  path                 = "/aws-service-role/elasticache.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForFIS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "fis.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable AWS FIS to manage monitoring and resource selection for experiments."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonFISServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForFIS"
  path                 = "/aws-service-role/fis.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Global Accelerator to call AWS services on customer's behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForKeyManagementServiceMultiRegionKeys" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "mrk.kms.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables access to AWS services and resources required for AWS KMS Multi-Region Keys"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSKeyManagementServiceMultiRegionKeysServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForKeyManagementServiceMultiRegionKeys"
  path                 = "/aws-service-role/mrk.kms.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForResourceExplorer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "resource-explorer-2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForResourceExplorer"
  path                 = "/aws-service-role/resource-explorer-2.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSecurityHub" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "securityhub.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "A service-linked role required for AWS Security Hub to access your resources."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSecurityHub"
  path                 = "/aws-service-role/securityhub.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--OrganizationAccountAccessRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::328819464527:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "OrganizationAccountAccessRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--RCSL1Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithSAML",
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::081371230266:saml-provider/RapyderSSO_L1"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "RCSL1Policy"
    policy = "{\"Statement\":[{\"Action\":[\"cloudwatch:PutMetricAlarm\",\"cloudwatch:PutCompositeAlarm\",\"ec2:CreateTags\",\"ec2:DeleteTags\",\"ec2:RebootInstances\",\"ec2:StartInstances\",\"ec2:StopInstances\",\"ec2:CreateImage\",\"ec2:DeregisterImage\",\"ec2:ModifyImageAttribute\",\"ec2:DeleteSnapshot\",\"ssm:*\",\"rds:AddTagsToResource\",\"rds:RemoveTagsFromResource\",\"rds:StartDBCluster\",\"rds:StopDBCluster\",\"rds:StartDBInstance\",\"rds:StopDBInstance\",\"rds:CreateDBClusterSnapshot\",\"rds:DeleteDBClusterSnapshot\",\"rds:CreateDBSnapshot\",\"rds:DeleteDBSnapshot\",\"aws-portal:ViewBilling\",\"support:*\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "RCSL1Role"
  path                 = "/"

  tags = {
    Name = "Rapyder-SSO"
  }

  tags_all = {
    Name = "Rapyder-SSO"
  }
}

resource "aws_iam_role" "tfer--RCSL2Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithSAML",
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::081371230266:saml-provider/RapyderSSO_L2"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "RCSL2Policy"
    policy = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"acm:DeleteCertificate\",\"apigateway:DELETE\",\"application-autoscaling:DeleteScalingPolicy\",\"application-autoscaling:DeleteScheduledAction\",\"autoscaling-plans:DeleteScalingPlan\",\"autoscaling:DeleteAutoScalingGroup\",\"autoscaling:DeleteLaunchConfiguration\",\"autoscaling:DeleteLifecycleHook\",\"autoscaling:DeleteNotificationConfiguration\",\"autoscaling:DeleteScheduledAction\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DeleteStackInstances\",\"cloudformation:DeleteStackSet\",\"cloudfront:DeleteCloudFrontOriginAccessIdentity\",\"cloudfront:DeleteDistribution\",\"cloudfront:DeleteStreamingDistribution\",\"cloudtrail:DeleteTrail\",\"cloudwatch:DeleteAlarms\",\"cloudwatch:DeleteDashboards\",\"codecommit:DeleteBranch\",\"codecommit:DeleteCommentContent\",\"codecommit:DeleteFile\",\"codecommit:DeleteRepository\",\"cognito-sync:DeleteDataset\",\"cognito-sync:QueryRecords\",\"config:DeleteAggregationAuthorization\",\"config:DeleteConfigRule\",\"config:DeleteConfigurationAggregator\",\"config:DeleteConfigurationRecorder\",\"config:DeleteDeliveryChannel\",\"config:DeleteEvaluationResults\",\"config:DeletePendingAggregationRequest\",\"config:DeleteRetentionConfiguration\",\"dynamodb:DeleteItem\",\"dynamodb:DeleteTable\",\"ec2:DeleteCustomerGateway\",\"ec2:DeleteDhcpOptions\",\"ec2:DeleteEgressOnlyInternetGateway\",\"ec2:DeleteFleets\",\"ec2:DeleteFlowLogs\",\"ec2:DeleteFpgaImage\",\"ec2:DeleteInternetGateway\",\"ec2:DeleteKeyPair\",\"ec2:DeleteLaunchTemplate\",\"ec2:DeleteLaunchTemplateVersions\",\"ec2:DeleteNatGateway\",\"ec2:DeleteNetworkAcl\",\"ec2:DeleteNetworkAclEntry\",\"ec2:DeleteNetworkInterface\",\"ec2:DeleteNetworkInterfacePermission\",\"ec2:DeletePlacementGroup\",\"ec2:DeleteRoute\",\"ec2:DeleteRouteTable\",\"ec2:DeleteSecurityGroup\",\"ec2:DeleteSpotDatafeedSubscription\",\"ec2:DeleteSubnet\",\"ec2:DeleteVolume\",\"ec2:DeleteVpc\",\"ec2:DeleteVpcEndpointConnectionNotifications\",\"ec2:DeleteVpcEndpoints\",\"ec2:DeleteVpcEndpointServiceConfigurations\",\"ec2:DeleteVpcPeeringConnection\",\"ec2:DeleteVpnConnection\",\"ec2:DeleteVpnConnectionRoute\",\"ec2:DeleteVpnGateway\",\"ec2:TerminateInstances\",\"ec2messages:DeleteMessage\",\"elasticloadbalancing:DeleteListener\",\"elasticloadbalancing:DeleteLoadBalancer\",\"elasticloadbalancing:DeleteLoadBalancerListeners\",\"elasticloadbalancing:DeleteLoadBalancerPolicy\",\"elasticloadbalancing:DeleteRule\",\"elasticloadbalancing:DeleteTargetGroup\",\"elasticmapreduce:DeleteSecurityConfiguration\",\"es:DeleteElasticsearchDomain\",\"es:DeleteElasticsearchServiceRole\",\"events:DeleteRule\",\"events:DisableRule\",\"firehose:DeleteDeliveryStream\",\"kinesis:DeleteStream\",\"kinesisanalytics:DeleteApplication\",\"kinesisanalytics:DeleteApplicationOutput\",\"kinesisanalytics:DeleteApplicationReferenceDataSource\",\"kms:DeleteAlias\",\"kms:DeleteImportedKeyMaterial\",\"lambda:DeleteAlias\",\"lambda:DeleteEventSourceMapping\",\"lambda:DeleteFunction\",\"lambda:DeleteFunctionConcurrency\",\"logs:DeleteDestination\",\"logs:DeleteLogGroup\",\"logs:DeleteLogStream\",\"logs:DeleteMetricFilter\",\"logs:DeleteResourcePolicy\",\"logs:DeleteRetentionPolicy\",\"logs:DeleteSubscriptionFilter\",\"rds:DeleteDBCluster\",\"rds:DeleteDBClusterParameterGroup\",\"rds:DeleteDBClusterSnapshot\",\"rds:DeleteDBInstance\",\"rds:DeleteDBParameterGroup\",\"rds:DeleteDBSecurityGroup\",\"rds:DeleteDBSubnetGroup\",\"rds:DeleteEventSubscription\",\"rds:DeleteOptionGroup\",\"redshift:DeleteCluster\",\"redshift:DeleteClusterParameterGroup\",\"redshift:DeleteClusterSecurityGroup\",\"redshift:DeleteClusterSubnetGroup\",\"redshift:DeleteEventSubscription\",\"redshift:DeleteHsmClientCertificate\",\"redshift:DeleteHsmConfiguration\",\"redshift:DeleteSnapshotCopyGrant\",\"route53:DeleteHealthCheck\",\"route53:DeleteHostedZone\",\"route53:DeleteQueryLoggingConfig\",\"route53:DeleteReusableDelegationSet\",\"route53:DeleteTrafficPolicy\",\"route53:DeleteTrafficPolicyInstance\",\"route53:DeleteVPCAssociationAuthorization\",\"route53:DisassociateVPCFromHostedZone\",\"s3:DeleteBucket\",\"s3:DeleteBucketWebsite\",\"s3:DeleteObject\",\"s3:DeleteObjectTagging\",\"s3:DeleteObjectVersion\",\"s3:DeleteObjectVersionTagging\",\"ses:DeleteConfigurationSet\",\"ses:DeleteConfigurationSetEventDestination\",\"ses:DeleteConfigurationSetTrackingOptions\",\"ses:DeleteCustomVerificationEmailTemplate\",\"ses:DeleteIdentity\",\"ses:DeleteIdentityPolicy\",\"ses:DeleteReceiptFilter\",\"ses:DeleteReceiptRule\",\"ses:DeleteReceiptRuleSet\",\"ses:DeleteTemplate\",\"ses:DeleteVerifiedEmailAddress\",\"sns:DeleteEndpoint\",\"sns:DeletePlatformApplication\",\"sns:DeleteTopic\",\"sqs:DeleteMessage\",\"sqs:DeleteMessageBatch\",\"sqs:DeleteQueue\",\"waf-regional:DeleteByteMatchSet\",\"waf-regional:DeleteGeoMatchSet\",\"waf-regional:DeleteIPSet\",\"waf-regional:DeleteRateBasedRule\",\"waf-regional:DeleteRegexMatchSet\",\"waf-regional:DeleteRegexPatternSet\",\"waf-regional:DeleteRule\",\"waf-regional:DeleteRuleGroup\",\"waf-regional:DeleteSizeConstraintSet\",\"waf-regional:DeleteSqlInjectionMatchSet\",\"waf-regional:DeleteXssMatchSet\",\"waf:DeleteByteMatchSet\",\"waf:DeleteGeoMatchSet\",\"waf:DeleteIPSet\",\"waf:DeleteRateBasedRule\",\"waf:DeleteRegexMatchSet\",\"waf:DeleteRegexPatternSet\",\"waf:DeleteRule\",\"waf:DeleteRuleGroup\",\"waf:DeleteSizeConstraintSet\",\"waf:DeleteSqlInjectionMatchSet\",\"waf:DeleteXssMatchSet\"],\"Effect\":\"Deny\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "RCSL2Role"
  path                 = "/"

  tags = {
    Name = "Rapyder-SSO"
  }

  tags_all = {
    Name = "Rapyder-SSO"
  }
}

resource "aws_iam_role" "tfer--RCSL3Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithSAML",
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::081371230266:saml-provider/RapyderSSO_L3"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "RCSL3Role"
  path                 = "/"

  tags = {
    Name = "Rapyder-SSO"
  }

  tags_all = {
    Name = "Rapyder-SSO"
  }
}

resource "aws_iam_role" "tfer--RCSPMORole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithSAML",
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::081371230266:saml-provider/RapyderSSO_PMO"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "RCSPMOPolicy"
    policy = "{\"Statement\":[{\"Action\":[\"aws-portal:ViewBilling\",\"support:*\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "RCSPMORole"
  path                 = "/"

  tags = {
    Name = "Rapyder-SSO"
  }

  tags_all = {
    Name = "Rapyder-SSO"
  }
}

resource "aws_iam_role" "tfer--SPOTAWSFISIAMRoleAPSOUTH1-1712748076998" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "fis.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSFaultInjectionSimulatorEC2Access"]
  max_session_duration = "3600"
  name                 = "SPOTAWSFISIAMRoleAPSOUTH1-1712748076998"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--ScrutECRIntegrationRole-ScrutECRRole-Vj42Alpjd61t" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "4365882f-ecb6-4c08-9eb8-720b5433bf07"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::378176467373:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/ScrutECRPermission"]
  max_session_duration = "3600"
  name                 = "ScrutECRIntegrationRole-ScrutECRRole-Vj42Alpjd61t"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "4365882f-ecb6-4c08-9eb8-720b5433bf41"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::378176467373:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess", "arn:aws:iam::aws:policy/SecurityAudit"]
  max_session_duration = "43200"
  name                 = "ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux"
  path                 = "/"
}

resource "aws_iam_role" "tfer--TheSnapshotRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "es.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "TheSnapshotRole"
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/SnapshotPolicy"]
  max_session_duration = "3600"
  name                 = "TheSnapshotRole"
  path                 = "/"

  tags = {
    Name = "TheSnapshotRole"
  }

  tags_all = {
    Name = "TheSnapshotRole"
  }
}

resource "aws_iam_role" "tfer--aws-ec2-spot-fleet-autoscale-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "application-autoscaling.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetAutoscaleRole"]
  max_session_duration = "3600"
  name                 = "aws-ec2-spot-fleet-autoscale-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-ec2-spot-fleet-tagging-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "spotfleet.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetTaggingRole"]
  max_session_duration = "3600"
  name                 = "aws-ec2-spot-fleet-tagging-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--eks-bastion-server-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "eks-bastion-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess"]
  max_session_duration = "3600"
  name                 = "eks-bastion-server-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--es-snapshot-copy-roles" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "ec2.amazonaws.com",
          "es.amazonaws.com",
          "opensearchservice.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/SnapshotPolicy", "arn:aws:iam::081371230266:policy/es-snapshot-copy", "arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess"]
  max_session_duration = "3600"
  name                 = "es-snapshot-copy-roles"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-EKS-Cluster-Role-staging" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
  max_session_duration = "3600"
  name                 = "likeminds-EKS-Cluster-Role-staging"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-EKS-Node-Group-Role-staging" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/likeminds-elb-waf-policy-staging", "arn:aws:iam::aws:policy/AWSXrayWriteOnlyAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchFullAccess"]
  max_session_duration = "3600"
  name                 = "likeminds-EKS-Node-Group-Role-staging"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "iam"
    policy = "{\"Statement\":[{\"Action\":[\"iam:UpdateAccountPasswordPolicy\",\"iam:DeleteAccountPasswordPolicy\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-eks-node-group-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-eks-node-group-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/AmazonElasticContainerRegistryPublicFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchFullAccess"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-eks-node-group-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-grafana-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-grafana-role"
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/Grafana_Policy", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/CloudWatchFullAccessV2", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-grafana-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-growthack-server-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-growthack-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-growthack-server-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-jenkins-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-jenkins-role"
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/ecr-full-access-policy", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-jenkins-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-migration-server-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-migration-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-migration-server-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-nginx-server-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-nginx-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-nginx-server-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-opensearch-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "es.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-opensearch-role"
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/likemind-stage-user-policy-es", "arn:aws:iam::081371230266:policy/likeminds-staging-opensearch-snapshotrole", "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-opensearch-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-openvpn-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-openvpn-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-openvpn-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-prometheus-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-prometheus-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-prometheus-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-redash-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-redash-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-redash-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--likeminds-staging-start-stop-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "likeminds-staging-start-stop-role"

  inline_policy {
    name   = "likeminds-staging-start-stop-role"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeInstances\",\"ec2:StartInstances\",\"ec2:DescribeTags\",\"logs:*\",\"ec2:DescribeInstanceTypes\",\"ec2:StopInstances\",\"ec2:DescribeInstanceStatus\"],\"Condition\":{\"StringEquals\":{\"aws:ResourceTag/auto-start-stop\":\"Yes\"}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:ec2:ap-south-1:081371230266:instance/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-start-stop-role"
  path                 = "/"

  tags = {
    CreatedBy   = "Rapyder"
    Environment = "staging"
    Name        = "likeminds-staging-start-stop-role"
  }

  tags_all = {
    CreatedBy   = "Rapyder"
    Environment = "staging"
    Name        = "likeminds-staging-start-stop-role"
  }
}

resource "aws_iam_role" "tfer--likeminds-staging-stop-role-nfd8rw66" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/service-role/AWSLambdaBasicExecutionRole-31bf3d31-bfae-4641-af68-399e6891b935"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-stop-role-nfd8rw66"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--likeminds-staging-vpc-flowlog" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Sid": "Statement1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-vpc-flowlog"
  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/likeminds-staging-vpc-flowlog"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-vpc-flowlog"
  path                 = "/"

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-vpc-flowlog"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-vpc-flowlog"
  }
}

resource "aws_iam_role" "tfer--likeminds-staging-wireguard-server-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "likeminds-staging-wireguard-server-role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "likeminds-staging-wireguard-server-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--mau_tracker-role-2vk4zae1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::081371230266:policy/service-role/AWSLambdaBasicExecutionRole-33e02f0e-9657-405e-9aa1-0d834ecb7ee2"]
  max_session_duration = "3600"
  name                 = "mau_tracker-role-2vk4zae1"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}
