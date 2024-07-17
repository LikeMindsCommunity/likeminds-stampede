resource "aws_iam_role_policy_attachment" "tfer--AWS-QuickSetup-StackSet-Local-ExecutionRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWS-QuickSetup-StackSet-Local-ExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSDataLifecycleManagerDefaultRoleForAMIManagement_AWSDataLifecycleManagerServiceRoleForAMIManagement" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSDataLifecycleManagerServiceRoleForAMIManagement"
  role       = "AWSDataLifecycleManagerDefaultRoleForAMIManagement"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonGuardDuty_AmazonGuardDutyServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonGuardDuty"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonOpenSearchService_AmazonOpenSearchServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonOpenSearchServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonOpenSearchService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudWatchEvents_CloudWatchEventsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudWatchEventsServiceRolePolicy"
  role       = "AWSServiceRoleForCloudWatchEvents"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForConfig_AWSConfigServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"
  role       = "AWSServiceRoleForConfig"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2SpotFleet_AWSEC2SpotFleetServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotFleetServiceRolePolicy"
  role       = "AWSServiceRoleForEC2SpotFleet"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2Spot_AWSEC2SpotServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"
  role       = "AWSServiceRoleForEC2Spot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElastiCache_ElastiCacheServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"
  role       = "AWSServiceRoleForElastiCache"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForFIS_AmazonFISServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonFISServiceRolePolicy"
  role       = "AWSServiceRoleForFIS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForGlobalAccelerator_AWSGlobalAcceleratorSLRPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = "AWSServiceRoleForGlobalAccelerator"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForKeyManagementServiceMultiRegionKeys_AWSKeyManagementServiceMultiRegionKeysServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSKeyManagementServiceMultiRegionKeysServiceRolePolicy"
  role       = "AWSServiceRoleForKeyManagementServiceMultiRegionKeys"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForResourceExplorer_AWSResourceExplorerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"
  role       = "AWSServiceRoleForResourceExplorer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSecurityHub_AWSSecurityHubServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"
  role       = "AWSServiceRoleForSecurityHub"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--OrganizationAccountAccessRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "OrganizationAccountAccessRole"
}

resource "aws_iam_role_policy_attachment" "tfer--RCSL1Role_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "RCSL1Role"
}

resource "aws_iam_role_policy_attachment" "tfer--RCSL3Role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "RCSL3Role"
}

resource "aws_iam_role_policy_attachment" "tfer--RCSPMORole_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "RCSPMORole"
}

resource "aws_iam_role_policy_attachment" "tfer--SPOTAWSFISIAMRoleAPSOUTH1-1712748076998_AWSFaultInjectionSimulatorEC2Access" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSFaultInjectionSimulatorEC2Access"
  role       = "SPOTAWSFISIAMRoleAPSOUTH1-1712748076998"
}

resource "aws_iam_role_policy_attachment" "tfer--ScrutECRIntegrationRole-ScrutECRRole-Vj42Alpjd61t_ScrutECRPermission" {
  policy_arn = "arn:aws:iam::081371230266:policy/ScrutECRPermission"
  role       = "ScrutECRIntegrationRole-ScrutECRRole-Vj42Alpjd61t"
}

resource "aws_iam_role_policy_attachment" "tfer--ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux"
}

resource "aws_iam_role_policy_attachment" "tfer--ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux_SecurityAudit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  role       = "ScrutIntegrationRole-ScrutRole-ZPGLP43tGCux"
}

resource "aws_iam_role_policy_attachment" "tfer--TheSnapshotRole_SnapshotPolicy" {
  policy_arn = "arn:aws:iam::081371230266:policy/SnapshotPolicy"
  role       = "TheSnapshotRole"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-ec2-spot-fleet-autoscale-role_AmazonEC2SpotFleetAutoscaleRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetAutoscaleRole"
  role       = "aws-ec2-spot-fleet-autoscale-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-ec2-spot-fleet-tagging-role_AmazonEC2SpotFleetTaggingRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetTaggingRole"
  role       = "aws-ec2-spot-fleet-tagging-role"
}

resource "aws_iam_role_policy_attachment" "tfer--eks-bastion-server-role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "eks-bastion-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--eks-bastion-server-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "eks-bastion-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--es-snapshot-copy-roles_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "es-snapshot-copy-roles"
}

resource "aws_iam_role_policy_attachment" "tfer--es-snapshot-copy-roles_AmazonOpenSearchServiceFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess"
  role       = "es-snapshot-copy-roles"
}

resource "aws_iam_role_policy_attachment" "tfer--es-snapshot-copy-roles_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "es-snapshot-copy-roles"
}

resource "aws_iam_role_policy_attachment" "tfer--es-snapshot-copy-roles_SnapshotPolicy" {
  policy_arn = "arn:aws:iam::081371230266:policy/SnapshotPolicy"
  role       = "es-snapshot-copy-roles"
}

resource "aws_iam_role_policy_attachment" "tfer--es-snapshot-copy-roles_es-snapshot-copy" {
  policy_arn = "arn:aws:iam::081371230266:policy/es-snapshot-copy"
  role       = "es-snapshot-copy-roles"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Cluster-Role-staging_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "likeminds-EKS-Cluster-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Cluster-Role-staging_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = "likeminds-EKS-Cluster-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AWSXrayWriteOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSXrayWriteOnlyAccess"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-EKS-Node-Group-Role-staging_likeminds-elb-waf-policy-staging" {
  policy_arn = "arn:aws:iam::081371230266:policy/likeminds-elb-waf-policy-staging"
  role       = "likeminds-EKS-Node-Group-Role-staging"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "likeminds-nonprod-account-IamPasswordPolicyLambdaRo-QH2cbaqBDzCq"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonElasticContainerRegistryPublicFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonElasticContainerRegistryPublicFullAccess"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-eks-node-group-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-eks-node-group-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_CloudWatchFullAccessV2" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccessV2"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-grafana-role_Grafana_Policy" {
  policy_arn = "arn:aws:iam::081371230266:policy/Grafana_Policy"
  role       = "likeminds-staging-grafana-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-growthack-server-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-growthack-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-jenkins-role_ecr-full-access-policy" {
  policy_arn = "arn:aws:iam::081371230266:policy/ecr-full-access-policy"
  role       = "likeminds-staging-jenkins-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-migration-server-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-migration-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-migration-server-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-migration-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-migration-server-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-migration-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-migration-server-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-migration-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-migration-server-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-migration-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-nginx-server-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-nginx-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-opensearch-role_AmazonOpenSearchServiceFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess"
  role       = "likeminds-staging-opensearch-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-opensearch-role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "likeminds-staging-opensearch-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-opensearch-role_likemind-stage-user-policy-es" {
  policy_arn = "arn:aws:iam::081371230266:policy/likemind-stage-user-policy-es"
  role       = "likeminds-staging-opensearch-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-opensearch-role_likeminds-staging-opensearch-snapshotrole" {
  policy_arn = "arn:aws:iam::081371230266:policy/likeminds-staging-opensearch-snapshotrole"
  role       = "likeminds-staging-opensearch-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-openvpn-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-openvpn-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-prometheus-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-prometheus-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_AmazonEC2RoleforSSM" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_CloudWatchAgentAdminPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentAdminPolicy"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-redash-role_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "likeminds-staging-redash-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-start-stop-role_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "likeminds-staging-start-stop-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-start-stop-role_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "likeminds-staging-start-stop-role"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-stop-role-nfd8rw66_AWSLambdaBasicExecutionRole-31bf3d31-bfae-4641-af68-399e6891b935" {
  policy_arn = "arn:aws:iam::081371230266:policy/service-role/AWSLambdaBasicExecutionRole-31bf3d31-bfae-4641-af68-399e6891b935"
  role       = "likeminds-staging-stop-role-nfd8rw66"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-vpc-flowlog_likeminds-staging-vpc-flowlog" {
  policy_arn = "arn:aws:iam::081371230266:policy/likeminds-staging-vpc-flowlog"
  role       = "likeminds-staging-vpc-flowlog"
}

resource "aws_iam_role_policy_attachment" "tfer--likeminds-staging-wireguard-server-role_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "likeminds-staging-wireguard-server-role"
}

resource "aws_iam_role_policy_attachment" "tfer--mau_tracker-role-2vk4zae1_AWSLambdaBasicExecutionRole-33e02f0e-9657-405e-9aa1-0d834ecb7ee2" {
  policy_arn = "arn:aws:iam::081371230266:policy/service-role/AWSLambdaBasicExecutionRole-33e02f0e-9657-405e-9aa1-0d834ecb7ee2"
  role       = "mau_tracker-role-2vk4zae1"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}
