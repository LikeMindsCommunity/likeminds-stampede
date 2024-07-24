resource "aws_instance" "tfer--i-0010c1a41dacb5af1_likeminds-staging-eks-bastion-server-spot" {
  ami                         = "ami-07f0100991b71c843"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "eks-bastion-server-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.012300"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3a.small"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.140.206"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      Env  = "staging"
      Name = "likeminds-staging-eks-bastion-server-spot"
    }

    tags_all = {
      Env  = "staging"
      Name = "likeminds-staging-eks-bastion-server-spot"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0df606c9f98d8cb11"

  tags = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-eks-bastion-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-eks-bastion-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0dda8b20b312e1538"]
}

resource "aws_instance" "tfer--i-005a7cca067960629_likeminds-staging-EKS-Nodes" {
  ami                         = "ami-0dbc52d2e0864a5b3"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "terminate"
      max_price                      = "0.044800"
      spot_instance_type             = "one-time"
    }
  }

  instance_type      = "t3.medium"
  ipv6_address_count = "0"

  launch_template {
    id      = "lt-0fafcb9b6c3cf5d14"
    name    = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.148.187"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

    tags = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    tags_all = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    throughput  = "125"
    volume_size = "50"
    volume_type = "gp3"
  }

  secondary_private_ips = ["10.51.150.12", "10.51.152.157", "10.51.153.198", "10.51.154.68", "10.51.156.138"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0f517aee687340213"

  tags = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tags_all = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKLS09PU1ZQk9VTkRBUlk9PQpDb250ZW50LVR5cGU6IHRleHQveC1zaGVsbHNjcmlwdDsgY2hhcnNldD0idXMtYXNjaWkiCiMhL2Jpbi9iYXNoCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlciAgICNsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlcgotLT09TVlCT1VOREFSWT09LS1cCg=="
  vpc_security_group_ids = ["sg-0dd44ab953474a39a"]
}

resource "aws_instance" "tfer--i-0081679ef7d0dbe35_likeminds-staging-EKS-Nodes" {
  ami                         = "ami-0dbc52d2e0864a5b3"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "terminate"
      max_price                      = "0.044800"
      spot_instance_type             = "one-time"
    }
  }

  instance_type      = "t3.medium"
  ipv6_address_count = "0"

  launch_template {
    id      = "lt-0fafcb9b6c3cf5d14"
    name    = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.151.36"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

    tags = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    tags_all = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    throughput  = "125"
    volume_size = "50"
    volume_type = "gp3"
  }

  secondary_private_ips = ["10.51.148.118", "10.51.149.155", "10.51.149.60", "10.51.155.126", "10.51.155.147"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0f517aee687340213"

  tags = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tags_all = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKLS09PU1ZQk9VTkRBUlk9PQpDb250ZW50LVR5cGU6IHRleHQveC1zaGVsbHNjcmlwdDsgY2hhcnNldD0idXMtYXNjaWkiCiMhL2Jpbi9iYXNoCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlciAgICNsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlcgotLT09TVlCT1VOREFSWT09LS1cCg=="
  vpc_security_group_ids = ["sg-0dd44ab953474a39a"]
}

resource "aws_instance" "tfer--i-01010750b6818ca6c_likeminds-staging-Openvpn-server-spot" {
  ami                         = "ami-07fb8dfd564ec4b7c"
  associate_public_ip_address = "true"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "likeminds-staging-openvpn-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.012300"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3a.small"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.14.152"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      Backup = "Yes"
    }

    tags_all = {
      Backup = "Yes"
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b772e5ead9e9f284"

  tags = {
    Backup = "Yes"
    Name   = "likeminds-staging-Openvpn-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Name   = "likeminds-staging-Openvpn-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0043272baca7b2c91"]
}

resource "aws_instance" "tfer--i-0377828474699ca60_likeminds-staging-EKS-Nodes" {
  ami                         = "ami-0dbc52d2e0864a5b3"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdaa"
    encrypted             = "true"
    iops                  = "100"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      CSIVolumeName                                         = "pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      "kubernetes.io/created-for/pvc/name"                  = "prometheus-server"
      "kubernetes.io/created-for/pvc/namespace"             = "prometheus"
    }

    tags_all = {
      CSIVolumeName                                         = "pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-a5f8f7e0-f646-474d-a8f1-244d200e0ec0"
      "kubernetes.io/created-for/pvc/name"                  = "prometheus-server"
      "kubernetes.io/created-for/pvc/namespace"             = "prometheus"
    }

    throughput  = "0"
    volume_size = "8"
    volume_type = "gp2"
  }

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdab"
    encrypted             = "true"
    iops                  = "100"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      CSIVolumeName                                         = "pvc-d30c8403-444d-4161-afae-309fba078f02"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-d30c8403-444d-4161-afae-309fba078f02"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-d30c8403-444d-4161-afae-309fba078f02"
      "kubernetes.io/created-for/pvc/name"                  = "grafana"
      "kubernetes.io/created-for/pvc/namespace"             = "grafana"
    }

    tags_all = {
      CSIVolumeName                                         = "pvc-d30c8403-444d-4161-afae-309fba078f02"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-d30c8403-444d-4161-afae-309fba078f02"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-d30c8403-444d-4161-afae-309fba078f02"
      "kubernetes.io/created-for/pvc/name"                  = "grafana"
      "kubernetes.io/created-for/pvc/namespace"             = "grafana"
    }

    throughput  = "0"
    volume_size = "10"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "terminate"
      max_price                      = "0.044800"
      spot_instance_type             = "one-time"
    }
  }

  instance_type      = "t3.medium"
  ipv6_address_count = "0"

  launch_template {
    id      = "lt-0fafcb9b6c3cf5d14"
    name    = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.132.244"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

    tags = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    tags_all = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    throughput  = "125"
    volume_size = "50"
    volume_type = "gp3"
  }

  secondary_private_ips = ["10.51.129.109", "10.51.131.138", "10.51.136.94", "10.51.141.196", "10.51.143.18"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0df606c9f98d8cb11"

  tags = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tags_all = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKLS09PU1ZQk9VTkRBUlk9PQpDb250ZW50LVR5cGU6IHRleHQveC1zaGVsbHNjcmlwdDsgY2hhcnNldD0idXMtYXNjaWkiCiMhL2Jpbi9iYXNoCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlciAgICNsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlcgotLT09TVlCT1VOREFSWT09LS1cCg=="
  vpc_security_group_ids = ["sg-0dd44ab953474a39a"]
}

resource "aws_instance" "tfer--i-03d82946a0b3c627a_likeminds-staging-migration-server-spot" {
  ami                         = "ami-07038185adfd42728"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "likeminds-staging-migration-server-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.012300"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3a.small"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.143.85"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      Env  = "staging"
      Name = "likeminds-staging-migration-server-spot"
    }

    tags_all = {
      Env  = "staging"
      Name = "likeminds-staging-migration-server-spot"
    }

    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0df606c9f98d8cb11"

  tags = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-migration-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-migration-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0d62c90e05cec5978"]
}

resource "aws_instance" "tfer--i-044a1ec39ceb50698_likeminds-staging-EKS-Nodes" {
  ami                         = "ami-0dbc52d2e0864a5b3"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdaa"
    encrypted             = "true"
    iops                  = "100"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      CSIVolumeName                                         = "pvc-c3533598-5202-4cc9-8026-3111553b8335"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-c3533598-5202-4cc9-8026-3111553b8335"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-c3533598-5202-4cc9-8026-3111553b8335"
      "kubernetes.io/created-for/pvc/name"                  = "storage-prometheus-alertmanager-0"
      "kubernetes.io/created-for/pvc/namespace"             = "prometheus"
    }

    tags_all = {
      CSIVolumeName                                         = "pvc-c3533598-5202-4cc9-8026-3111553b8335"
      KubernetesCluster                                     = "likeminds-staging-eks-cluster"
      Name                                                  = "likeminds-staging-eks-cluster-dynamic-pvc-c3533598-5202-4cc9-8026-3111553b8335"
      "ebs.csi.aws.com/cluster"                             = "true"
      "kubernetes.io/cluster/likeminds-staging-eks-cluster" = "owned"
      "kubernetes.io/created-for/pv/name"                   = "pvc-c3533598-5202-4cc9-8026-3111553b8335"
      "kubernetes.io/created-for/pvc/name"                  = "storage-prometheus-alertmanager-0"
      "kubernetes.io/created-for/pvc/namespace"             = "prometheus"
    }

    throughput  = "0"
    volume_size = "2"
    volume_type = "gp2"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3a.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0fafcb9b6c3cf5d14"
    name    = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.132.20"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

    tags = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    tags_all = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    throughput  = "125"
    volume_size = "50"
    volume_type = "gp3"
  }

  secondary_private_ips = ["10.51.130.189", "10.51.131.24", "10.51.134.22", "10.51.135.20", "10.51.142.243"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0df606c9f98d8cb11"

  tags = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tags_all = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKLS09PU1ZQk9VTkRBUlk9PQpDb250ZW50LVR5cGU6IHRleHQveC1zaGVsbHNjcmlwdDsgY2hhcnNldD0idXMtYXNjaWkiCiMhL2Jpbi9iYXNoCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlciAgICNsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlcgotLT09TVlCT1VOREFSWT09LS1cCg=="
  vpc_security_group_ids = ["sg-0dd44ab953474a39a"]
}

resource "aws_instance" "tfer--i-04f785f58b1d1aa33_likeminds-staging-growthack-server-spot" {
  ami                         = "ami-02a270bdc8860bdca"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "likeminds-staging-growthack-server-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.022400"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3.small"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.129.199"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      Env  = "staging"
      Name = "likeminds-staging-growthack-server-spot"
    }

    tags_all = {
      Env  = "staging"
      Name = "likeminds-staging-growthack-server-spot"
    }

    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0df606c9f98d8cb11"

  tags = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-growthack-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-growthack-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0b63de6d41e7a612a"]
}

resource "aws_instance" "tfer--i-066c70abbf57e185a_likeminds-staging-Openvpn-server" {
  ami                         = "ami-07fb8dfd564ec4b7c"
  associate_public_ip_address = "true"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "true"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "likeminds-staging-openvpn-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3a.small"
  ipv6_address_count                   = "0"
  key_name                             = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.13.31"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b772e5ead9e9f284"

  tags = {
    CreatedBy       = "Rapyder"
    Env             = "staging"
    Name            = "likeminds-staging-Openvpn-server"
    auto-start-stop = "Yes"
  }

  tags_all = {
    CreatedBy       = "Rapyder"
    Env             = "staging"
    Name            = "likeminds-staging-Openvpn-server"
    auto-start-stop = "Yes"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0043272baca7b2c91"]
}

resource "aws_instance" "tfer--i-0cb6f9e1822fc7f2b_likeminds-staging-EKS-Nodes" {
  ami                         = "ami-0dbc52d2e0864a5b3"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3a.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0fafcb9b6c3cf5d14"
    name    = "eks-fac66495-22b2-2e81-2eec-64c476bf585e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.146.20"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

    tags = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    tags_all = {
      CreatedBy            = "Rapyder"
      Env                  = "staging"
      Name                 = "likeminds-staging-EKS-Nodes"
      "eks:cluster-name"   = "likeminds-staging-eks-cluster"
      "eks:nodegroup-name" = "likeminds-staging-eks-ng"
    }

    throughput  = "125"
    volume_size = "50"
    volume_type = "gp3"
  }

  secondary_private_ips = ["10.51.144.226", "10.51.147.116", "10.51.148.139", "10.51.155.224", "10.51.156.167"]
  source_dest_check     = "true"
  subnet_id             = "subnet-0f517aee687340213"

  tags = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tags_all = {
    CreatedBy                                                 = "Rapyder"
    Env                                                       = "staging"
    Name                                                      = "likeminds-staging-EKS-Nodes"
    "eks:cluster-name"                                        = "likeminds-staging-eks-cluster"
    "eks:nodegroup-name"                                      = "likeminds-staging-eks-ng"
    "k8s.io/cluster-autoscaler/enabled"                       = "true"
    "k8s.io/cluster-autoscaler/likeminds-staging-eks-cluster" = "owned"
    "kubernetes.io/cluster/likeminds-staging-eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKLS09PU1ZQk9VTkRBUlk9PQpDb250ZW50LVR5cGU6IHRleHQveC1zaGVsbHNjcmlwdDsgY2hhcnNldD0idXMtYXNjaWkiCiMhL2Jpbi9iYXNoCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlciAgICNsaWtlbWluZHMtc3RhZ2luZy1la3MtY2x1c3RlcgotLT09TVlCT1VOREFSWT09LS1cCg=="
  vpc_security_group_ids = ["sg-0dd44ab953474a39a"]
}

resource "aws_instance" "tfer--i-0d70adefb04f74527_likeminds-staging-redash-server-spot" {
  ami                         = "ami-0f44ef553c35f4843"
  associate_public_ip_address = "false"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "likeminds-staging-redash-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.012300"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3a.small"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.141.19"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"

    tags = {
      Env  = "staging"
      Name = "likeminds-staging-redash-server-spot"
    }

    tags_all = {
      Env  = "staging"
      Name = "likeminds-staging-redash-server-spot"
    }

    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0df606c9f98d8cb11"

  tags = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-redash-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Env    = "staging"
    Name   = "likeminds-staging-redash-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0fbadce21367cb8b7"]
}

resource "aws_instance" "tfer--i-0f7b00d2b1f53a34d_likeminds-staging-jenkins-server-spot" {
  ami                         = "ami-0640e83f0c3eb9585"
  associate_public_ip_address = "true"
  availability_zone           = "ap-south-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "true"
  iam_instance_profile                 = "likeminds-staging-jenkins-role"
  instance_initiated_shutdown_behavior = "stop"

  instance_market_options {
    market_type = "spot"

    spot_options {
      instance_interruption_behavior = "hibernate"
      max_price                      = "0.049300"
      spot_instance_type             = "persistent"
    }
  }

  instance_type      = "t3a.large"
  ipv6_address_count = "0"
  key_name           = "likeminds-staging-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.51.0.36"

  root_block_device {
    delete_on_termination = "false"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-south-1:081371230266:key/6b42bce3-87eb-4b86-9992-502f678d4d96"
    volume_size           = "50"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b772e5ead9e9f284"

  tags = {
    Backup = "Yes"
    Name   = "likeminds-staging-jenkins-server-spot"
  }

  tags_all = {
    Backup = "Yes"
    Name   = "likeminds-staging-jenkins-server-spot"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01ce934130acd1164"]
}
